void sub_1E3A4EAA4()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 304);

    v2(v3);
  }
}

uint64_t sub_1E3A4EB80(char a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v15, sel_vui_viewDidDisappear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor])
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  if (*&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel])
  {
    v6 = &v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner];
    result = OUTLINED_FUNCTION_5_0();
    if (*(v6 + 24))
    {
      sub_1E327F454(v6, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v9 = *(*(v8 + 8) + 8);
      v10 = *(v9 + 64);

      v10(v11, v7, v9);

      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  return result;
}

void sub_1E3A4ED04()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_vui_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel];
  if (!v1)
  {
    return;
  }

  v2 = OUTLINED_FUNCTION_14_77();
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_3();

  if (OUTLINED_FUNCTION_14_25() <= 0.0)
  {

    return;
  }

  v4 = OUTLINED_FUNCTION_14_77();
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  [v4 bounds];
  OUTLINED_FUNCTION_3();

  v6 = OUTLINED_FUNCTION_14_25();
  v7 = OUTLINED_FUNCTION_14_77();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for EpicInlineView();
  v9 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

  v10 = *&v0[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1E3AD9070(v1, v6);

    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x228))(COERCE_DOUBLE(*&v13), v10 == 0);
}

void sub_1E3A4EF10()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_vui_viewDidLayoutSubviews);
  v1 = OUTLINED_FUNCTION_14_77();
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  type metadata accessor for EpicInlineView();
  [OUTLINED_FUNCTION_2_98() frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = OUTLINED_FUNCTION_14_77();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [OUTLINED_FUNCTION_2_98() vui:v8 sizeThatFits:v10];
  v14 = v13;

  v15 = OUTLINED_FUNCTION_14_77();
  if (v15)
  {
    v16 = v15;
    [OUTLINED_FUNCTION_2_98() setFrame_];

    sub_1E3A4F044(v8, v14);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1E3A4F044(double a1, double a2)
{
  v3 = v2;
  if (a1 == 0.0 && a2 == 0.0)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_lastViewWidth;
  if (*&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_lastViewWidth] == a1)
  {
    return;
  }

  if (![v2 view])
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for EpicInlineView();
  v6 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

  if (!*&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel] || (OUTLINED_FUNCTION_8(), v7 += 61, v8 = *v7, v9 = v7, v10 = , v8(v10), OUTLINED_FUNCTION_6_19(), , !v9) || (v11 = sub_1E373E010(1, v9), , !v11))
  {

    goto LABEL_12;
  }

  v12 = v6;
  [v12 bounds];
  if (CGRectGetWidth(v83) == 0.0)
  {

LABEL_10:
LABEL_12:
    *&v3[v5] = a1;
    return;
  }

  type metadata accessor for LayoutGrid();
  [v12 bounds];
  Width = CGRectGetWidth(v84);
  v14 = sub_1E3A2579C(Width);
  sub_1E3DF9E68(v73);
  memcpy(__dst, v74, sizeof(__dst));
  [v12 bounds];
  v16 = v15;
  v18 = v17;

  v72 = 0;
  v19 = objc_opt_self();
  v20 = [v19 vui_main];
  v21 = 0.0;
  v22 = 0.0;
  if (v20)
  {
    v23 = v20;
    [v20 vui_nativeScale];
    v22 = v24;
  }

  v67 = v14;
  v25 = [v19 vui_main];
  if (v25)
  {
    v26 = v25;
    [v25 vui_scale];
    v21 = v27;
  }

  v28 = (*(*v11 + 464))();
  v29 = MEMORY[0x1E69E7D40];
  if (!v28)
  {
LABEL_43:
    v80[0] = v16;
    v80[1] = v18;
    v81 = v72;
    memcpy(v82, __dst, sizeof(v82));
    sub_1E3D41814(v67, v80, __src);
    v70 = v76;
    v49 = v78;
    v50 = [v3 view];
    if (!v50)
    {
      goto LABEL_53;
    }

    v51 = v50;
    v52 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

    v53 = (*((*v29 & *v52) + 0x190))();
    v70 = 0;
    memcpy(v68, __src, 0x60uLL);
    *&v68[12] = v53;
    LOBYTE(v68[13]) = 0;
    *(&v68[13] + 1) = *v77;
    v68[15] = *&v77[15];
    LOBYTE(v68[16]) = 1;
    BYTE1(v68[16]) = v49;
    memcpy(v69, v68, sizeof(v69));
    nullsub_1(v54, v55);
    v56 = memcpy(v79, v69, 0x82uLL);
    v57 = sub_1E3D441E8(v56);
    v58 = sub_1E3D41B90();
    sub_1E3D41C40(v11, v57, v58, v79);
    OUTLINED_FUNCTION_6_19();

    sub_1E39F8998(v68);
    if (v29)
    {
      v59 = [v3 view];
      if (!v59)
      {
        goto LABEL_54;
      }

      v60 = v59;
      v61 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

      v62 = (*((*v29 & *v61) + 0x1D8))();
      if (v62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1E4298880;
        *(v63 + 32) = v29;
        v64 = v29;
        sub_1E39F8914(v63, v62);
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  v30 = v28;
  v65 = v11;
  v66 = v12;
  v31 = sub_1E32AE9B0(v28);
  for (i = 0; ; ++i)
  {
    if (v31 == i)
    {

      goto LABEL_42;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1E6911E60](i, v30);
    }

    else
    {
      if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v33 = *(v30 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v69[0] = *(v33 + 98);
    LOWORD(v68[0]) = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v79[0] == __src[0] && v79[1] == __src[1])
    {

LABEL_34:

      type metadata accessor for ImageViewModel();
      v36 = swift_dynamicCastClass();
      if (v36)
      {
        v37 = v36;
        OUTLINED_FUNCTION_26_0();
        v39 = *(v38 + 392);

        v41 = v39(v40);

        v11 = v65;
        v12 = v66;
        v29 = MEMORY[0x1E69E7D40];
        if (v41)
        {
          v42 = [v3 vuiTraitCollection];
          sub_1E3C2AE10();
          v44 = v43;
          OUTLINED_FUNCTION_36();
          (*(v45 + 1640))();
        }

        if ((sub_1E3A24FDC(v67) & 1) != 0 && v21 < v22)
        {
          (*(*v37 + 1024))(25186, 0xE200000000000000, v67);
        }

        v46 = (*(*v37 + 1040))(v67);
        (*((*v29 & *v66) + 0x180))(v46 & 1);
        v47 = j__OUTLINED_FUNCTION_18();
        v48 = (*(*v37 + 1048))(v67, v47 & 1);
        (*((*v29 & *v66) + 0x168))(v48);

        goto LABEL_43;
      }

LABEL_42:
      v11 = v65;
      v12 = v66;
      v29 = MEMORY[0x1E69E7D40];
      goto LABEL_43;
    }

    v35 = sub_1E42079A4();

    if (v35)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

id sub_1E3A4F934(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (*&v3[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor])
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 312);

    v10(0);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v23 = sub_1E3A4FB40;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E37C7850;
  v22 = &block_descriptor_10_1;
  v12 = _Block_copy(&aBlock);
  v13 = v4;

  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v23 = sub_1E3A4EAA4;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E37C7850;
  v22 = &block_descriptor_16_0;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [a1 animateAlongsideTransition:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
  v18.receiver = v16;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
}

id sub_1E3A4FBE8()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_6_84(v2, v3, v4, VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0]);

  v5 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v5, v6, v7, *MEMORY[0x1E69DDAB0]);

  v8 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v8, v9, v10, *MEMORY[0x1E69DF7E0]);

  v11 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v11, v12, v13, @"VUIVPPAPresentedNotification");

  v14 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v14, v15, v16, @"VUIVPPADismissedNotification");

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

void sub_1E3A4FDA8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isPlaybackUIBeingShown];

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor);
  if (v2)
  {
    if (!v3)
    {
      return;
    }

    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  else
  {
    if (!v3)
    {
      return;
    }

    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 304);

    v7(v8);
  }
}

uint64_t sub_1E3A4FF74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4();

  return (*(v8 + 8))(v12, v6);
}

void sub_1E3A5004C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor);
  if (v1)
  {
    v2 = *(*v1 + 304);

    v2(v3);
  }
}

uint64_t sub_1E3A500F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor);
  if (v1)
  {
    v2 = *(*v1 + 312);

    v2(0);
  }

  return result;
}

char *sub_1E3A50198(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311D8);
  sub_1E4148C68(sub_1E3A505D8, v6, v34);
  v7 = v34[0];
  v8 = *(*a1 + 872);
  v9 = v34[0];
  v8(v7, &off_1F5D6C6C8);
  *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel] = a1;

  v10 = *(*a1 + 392);

  if (!v10(v11))
  {
    v7 = 0;
LABEL_21:

    return v7;
  }

  OUTLINED_FUNCTION_26_0();
  (*(v12 + 1560))();

  v14 = *(*a1 + 488);
  v15 = v14(v13);
  if (v15)
  {
    v16 = sub_1E373E010(138, v15);

    if (v16)
    {
      v17 = (*v16 + 392);
      v18 = *v17;
      if ((*v17)(v15))
      {
        v19 = [objc_opt_self() current];
        sub_1E3C2AE10();
        v33 = v18;
        v21 = v20;
        OUTLINED_FUNCTION_36();
        (*(v22 + 1640))();

        v18 = v33;
      }

      type metadata accessor for LayoutGrid();
      sub_1E3A25914();
      OUTLINED_FUNCTION_3();
      if (v18())
      {
        v34[0] = v1;
        v34[1] = v2;
        v34[2] = v3;
        v34[3] = v4;
        v35 = 0;
        OUTLINED_FUNCTION_26_0();
        (*(v23 + 184))(v34);
      }
    }
  }

  v24 = v14(v15);
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = sub_1E373E010(117, v24);

  if (!v25)
  {
    goto LABEL_16;
  }

  type metadata accessor for CollectionViewModel();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

LABEL_16:
    sub_1E3A4DBBC(0);
    goto LABEL_19;
  }

  v27 = *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel];
  *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel] = v26;

  v28 = *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  if (v28)
  {
    v29 = v28;
    OUTLINED_FUNCTION_6_19();
    sub_1E404AF18();
  }

  else
  {
    type metadata accessor for StackViewController();

    j__OUTLINED_FUNCTION_18();
    sub_1E41CA4D8();
    sub_1E3A4DBBC(v30);
  }

LABEL_19:
  result = [v9 view];
  if (result)
  {
    v9 = result;
    type metadata accessor for EpicInlineView();
    v32 = OUTLINED_FUNCTION_2_98();
    sub_1E39F73B4(v32, a1);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_1E3A505D8@<X0>(void *a1@<X8>)
{
  type metadata accessor for EpicInlineViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3A50614(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner);
  OUTLINED_FUNCTION_4_101(&OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel);
  if (a2)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1E3A50728(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner);
  OUTLINED_FUNCTION_4_101(&OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel);
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void (*sub_1E3A5081C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3A50874;
}

void sub_1E3A50874(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3A4D974();
  }
}

uint64_t sub_1E3A508AC(uint64_t result)
{
  if (result)
  {
    v6 = v1;
    type metadata accessor for EpicInlineViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      v7 = result;
      OUTLINED_FUNCTION_26_0();
      v9 = *(v8 + 392);
      v10 = swift_retain_n();
      if (v9(v10))
      {
        type metadata accessor for EpicInlineLayout();
        v11 = swift_dynamicCastClass();
        if (!v11)
        {

          return 0;
        }

        v12 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel;
        v13 = *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel];
        if (v13)
        {
          v14 = v11;
          v15 = *(*v13 + 392);

          v17 = v15(v16);

          if (v17)
          {
            OUTLINED_FUNCTION_8();
            (*(v18 + 1560))();

            v19 = *(*v7 + 872);
            v20 = swift_unknownObjectRetain();
            v19(v20, &off_1F5D6C6C8);
            v21 = [objc_opt_self() current];
            sub_1E3C2AE10();
            v23 = v22;
            v25 = v24;
            v42 = v26;
            (*(*v14 + 1640))();
            *&v6[v12] = v7;

            v28 = *(*v7 + 488);
            v29 = v28(v27);
            if (v29)
            {
              v30 = sub_1E373E010(138, v29);

              if (v30)
              {
                v41 = *(*v30 + 392);
                if ((v41)(v29))
                {
                  OUTLINED_FUNCTION_26_0();
                  (*(v31 + 1640))(v23, v42, v25);
                }

                type metadata accessor for LayoutGrid();
                sub_1E3A25914();
                OUTLINED_FUNCTION_3();
                if (v41())
                {
                  v43[0] = v2;
                  v43[1] = v3;
                  v43[2] = v4;
                  v43[3] = v5;
                  v44 = 0;
                  OUTLINED_FUNCTION_26_0();
                  (*(v32 + 184))(v43);
                }
              }
            }

            v33 = v28(v29);

            if (v33)
            {
              v34 = sub_1E373E010(117, v33);

              if (v34)
              {
                type metadata accessor for CollectionViewModel();
                v35 = swift_dynamicCastClass();
                if (v35)
                {
                  *&v6[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel] = v35;

                  v36 = *&v6[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
                  if (v36)
                  {
                    v37 = v36;
                    sub_1E404AF18();
                  }

                  else
                  {
                    type metadata accessor for StackViewController();

                    j__OUTLINED_FUNCTION_18();
                    sub_1E41CA4D8();
                    sub_1E3A4DBBC(v38);
                  }

                  goto LABEL_28;
                }
              }
            }

            sub_1E3A4DBBC(0);
LABEL_28:
            result = [v6 view];
            if (result)
            {
              v39 = result;
              type metadata accessor for EpicInlineView();
              v40 = OUTLINED_FUNCTION_2_98();
              sub_1E39F73B4(v40, v7);

              return 1;
            }

            else
            {
              __break(1u);
            }

            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1E3A50DF4(char a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong view])
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for EpicInlineView();
      v5 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

      v6 = MEMORY[0x1E69E7D40];
      v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1F0))() & 1;

      if (v7 == (a1 & 1))
      {
LABEL_6:

        return;
      }

      v8 = [v4 view];
      if (v8)
      {
        v9 = v8;
        v10 = *(OUTLINED_FUNCTION_2_98() + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

        (*((*v6 & *v10) + 0x1F8))(a1 & 1);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t NSTextContentStorage.writingDirectionOfLine(_:textLayoutManager:lineNumberReported:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v6 = a2;
  if (a2)
  {
    v8 = a2;
    while (1)
    {
      v12 = v6;
      v13 = [v4 attributedString];
      if (!v13)
      {
        if (a3)
        {
          v20 = -1;
          *a3 = -1;
        }

        else
        {

          return -1;
        }

        return v20;
      }

      v14 = v13;
      v24 = 0;
      v25 = -1;
      v23 = 0;
      v15 = [v8 documentRange];
      v4 = [v15 location];

      v6 = swift_allocObject();
      v6[2] = &v24;
      v6[3] = &v23;
      v6[4] = a1;
      v6[5] = v8;
      v6[6] = v4;
      v6[7] = v14;
      v6[8] = &v25;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_1E3A51354;
      *(a1 + 24) = v6;
      aBlock[4] = sub_1E3A5151C;
      aBlock[5] = a1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E3A512A0;
      aBlock[3] = &block_descriptor_47;
      v16 = _Block_copy(aBlock);
      v17 = v8;
      swift_unknownObjectRetain();

      v10 = v14;

      v18 = [v17 enumerateTextLayoutFragmentsFromLocation:0 options:12 usingBlock:v16];
      swift_unknownObjectRelease();
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      v11 = MEMORY[0x1E6911E60](0, v10);
LABEL_7:
      v8 = v11;
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    v19 = v24;
    if ((v23 & 1) != 0 || (v19 = v24 - 1, !__OFSUB__(v24, 1)))
    {
      *a3 = v19;
LABEL_14:
      swift_unknownObjectRelease();

      v20 = v25;

      return v20;
    }

    goto LABEL_22;
  }

  v9 = [v4 textLayoutManagers];
  sub_1E3280A90(0, &qword_1ECF311E0);
  v10 = sub_1E42062B4();
  if (sub_1E32AE9B0(v10))
  {

    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A512A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1E3A512E4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a1;
  v11 = NSTextContentStorage.writingDirectionOfLine(_:textLayoutManager:lineNumberReported:)(a3, a4, a5);

  return v11;
}

void sub_1E3A51354(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v10 = [a1 textLineFragments];
  sub_1E3280A90(0, &unk_1ECF31250);
  v11 = sub_1E42062B4();

  v12 = sub_1E32AE9B0(v11);

  v13 = *v3 + v12;
  if (__OFADD__(*v3, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*v3 <= v6)
  {
    *v4 = v14 >= v6;
    if (v6 != -1 && v14 < v6)
    {
LABEL_5:
      if (!__OFADD__(v14, 1))
      {
        *v3 = v13;
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    *v4 = 0;
    if (v6 != -1)
    {
      goto LABEL_5;
    }
  }

  v16 = [a1 rangeInElement];
  v17 = [v16 location];

  v18 = [v5 offsetFromLocation:v8 toLocation:v17];
  swift_unknownObjectRelease();
  v19 = [v7 paragraphStyleAtIndex:v18 effectiveRange:0];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 baseWritingDirection];

    *v9 = v21;
  }

  if (*v4 || (v6 = v14 + 1, !__OFADD__(v14, 1)))
  {
    *v3 = v6;
    return;
  }

LABEL_19:
  __break(1u);
}

void type metadata accessor for NSWritingDirection()
{
  if (!qword_1EE23B198)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B198);
    }
  }
}

void sub_1E3A515A4()
{
  OUTLINED_FUNCTION_29_0();
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = *v0;
    v3 = *(v1 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
    v5 = v3;
    v4(v2);
  }
}

void sub_1E3A51640(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_1E3A515A4();
}

void sub_1E3A516A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView);
  v4 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle;
  OUTLINED_FUNCTION_15_0();
  v5 = *(v0 + v4);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB8);
  v8 = v3;
  v7(v5);

  v9 = *(v1 + v2);
  LOBYTE(v1) = *(v1 + v4);
  v10 = *((*v6 & *v9) + 0xD0);
  v11 = v9;
  v10((v1 & 1) == 0);
}

void sub_1E3A51794(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  sub_1E3A516A4();
}

void sub_1E3A517E0()
{
  v1 = sub_1E3A7B638();
  if (v1)
  {
    v4 = v1;
    v2 = [v1 vuiParentViewController];
    if (!v2 || (v3 = v2, v2, v3 != v0))
    {
      [v0 vui:v4 addChildViewController:?];
      [v4 vui:v0 didMoveToParentViewController:?];
    }
  }
}

void sub_1E3A51884(void *a1)
{
  v2 = v1;
  v12 = sub_1E3A7B638();
  v4 = a1;
  sub_1E3A7B674(a1);
  v5 = sub_1E3A7B638();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      if (!v12)
      {
LABEL_6:
        v9 = *(v1 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView);
        v10 = [v8 view];
        OUTLINED_FUNCTION_21();
        (*(v11 + 232))();

        if (v12)
        {
          [v12 vui_removeFromParentViewController];
        }

        sub_1E3A517E0();
        [v8 setDelegate_];
        goto LABEL_9;
      }

      if (v7 != v12)
      {
        [v12 vui:0 willMoveToParentViewController:?];
        goto LABEL_6;
      }
    }

LABEL_9:
  }
}

void (*sub_1E3A519D4(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3A7B638();
  return sub_1E3A51A1C;
}

void sub_1E3A51A1C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1E3A51884(v2);
  }

  else
  {
    sub_1E3A51884(*a1);
  }
}

void sub_1E3A51A84()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_vui_loadView);
  [v0 setVuiView_];
  sub_1E3A517E0();
}

id sub_1E3A51B24(void *a1)
{
  v1 = (*a1 + 896);
  v2 = *v1;
  v3 = (*v1)();
  if (!v3)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31280);
  sub_1E4148C68(sub_1E3A51C1C, v4, &v10);
  v5 = v10;

  sub_1E3A7B5A0(v6);

  v8 = (v2)(v7);
  sub_1E3A51884(v8);
  return v5;
}

id sub_1E3A51C1C@<X0>(void *a1@<X8>)
{
  type metadata accessor for AccountMessageViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3A51C58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset);
  v3[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle] = v8;
  v9 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView;
  type metadata accessor for AccountMessageView();
  *&v3[v9] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1E3A51DA0()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset);
  v1[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle] = v3;
  v4 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView;
  type metadata accessor for AccountMessageView();
  *&v1[v4] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v0);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1E3A51EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration;
  OUTLINED_FUNCTION_15_0();
  return sub_1E327F454(v1 + v3, a1);
}

uint64_t sub_1E3A51EEC(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  swift_endAccess();
  sub_1E3A527A4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1E3A5217C(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3A521E4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E3A52228()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 96))(v3);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39570);
  type metadata accessor for AccountMessageContentConfiguration();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_12_1();

  return v1;
}

void *sub_1E3A522EC()
{
  v1 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView;
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A5232C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3A523DC(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_1E3A524D0()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A52550(double a1, double a2)
{
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 120))();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 view];

    if (v8)
    {
      [v8 sizeThatFits_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9.receiver = v2;
    v9.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
    objc_msgSendSuper2(&v9, sel_sizeThatFits_, a1, a2);
  }
}

void sub_1E3A52694()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 120))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];

    if (v4)
    {
      [v0 bounds];
      [v4 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3A527A4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 128);
  v3 = v2();
  [v3 removeFromSuperview];

  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 120))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_21();
  v9 = (*(v8 + 136))(v7);
  v10 = (v2)(v9);
  if (v10)
  {
    v11 = v10;
    [v0 addSubview_];
    [v0 setNeedsLayout];
  }
}

id sub_1E3A52964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3A52A58(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 112))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3A52AE4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_allocObject();
  sub_1E3A52B20(v0);
  return v1;
}

uint64_t sub_1E3A52B20(void *a1)
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_0();
  swift_unknownObjectWeakAssign();

  return v1;
}

id sub_1E3A52B70()
{
  v1 = objc_allocWithZone(type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView());
  OUTLINED_FUNCTION_12_1();

  v3 = sub_1E3A52DAC(v2, v0);
  sub_1E3A52F88(&qword_1ECF31298, type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView);
  return v3;
}

uint64_t sub_1E3A52BE4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E3A52C40@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E38074D0();
  *a1 = v3;
  return result;
}

id sub_1E3A52C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  v13 = objc_allocWithZone(type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView());
  (*(v6 + 16))(v8, v12, a3);
  v14 = sub_1E3A52E74(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

id sub_1E3A52DAC(uint64_t a1, char *a2)
{
  v7[3] = type metadata accessor for AccountMessageContentConfiguration();
  v7[4] = sub_1E3A52F88(&qword_1ECF312A0, type metadata accessor for AccountMessageContentConfiguration);
  v7[0] = a1;
  *&a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView] = 0;
  sub_1E327F454(v7, &a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration]);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

id sub_1E3A52E74(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView] = 0;
  sub_1E327F454(v11, &a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_1E3A52F88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3A52FCC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
  v6 = a1;
  OUTLINED_FUNCTION_1_121();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void sub_1E3A53044(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  v6 = a1;
  OUTLINED_FUNCTION_1_121();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void sub_1E3A530BC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView;
  OUTLINED_FUNCTION_3_102();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView;
  v6 = a1;
  OUTLINED_FUNCTION_1_121();
  v7 = *(v1 + v5);
  v8 = v7;
  sub_1E3C8BDFC(v7, v4);
}

id sub_1E3A53138(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_0_12();
  result = *(v1 + v3);
  if (result)
  {
    return [result vui:a1 sizeThatFits:0.0];
  }

  return result;
}

id sub_1E3A5319C(char a1, double a2, double a3)
{
  v4 = v3;
  v24.receiver = v3;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v9 = v8;
  v13 = a2 - sub_1E3952BE0(v10, v8, v11, v12);
  sub_1E3A53138(v13);
  v15 = v14;
  v16 = &v3[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate];
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 1);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(&v25, ObjectType, v18, a2);
    result = swift_unknownObjectRelease();
  }

  if ((a1 & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
    OUTLINED_FUNCTION_5_0();
    v21 = *&v4[v20];
    if (v21)
    {
      [v21 setFrame_];
    }

    v22 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
    OUTLINED_FUNCTION_5_0();
    result = *&v4[v22];
    if (result)
    {
      OUTLINED_FUNCTION_6_85(result);
      v23 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView;
      OUTLINED_FUNCTION_5_0();
      result = *&v4[v23];
      if (result)
      {
        return OUTLINED_FUNCTION_6_85(result);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1E3A533AC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView) = 0;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, ObjectType);
}

id sub_1E3A53474(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerViewLayout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E3A535F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
    [v5 setShouldRasterize_];
    v6 = [objc_opt_self() mainScreen];
    [v6 scale];
    v8 = v7;

    [v5 setRasterizationScale_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E4297BD0;
    v10 = objc_opt_self();
    v11 = [v10 blackColor];
    v12 = [v11 colorWithAlphaComponent_];

    v13 = [v12 CGColor];
    type metadata accessor for CGColor();
    v15 = v14;
    *(v9 + 56) = v14;
    *(v9 + 32) = v13;
    v16 = [v10 blackColor];
    v17 = [v16 colorWithAlphaComponent_];

    v18 = [v17 CGColor];
    *(v9 + 88) = v15;
    *(v9 + 64) = v18;
    v19 = [v10 blackColor];
    v20 = [v19 colorWithAlphaComponent_];

    v21 = [v20 CGColor];
    *(v9 + 120) = v15;
    *(v9 + 96) = v21;
    sub_1E38E2BE0(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E42A73A0;
    sub_1E376948C();
    *(v22 + 32) = sub_1E4206F34();
    *(v22 + 40) = sub_1E4206F34();
    *(v22 + 48) = sub_1E4206F34();
    sub_1E38E2B5C(v22, v5);
    v23 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v24 = v2;
  return v3;
}

void sub_1E3A538DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer) = a1;
}

void (*sub_1E3A538F0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3A535F0();
  return sub_1E3A53938;
}

void sub_1E3A53938(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer) = v2;
}

void *sub_1E3A53950()
{
  OUTLINED_FUNCTION_0_8();
  v16 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312D8);
  sub_1E4148C68(sub_1E3A53B0C, v1, &v17);
  v2 = v17;
  [v2 setUserInteractionEnabled_];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v5 = v4();
  v6 = [v5 superlayer];

  if (!v6)
  {
    v7 = [v2 layer];
    v6 = v4();
    [v7 addSublayer_];
  }

  v8 = OUTLINED_FUNCTION_2_0();
  [v9 v10];

  v11 = v4();
  v12 = OUTLINED_FUNCTION_2_0();
  [v13 v14];

  return v2;
}

id sub_1E3A53B0C@<X0>(void *a1@<X8>)
{
  type metadata accessor for NavigationBarGradientView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3A53B48()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer) = 0;
  v5 = type metadata accessor for NavigationBarGradientView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3A53BE8(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationBarGradientView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3A53C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3A53CD0(double a1)
{
  v1[4] = a1;
  v2 = 0.0;
  if (a1 > 0.0 && v1[2] + v1[3] * -0.5 > a1)
  {
    v2 = 1.0;
  }

  v1[5] = v2;
}

uint64_t sub_1E3A53D04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E4298AD0;
    sub_1E4203704();
    sub_1E4203734();

    *(v10 + 32) = sub_1E4203C14();
    *(v10 + 40) = v11;
    sub_1E4203704();
    *(v10 + 48) = sub_1E4203C14();
    *(v10 + 56) = v12;
    sub_1E4203704();
    *(v10 + 64) = sub_1E4203C14();
    *(v10 + 72) = v13;
    sub_1E4203704();
    sub_1E4203734();

    *(v10 + 80) = sub_1E4203C14();
    *(v10 + 88) = v14;
    sub_1E4203F74();
    sub_1E4203F84();
    sub_1E4203C24();
    sub_1E4201064();
    v15 = v27[1];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312F0);
    OUTLINED_FUNCTION_2();
    (*(v17 + 16))(v6, a1, v16);
    v18 = &v6[*(v3 + 36)];
    *v18 = v15;
    v19 = v28;
    *(v18 + 24) = v29;
    *(v18 + 8) = v19;
    sub_1E3A5413C(v6, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v20, v21);
    sub_1E3A54058();
    sub_1E4201F44();
    return sub_1E3A541AC(v6);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312F0);
    OUTLINED_FUNCTION_2();
    (*(v24 + 16))(v9, a1, v23);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v25, v26);
    sub_1E3A54058();
    return sub_1E4201F44();
  }
}

unint64_t sub_1E3A54058()
{
  result = qword_1ECF31300;
  if (!qword_1ECF31300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF312E0);
    sub_1E32752B0(&qword_1ECF312F8, &qword_1ECF312F0);
    sub_1E32752B0(&qword_1ECF31308, &qword_1ECF31310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31300);
  }

  return result;
}

uint64_t sub_1E3A5413C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A541AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1E3A54258(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_1E3A54284;
}

void sub_1E3A54284(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1E3A53CD0(v2);
  }

  else
  {
    *(v3 + 32) = v2;
    v4 = 0.0;
    if (v2 > 0.0)
    {
      OUTLINED_FUNCTION_4_102();
      if (v5)
      {
        v4 = 1.0;
      }
    }

    *(v3 + 40) = v4;
  }
}

uint64_t sub_1E3A542D8()
{
  OUTLINED_FUNCTION_3_103();
  v0 = OUTLINED_FUNCTION_2_99();

  return MEMORY[0x1EEDDA6B0](v0);
}

uint64_t sub_1E3A54324()
{
  OUTLINED_FUNCTION_3_103();
  v0 = OUTLINED_FUNCTION_2_99();

  return MEMORY[0x1EEDDA6A8](v0);
}

uint64_t sub_1E3A54374(char a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8[0] = a1;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = 0;
  return MEMORY[0x1E690DE70](v8, a2, &type metadata for GradientMaskModifier, a3);
}

unint64_t sub_1E3A543B8()
{
  result = qword_1ECF31318;
  if (!qword_1ECF31318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31318);
  }

  return result;
}

unint64_t sub_1E3A54410()
{
  result = qword_1ECF31320;
  if (!qword_1ECF31320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31320);
  }

  return result;
}

unint64_t sub_1E3A54468()
{
  result = qword_1ECF31328;
  if (!qword_1ECF31328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31328);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E3A544EC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1E3A54538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E3A54598()
{
  result = qword_1ECF31330;
  if (!qword_1ECF31330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31338);
    sub_1E32752B0(&qword_1ECF312F8, &qword_1ECF312F0);
    sub_1E3A54058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31330);
  }

  return result;
}

unint64_t sub_1E3A54650()
{
  result = qword_1ECF31340;
  if (!qword_1ECF31340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31340);
  }

  return result;
}

uint64_t sub_1E3A546A4@<X0>(unsigned __int16 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v143 = a3;
  v144 = a4;
  v148 = a2;
  v156 = a5;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v135 = v7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31350);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v138 = v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31358);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v137 = v11;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v130 = v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31368);
  OUTLINED_FUNCTION_0_10();
  v129 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v136 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31370);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v127 - v21;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31378);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v155 = v24;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31380);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v151 = v26;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31388);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v152 = v28;
  OUTLINED_FUNCTION_138();
  sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v146 = v30;
  v147 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_3();
  v145 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v127 - v36;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31390);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v127 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31398);
  OUTLINED_FUNCTION_0_10();
  v141 = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v127 - v44;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A0);
  OUTLINED_FUNCTION_0_10();
  v142 = v46;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v140 = v48;
  OUTLINED_FUNCTION_138();
  type metadata accessor for CollectionViewModel();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    v53 = v136;
    v52 = v137;
    v54 = v138;
    v144 = v19;
    type metadata accessor for EpisodeCollectionViewModel();
    if (swift_dynamicCastClass())
    {
      swift_storeEnumTagMultiPayload();
      v55 = sub_1E3A5707C();
      v56 = sub_1E3A577C8();

      v160[0] = v158;
      v160[1] = &type metadata for CollectionDecorator;
      v160[2] = v55;
      v160[3] = v56;
      v57 = OUTLINED_FUNCTION_20_54();
      v160[0] = v41;
      v160[1] = v57;
      OUTLINED_FUNCTION_1_122();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v58, v59, v60);
      swift_storeEnumTagMultiPayload();
      sub_1E3A56F5C();
      sub_1E3A5781C();
      sub_1E4201F44();

      v61 = OUTLINED_FUNCTION_138_0();
      return sub_1E325F6F0(v61, v62);
    }

    v79 = a1[49];
    v80 = sub_1E373F6E0();
    v139 = a1;
    v128 = v22;
    if (v80)
    {
      type metadata accessor for EpicInlineViewModel();
      if (swift_dynamicCastClass())
      {
        LODWORD(v158) = v79;
        swift_retain_n();
        sub_1E3294EE4(v148, v160, &qword_1ECF2B5C0);
        sub_1E401DE60();
        v81 = (*(*a1 + 576))();
        if (v81)
        {
          v82 = v34;
          (*(*v81 + 224))(v81);
        }

        else
        {
          v98 = sub_1E4204724();
          v82 = v34;
          __swift_storeEnumTagSinglePayload(v34, 1, 1, v98);
        }

        v99 = v131;
        v100 = sub_1E3A579C4();
        v101 = v145;
        sub_1E3B29C44();
        v102 = v53;
        sub_1E3B29C48();
        (*(v146 + 8))(v101, v147);
        sub_1E325F6F0(v82, &qword_1ECF2B7B0);
        memcpy(v159, v160, 0x248uLL);
        sub_1E3A57B4C(v159);
        v103 = v129;
        (*(v129 + 16))(v52, v53, v99);
        swift_storeEnumTagMultiPayload();
        v164[0] = &type metadata for EpicInline;
        v164[1] = v100;
        OUTLINED_FUNCTION_1_122();
        swift_getOpaqueTypeConformance2();
        sub_1E3A57A18();
        v104 = v130;
        sub_1E4201F44();
        sub_1E3294EE4(v104, v138, &qword_1ECF31360);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408);
        sub_1E3A5790C();
        sub_1E3A57A6C();
        v105 = v99;
        v106 = v128;
        OUTLINED_FUNCTION_69_0();
        sub_1E4201F44();

        sub_1E325F6F0(v104, &qword_1ECF31360);
        (*(v103 + 8))(v102, v105);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8);
        __swift_storeEnumTagSinglePayload(v106, 0, 1, v107);
        v97 = v135;
LABEL_30:
        v108 = sub_1E373F6E0();
        v109 = v144;
        if (v108)
        {
          memcpy(v160, v148, 0x150uLL);
          if (sub_1E3748B78(v160) == 1)
          {
            sub_1E3A57880(v161);
          }

          else
          {
            memcpy(v164, v160, 0xC3uLL);
            memcpy(v159, v160, 0xC3uLL);
            nullsub_1(v110, v111);
            sub_1E375C1CC(v164, v163);
            memcpy(v161, v159, 0xC3uLL);
          }

          sub_1E3799FDC(v112, v161, v164);
          nullsub_1(v113, v114);
          memcpy(v159, v164, 0x129uLL);
        }

        else
        {
          sub_1E3A56F54(v159);
        }

        v115 = v128;
        sub_1E3294EE4(v128, v109, &qword_1ECF31370);
        memcpy(v162, v159, sizeof(v162));
        sub_1E3294EE4(v109, v97, &qword_1ECF31370);
        v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313B0) + 48);
        memcpy(v163, v162, 0x129uLL);
        memcpy((v97 + v116), v162, 0x129uLL);
        memcpy(v164, v162, 0x129uLL);
        OUTLINED_FUNCTION_69_0();
        sub_1E3294EE4(v117, v118, v119);
        OUTLINED_FUNCTION_69_0();
        sub_1E3294EE4(v120, v121, v122);
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v123, v124);
        sub_1E325F6F0(v109, &qword_1ECF31370);
        sub_1E3294EE4(v97, v155, &qword_1ECF31348);
        swift_storeEnumTagMultiPayload();
        sub_1E3A56F5C();
        sub_1E3A5781C();
        sub_1E4201F44();
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v125, v126);
        sub_1E325F6F0(v97, &qword_1ECF31348);
        v61 = v115;
        v62 = &qword_1ECF31370;
        return sub_1E325F6F0(v61, v62);
      }
    }

    if (sub_1E373F6E0())
    {

      sub_1E3881F30(v83, 0, __src);
      memcpy(v52, __src, 0x48uLL);
      swift_storeEnumTagMultiPayload();
      sub_1E3881D84(__src, v160);
      v84 = sub_1E3A579C4();
      v160[0] = &type metadata for EpicInline;
      v160[1] = v84;
      OUTLINED_FUNCTION_1_122();
      swift_getOpaqueTypeConformance2();
      sub_1E3A57A18();
      v85 = v130;
      sub_1E4201F44();
      sub_1E3294EE4(v85, v54, &qword_1ECF31360);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408);
      sub_1E3A5790C();
      sub_1E3A57A6C();
      v86 = v128;
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      sub_1E3A57AF8(__src);
      sub_1E325F6F0(v85, &qword_1ECF31360);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8);
      v88 = v86;
    }

    else if (sub_1E373F6E0())
    {

      v90 = sub_1E379869C(v89);
      LODWORD(v158) = v79;
      v159[0] = v90;
      v159[1] = v91;
      v159[2] = v92;
      v159[3] = v93;
      LOBYTE(v159[4]) = 0;
      sub_1E3A578B8();

      sub_1E4201F44();
      OUTLINED_FUNCTION_24_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408);
      sub_1E3A5790C();
      v94 = v128;
      sub_1E3A57A6C();
      sub_1E4201F44();

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8);
      v88 = v94;
    }

    else
    {
      if ((sub_1E373F6E0() & 1) == 0 && (sub_1E373F6E0() & 1) == 0)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8);
        v88 = v128;
        v96 = 1;
        goto LABEL_27;
      }

      memset(v159, 0, 32);
      LOBYTE(v159[4]) = 1;
      sub_1E3A578B8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_24_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408);
      sub_1E3A5790C();
      sub_1E3A57A6C();
      v95 = v128;
      sub_1E4201F44();
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8);
      v88 = v95;
    }

    v96 = 0;
LABEL_27:
    __swift_storeEnumTagSinglePayload(v88, v96, 1, v87);
    v97 = v135;
    goto LABEL_30;
  }

  v50 = v49;
  LOBYTE(v159[0]) = 13;
  v51 = *(*a1 + 776);

  v139 = a1;
  v51(v160, v159, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v160[3])
  {
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1E325F6F0(v160, &unk_1ECF296E0);
  }

  sub_1E3F36E38(0);
LABEL_9:
  v63 = sub_1E3F36DEC();
  v66 = nullsub_1(v64, v65);
  sub_1E3A55924(v50, v148, v143, v144, v40);
  if (v63 != 8)
  {
    LOBYTE(v160[0]) = v63;
    LOBYTE(v159[0]) = 0;
    sub_1E37E6B30();
    sub_1E4205E84();
  }

  LOBYTE(v160[0]) = v66;
  v67 = sub_1E3A5707C();
  v68 = sub_1E3A577C8();
  sub_1E3E35E58();
  v69 = sub_1E325F6F0(v40, &qword_1ECF31390);
  v70 = (*(*v139 + 576))(v69);
  if (v70)
  {
    (*(*v70 + 224))(v70);
  }

  else
  {
    v71 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v71);
  }

  v160[0] = v158;
  v160[1] = &type metadata for CollectionDecorator;
  v160[2] = v67;
  v160[3] = v68;
  v72 = OUTLINED_FUNCTION_20_54();
  v73 = v145;
  sub_1E3B29C44();
  v74 = v140;
  sub_1E3B29C48();
  (*(v146 + 8))(v73, v147);
  sub_1E325F6F0(v37, &qword_1ECF2B7B0);
  (*(v141 + 8))(v45, v41);
  v75 = v142;
  v76 = v149;
  (*(v142 + 16))(v151, v74, v149);
  swift_storeEnumTagMultiPayload();
  v160[0] = v41;
  v160[1] = v72;
  OUTLINED_FUNCTION_1_122();
  swift_getOpaqueTypeConformance2();
  v77 = v152;
  sub_1E4201F44();
  sub_1E3294EE4(v77, v155, &qword_1ECF31388);
  swift_storeEnumTagMultiPayload();
  sub_1E3A56F5C();
  sub_1E3A5781C();
  sub_1E4201F44();

  sub_1E325F6F0(v77, &qword_1ECF31388);
  return (*(v75 + 8))(v74, v76);
}

uint64_t sub_1E3A55924@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v252 = a4;
  v261 = a3;
  v274 = a2;
  v284 = a5;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v240 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v239 = v8;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31438);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v256 = v10;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v251 = v12;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31400);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v253 = v14;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v257 = v16;
  OUTLINED_FUNCTION_138();
  v247 = type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  v237 = v18;
  OUTLINED_FUNCTION_138();
  v249 = type metadata accessor for HorizontalMultiGroupCollectionView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_3();
  v238 = v20;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v246 = v22;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v250 = v24;
  OUTLINED_FUNCTION_138();
  v243 = type metadata accessor for ListCollectionView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_3();
  v236 = v26;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31450);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v264 = v28;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31458);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v242 = v30;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v244 = v32;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v266 = v34;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v234 - v36;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  v268 = v39;
  OUTLINED_FUNCTION_138();
  v260 = type metadata accessor for GridView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_3();
  v235 = v41;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31468);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  v282 = v43;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31470);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  v277 = v45;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31478);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  v271 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31480);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v234 - v49;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v259 = v52;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v273 = v54;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v279 = v56;
  v57 = OUTLINED_FUNCTION_138();
  type metadata accessor for HorizontalCollectionViewWithHeader(v57);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9_3();
  v60 = v59;
  v61 = *(*a1 + 1344);
  v62 = a1;
  switch(v61())
  {
    case 0x75u:
    case 0x81u:
    case 0x96u:

      OUTLINED_FUNCTION_19_57(v63, v64, &qword_1ECF2B5C0);

      v65 = v60;
      v66 = OUTLINED_FUNCTION_8_12();
      sub_1E381AC68(v66, v67, v68, v69);
      OUTLINED_FUNCTION_16_64();
      sub_1E3A57CEC(v60, v50, v70);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v71, v72);
      OUTLINED_FUNCTION_14_78();
      sub_1E3A57780(v73, v74);
      OUTLINED_FUNCTION_29_39();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v75, v76, v77);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      OUTLINED_FUNCTION_25_46();
      sub_1E4201F44();
      goto LABEL_4;
    case 0x76u:

      OUTLINED_FUNCTION_19_57(v171, v172, &qword_1ECF2B5C0);
      v173 = v252;

      v174 = v261;

      v65 = v235;
      sub_1E3F1966C(a1, v174, a1, v173, v235);
      a1 = type metadata accessor for GridView;
      sub_1E3A57CEC(v65, v50, type metadata accessor for GridView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v175, v176);
      OUTLINED_FUNCTION_14_78();
      sub_1E3A57780(v177, v178);
      OUTLINED_FUNCTION_29_39();
      sub_1E4201F44();
      sub_1E3294EE4(v62, v271, &qword_1ECF313D0);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      OUTLINED_FUNCTION_25_46();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v179, v180);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v181, v182, v183);
      goto LABEL_13;
    case 0x77u:

      OUTLINED_FUNCTION_19_57(v184, v185, &qword_1ECF2B5C0);

      v65 = v236;
      v186 = OUTLINED_FUNCTION_8_12();
      sub_1E41682FC(v186, v187, v188, v189);
      a1 = type metadata accessor for ListCollectionView;
      sub_1E3A57CEC(v65, v242, type metadata accessor for ListCollectionView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_58();
      sub_1E3A57780(v190, v191);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v192, v193, v194);
      goto LABEL_12;
    case 0x78u:

      OUTLINED_FUNCTION_19_57(v111, v112, &qword_1ECF2B5C0);
      v113 = OUTLINED_FUNCTION_138_0();
      sub_1E3CA5E9C(v113, v114, v115);
      memcpy(v246, v286, 0x180uLL);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57C3C(v286, v285);
      sub_1E3A575CC();
      OUTLINED_FUNCTION_18_50();
      sub_1E3A57780(v116, v117);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v118, v119, v120);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57454();
      sub_1E3A57510();
      OUTLINED_FUNCTION_27_31();
      v121 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v121, v122);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v123, v124, v125);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      OUTLINED_FUNCTION_26_42();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v126, v127);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v128, v129, v130);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
      sub_1E3A57C98(v286);
      goto LABEL_18;
    case 0x79u:

      OUTLINED_FUNCTION_19_57(v131, v132, &qword_1ECF2B5C0);
      v65 = v238;
      v133 = OUTLINED_FUNCTION_138_0();
      sub_1E3E6313C(v133, v134, v135);
      a1 = type metadata accessor for HorizontalMultiGroupCollectionView;
      sub_1E3A57CEC(v65, v246, type metadata accessor for HorizontalMultiGroupCollectionView);
      swift_storeEnumTagMultiPayload();
      sub_1E3A575CC();
      OUTLINED_FUNCTION_18_50();
      sub_1E3A57780(v136, v137);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v138, v139, v140);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_1E3A57454();
      sub_1E3A57510();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v195, v196);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v197, v198, v199);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v200, v201);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v202, v203, v204);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_55_0();
      goto LABEL_14;
    case 0x7Au:

      OUTLINED_FUNCTION_19_57(v141, v142, &qword_1ECF2B5C0);
      v65 = v237;
      v143 = OUTLINED_FUNCTION_138_0();
      sub_1E3E25F54(v143, v144, v145);
      a1 = type metadata accessor for HorizontalMultiRowCollectionView;
      sub_1E3A57CEC(v65, v251, type metadata accessor for HorizontalMultiRowCollectionView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_68();
      sub_1E3A57780(v146, v147);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v148, v149, v150);
      swift_storeEnumTagMultiPayload();
      sub_1E3A576C4();
      OUTLINED_FUNCTION_5_1();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v151, v152);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v153, v154, v155);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v156, v157);
      goto LABEL_15;
    case 0x7Bu:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_68();
      sub_1E3A57780(v222, v223);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v224, v225, v226);
      swift_storeEnumTagMultiPayload();
      sub_1E3A576C4();
      OUTLINED_FUNCTION_5_1();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v227, v228);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v229, v230, v231);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
      v232 = OUTLINED_FUNCTION_8_12();
      return sub_1E325F6F0(v232, v233);
    case 0x7Eu:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_58();
      sub_1E3A57780(v205, v206);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v207, v208, v209);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57454();
      sub_1E3A57510();
      OUTLINED_FUNCTION_27_31();
      v210 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v210, v211);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v212, v213, v214);
      goto LABEL_17;
    case 0x7Fu:
    case 0x80u:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v101, v102);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v103, v104, v105);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      sub_1E4201F44();
      v106 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v106, v107);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v108, v109, v110);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      OUTLINED_FUNCTION_26_42();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v215, v216);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v217, v218, v219);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
LABEL_18:
      v220 = OUTLINED_FUNCTION_8_12();
      result = sub_1E325F6F0(v220, v221);
      break;
    case 0x84u:
    case 0x85u:
    case 0x86u:

      OUTLINED_FUNCTION_19_57(v78, v79, &qword_1ECF2B5C0);
      v65 = v60;
      v80 = OUTLINED_FUNCTION_138_0();
      sub_1E381AC68(v80, v81, 0, v82);
      OUTLINED_FUNCTION_16_64();
      sub_1E3A57CEC(v60, v37, v83);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v84, v85);
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v86, v87, v88);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      OUTLINED_FUNCTION_25_46();
      sub_1E4201F44();
LABEL_4:
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v89, v90);
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v91, v92, v93);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v94, v95);
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v96, v97, v98);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
LABEL_14:
      sub_1E325F6F0(v99, v100);
LABEL_15:
      result = sub_1E3A57D4C(v65, a1);
      break;
    default:
      v286[0] = 0;
      v286[1] = 0xE000000000000000;
      sub_1E42074B4();
      v158 = MEMORY[0x1E69109E0](0xD00000000000003BLL, 0x80000001E426DC70);
      v285[0] = (v61)(v158);
      sub_1E37D144C();
      v159 = sub_1E4207944();
      MEMORY[0x1E69109E0](v159);

      v160 = v239;
      nullsub_1(v161, v162);

      v163 = v240;
      v164 = v258;
      (*(v240 + 16))(v256, v160, v258);
      swift_storeEnumTagMultiPayload();
      sub_1E3A576C4();
      OUTLINED_FUNCTION_5_1();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v165, v166, v167);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v168, v169);
      result = (*(v163 + 8))(v160, v164);
      break;
  }

  return result;
}

unint64_t sub_1E3A56F5C()
{
  result = qword_1EE288E68;
  if (!qword_1EE288E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31390);
    sub_1E3A5707C();
    sub_1E3A577C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E68);
  }

  return result;
}

unint64_t sub_1E3A5707C()
{
  result = qword_1EE288A78;
  if (!qword_1EE288A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31390);
    sub_1E3A57108();
    sub_1E3A57620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A78);
  }

  return result;
}

unint64_t sub_1E3A57108()
{
  result = qword_1EE288AF0;
  if (!qword_1EE288AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313C0);
    sub_1E3A57194();
    sub_1E3A573C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AF0);
  }

  return result;
}

unint64_t sub_1E3A57194()
{
  result = qword_1EE288C00;
  if (!qword_1EE288C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313C8);
    sub_1E3A57220();
    sub_1E3A5730C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C00);
  }

  return result;
}

unint64_t sub_1E3A57220()
{
  result = qword_1EE288FA8;
  if (!qword_1EE288FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313D0);
    sub_1E3A57780(qword_1EE240A68, type metadata accessor for HorizontalCollectionViewWithHeader);
    sub_1E3A57780(qword_1EE23BFD0, type metadata accessor for GridView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FA8);
  }

  return result;
}

unint64_t sub_1E3A5730C()
{
  result = qword_1EE288FB0;
  if (!qword_1EE288FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313D8);
    sub_1E3A57780(qword_1EE240A68, type metadata accessor for HorizontalCollectionViewWithHeader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FB0);
  }

  return result;
}

unint64_t sub_1E3A573C8()
{
  result = qword_1EE288B60;
  if (!qword_1EE288B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313E0);
    sub_1E3A57454();
    sub_1E3A57510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B60);
  }

  return result;
}

unint64_t sub_1E3A57454()
{
  result = qword_1EE288D50;
  if (!qword_1EE288D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313E8);
    sub_1E3A57780(&qword_1EE277430, type metadata accessor for ListCollectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D50);
  }

  return result;
}

unint64_t sub_1E3A57510()
{
  result = qword_1EE289060;
  if (!qword_1EE289060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313F0);
    sub_1E3A575CC();
    sub_1E3A57780(qword_1EE2409C0, type metadata accessor for HorizontalMultiGroupCollectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289060);
  }

  return result;
}

unint64_t sub_1E3A575CC()
{
  result = qword_1EE266528[0];
  if (!qword_1EE266528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE266528);
  }

  return result;
}

unint64_t sub_1E3A57620()
{
  result = qword_1EE288C10;
  if (!qword_1EE288C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313F8);
    sub_1E3A576C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C10);
  }

  return result;
}

unint64_t sub_1E3A576C4()
{
  result = qword_1EE288FD8;
  if (!qword_1EE288FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31400);
    sub_1E3A57780(qword_1EE2419E0, type metadata accessor for HorizontalMultiRowCollectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FD8);
  }

  return result;
}

uint64_t sub_1E3A57780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3A577C8()
{
  result = qword_1EE275070;
  if (!qword_1EE275070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE275070);
  }

  return result;
}

unint64_t sub_1E3A5781C()
{
  result = qword_1EE288318;
  if (!qword_1EE288318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288318);
  }

  return result;
}

double sub_1E3A57880(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 179) = 0u;
  return result;
}

unint64_t sub_1E3A578B8()
{
  result = qword_1EE2789F0;
  if (!qword_1EE2789F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2789F0);
  }

  return result;
}

unint64_t sub_1E3A5790C()
{
  result = qword_1ECF31410;
  if (!qword_1ECF31410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31360);
    sub_1E3A579C4();
    swift_getOpaqueTypeConformance2();
    sub_1E3A57A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31410);
  }

  return result;
}

unint64_t sub_1E3A579C4()
{
  result = qword_1ECF31418;
  if (!qword_1ECF31418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31418);
  }

  return result;
}

unint64_t sub_1E3A57A18()
{
  result = qword_1ECF31420;
  if (!qword_1ECF31420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31420);
  }

  return result;
}

unint64_t sub_1E3A57A6C()
{
  result = qword_1ECF31428;
  if (!qword_1ECF31428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31408);
    sub_1E3A578B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31428);
  }

  return result;
}

unint64_t sub_1E3A57BB0()
{
  result = qword_1EE288BA0;
  if (!qword_1EE288BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31430);
    sub_1E3A56F5C();
    sub_1E3A5781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BA0);
  }

  return result;
}

uint64_t sub_1E3A57CEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3A57D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3A57DE8(uint64_t a1)
{
  v1 = [*(a1 + 16) uiConfiguration];
  [v1 setShouldWrapModalInNavigationController_];

  return sub_1E4201E44();
}

id sub_1E3A57F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DocumentHostingViewController()
{
  result = qword_1ECF53BE0;
  if (!qword_1ECF53BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A57FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E3D98BF4(a1, a2, 1, 0);
  v4 = sub_1E4202734();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31488) + 36)) = v4;
  type metadata accessor for Router();
  sub_1E40C4334();

  sub_1E40C49A8();
  v6 = v5;

  sub_1E3A58140(&qword_1EE23C228, type metadata accessor for Router);
  v7 = sub_1E4200504();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31490) + 36));
  *v8 = v7;
  v8[1] = v6;
  v9 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment();
  sub_1E3A58140(&qword_1EE283350, type metadata accessor for AppEnvironment);

  v10 = sub_1E4200504();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31498);
  v12 = (a3 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_1E3A58140(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3A58204()
{
  result = qword_1ECF314A0;
  if (!qword_1ECF314A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31498);
    sub_1E3A582A8();
    sub_1E3A583F0(&qword_1EE288820, &qword_1ECF2A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF314A0);
  }

  return result;
}

unint64_t sub_1E3A582A8()
{
  result = qword_1ECF314A8;
  if (!qword_1ECF314A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31490);
    sub_1E3A5834C();
    sub_1E3A583F0(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF314A8);
  }

  return result;
}

unint64_t sub_1E3A5834C()
{
  result = qword_1ECF314B0;
  if (!qword_1ECF314B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31488);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF314B0);
  }

  return result;
}

uint64_t sub_1E3A583F0(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1E3A58480(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3A584D8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3A58564()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3A585A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E3A586A8()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 2208))();
  if (!v2)
  {
    return 0;
  }

  return result;
}

void sub_1E3A58710()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_6_86();
}

void sub_1E3A587A8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_6_86();
}

void sub_1E3A58840()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_6_86();
}

void sub_1E3A588D8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_6_86();
}

uint64_t sub_1E3A58964()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 560))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 464))();

  if (!v2)
  {
    return v2;
  }

  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v2);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:

    type metadata accessor for CollectionViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v2 = *(v4 + 16);

      return v2;
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1E3A58AA0()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LivePostPlayTemplateViewController();
  objc_msgSendSuper2(&v10, sel_vui_viewDidLoad);
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E3A5A640();
  }

  OUTLINED_FUNCTION_13_75();
  v2 += 55;
  v3 = *v2;
  v4 = (*v2)();
  v5 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_21();
  (*(v6 + 176))();

  v7 = v3();
  v8 = [v7 vuiLayer];

  if (v8)
  {
    [v8 setMasksToBounds_];
  }

  return [v1 vui:2 setOverrideUserInterfaceStyle:?];
}

uint64_t sub_1E3A58C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LivePostPlayTemplateViewController();
  v8 = objc_msgSendSuper2(&v14, sel_vuiCollectionView_orthogonalScrollViewDidScroll_section_, a1, a2, a3);
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x888))(v8))
  {
    swift_getObjectType();
    v9 = OUTLINED_FUNCTION_20_55();
    v10(v9);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13_75();
  v11 = OUTLINED_FUNCTION_4_103();
  return v12(v11);
}

uint64_t sub_1E3A58DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3ED69F4(a1, a2, a3);
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x888))())
  {
    swift_getObjectType();
    v4 = OUTLINED_FUNCTION_20_55();
    v5(v4);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13_75();
  v6 = OUTLINED_FUNCTION_4_103();

  return v7(v6);
}

void sub_1E3A58EB0(char a1)
{
  v2 = v1;
  if (sub_1E3A5A548())
  {
    v4 = v2;
    oslog = sub_1E41FFC94();
    v5 = sub_1E4206814();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_160();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&dword_1E323F000, oslog, v5, "%@ auto-play is disabled due to either device settings or shareplay session is active", v6, 0xCu);
      sub_1E325F7A8(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7D40];
    if (a1)
    {
      v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8B8))();
      if (v11)
      {
        return;
      }

      v12 = v10;
      v13 = v2;
      v14 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        v15 = swift_slowAlloc();
        v16 = OUTLINED_FUNCTION_160();
        OUTLINED_FUNCTION_15_69(v16, 5.778e-34);
        *(v15 + 12) = 2048;
        *(v15 + 14) = v12;
        v17 = v13;
        OUTLINED_FUNCTION_35_8();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
        sub_1E325F7A8(v16, &unk_1ECF28E30);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      OUTLINED_FUNCTION_29_40();
      v24 = (*(v23 + 2256))();
    }

    else
    {
      v26 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))();
      if (v27)
      {
        return;
      }

      v12 = v26;
      v13 = v2;
      v28 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        v29 = swift_slowAlloc();
        v30 = OUTLINED_FUNCTION_160();
        OUTLINED_FUNCTION_15_69(v30, 5.778e-34);
        *(v29 + 12) = 2048;
        *(v29 + 14) = v12;
        v31 = v13;
        OUTLINED_FUNCTION_35_8();
        _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
        sub_1E325F7A8(v30, &unk_1ECF28E30);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      OUTLINED_FUNCTION_29_40();
      v24 = (*(v37 + 2304))();
    }

    (*((*v9 & *v13) + 0x988))(0, v12, 0, v24, v25 & 1);
  }
}

void sub_1E3A59250(char a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  *&v16 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v18 = v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView;
    v20 = *&v6[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView];
    if (v20)
    {
      v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x170);
      v22 = v20;
      v21();

      v23 = *&v6[v19];
      if (v23)
      {
        [v23 vui_removeFromSuperView];
      }

      [*&v6[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView] vui_removeFromSuperView];
      *&v6[v19] = 0;
      goto LABEL_31;
    }

LABEL_53:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v125 = v15;
  if (a3)
  {
    v24 = v6;
    v125 = OUTLINED_FUNCTION_105();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v125, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_13_15(v27, 5.7779e-34);
      v28 = "%@ cannot show auto play timer as duration is nil";
LABEL_30:
      _os_log_impl(&dword_1E323F000, v125, v25, v28, v26, 0xCu);
      sub_1E325F7A8(v27, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v29 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView;
  v30 = *&v6[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView];
  if (!v30 || (v31 = [v30 superview]) == 0)
  {
    v123 = a5;
    v33 = sub_1E3A59E64();
    if (v33)
    {
      v34 = v33;
      v35 = sub_1E3A5A2B4();
      if (v35)
      {
        v124 = v35;
        v115[1] = a4;
        v36 = *&a2;
        v37 = v6;
        v38 = sub_1E41FFC94();
        v39 = sub_1E4206814();

        v40 = OUTLINED_FUNCTION_84_1();
        v122 = v34;
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_6_21();
          v42 = OUTLINED_FUNCTION_160();
          *v41 = 138412290;
          *(v41 + 4) = v37;
          *v42 = v37;
          v43 = v37;
          _os_log_impl(&dword_1E323F000, v38, v39, "%@ adding countdown progress view", v41, 0xCu);
          sub_1E325F7A8(v42, &unk_1ECF28E30);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_6_0();
        }

        type metadata accessor for CountDownProgressView();
        v44 = *&v37[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewColor];
        v45 = *&v37[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewImage];
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        v48 = v124;
        *(v47 + 24) = v124;
        v49 = v45;
        v121 = v48;
        v50 = sub_1E4004540(v44, v45, v44, 0, sub_1E3A5AFD0, v47, 0.0, 0.0, 63.0, 63.0, v36, 4.0);
        v51 = sub_1E3A5A5D4();
        v52 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v50) + 0x110))(v51);
        v53 = *&v6[v29];
        *&v6[v29] = v50;
        v54 = v50;

        v55 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        v56 = [objc_opt_self() blackColor];
        v57 = [v56 colorWithAlphaComponent_];

        [v55 setBackgroundColor_];
        v58 = *&v37[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView];
        v117 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView;
        *&v37[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView] = v55;
        v59 = v55;

        v60 = (*((*v52 & *v37) + 0x1B8))();
        v61 = [v60 indexPathsForVisibleItems];

        v62 = v125;
        v63 = sub_1E42062B4();

        v127[0] = v63;

        v64 = 0;
        sub_1E3A5AEDC(v127);
        v120 = v54;
        v118 = v50;

        v65 = v127[0];
        v119 = v37;
        swift_unknownObjectWeakInit();
        v126 = MEMORY[0x1E69E7CC0];
        v66 = *(v65 + 16);
        if (v66)
        {
          v116 = v59;
          v67 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          v115[2] = v65;
          v68 = v65 + v67;
          swift_beginAccess();
          v70 = *(v13 + 16);
          v69 = (v13 + 16);
          v124 = v70;
          v71 = v69[7];
          v64 = v69;
          v72 = (v69 - 1);
          v73 = MEMORY[0x1E69E7CC0];
          do
          {
            v124(v18, v68, v62);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v75 = Strong;
              v76 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8))();

              v77 = sub_1E41FE7E4();
              v78 = [v76 vui:v77 cellForItemAtIndexPath:?];

              v62 = v125;
              v79 = (*v72)(v18, v62);
              if (v78)
              {
                MEMORY[0x1E6910BF0](v79);
                if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1E42062F4();
                }

                sub_1E4206324();
                v73 = v126;
              }
            }

            else
            {
              (*v72)(v18, v62);
            }

            v68 += v71;
            --v66;
          }

          while (v66);

          v59 = v116;
        }

        else
        {

          v73 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1E69144A0](v127);
        v83 = sub_1E32AE9B0(v73);
        v84 = v122;
        if (v83)
        {
          if ((v73 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x1E6911E60](0, v73);
          }

          else
          {
            if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);

              __break(1u);
              return;
            }

            v85 = *(v73 + 32);
          }

          v86 = v85;
        }

        else
        {

          v86 = 0;
        }

        v88 = (*(*v84 + 392))(v87);
        v89 = v120;
        if (v88)
        {
          OUTLINED_FUNCTION_26_0();
          (*(v90 + 552))(v127);

          if (v128)
          {
            v91 = 0.0;
          }

          else
          {
            v91 = *v127;
          }

          if (v86)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v91 = 0.0;
          if (v86)
          {
LABEL_46:
            objc_opt_self();
            v92 = swift_dynamicCastObjCClass();
            if (v92)
            {
              v93 = v92;
              v94 = [v59 vuiLayer];
              [v94 setCornerRadius_];

              v95 = [v93 vuiContentView];
              v96 = v119;
              v97 = v117;
              [v95 vui:*(v119 + v117) addSubview:0 oldView:?];
              v98 = v89;
              [v95 vui:v98 addSubview:0 oldView:?];
              [v95 frame];
              v100 = v99;
              v102 = v101;
              [v98 frame];
              v103 = (v100 - CGRectGetWidth(v129)) * 0.5;
              [v98 frame];
              v104 = (v102 - CGRectGetHeight(v130)) * 0.5;
              [v98 frame];
              v105.n128_f64[0] = v103;
              v106.n128_f64[0] = v104;
              nullsub_1(v105, v106);
              [v98 setFrame_];
              [v59 setFrame_];
              [v98 setVuiUserInteractionEnabled_];

              v107 = [*(v96 + v97) setVuiUserInteractionEnabled_];
              v108 = MEMORY[0x1E69E7D40];
              v109 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0x168))(v107);
              v111 = v59;
              if ((*((*v108 & *v96) + 0x888))(v109))
              {
                v112 = v110;
                swift_getObjectType();
                v113 = v121;
                v114 = [v121 tvpPlaylist];
                (*(v112 + 24))(v36);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
            }

            goto LABEL_53;
          }
        }

        goto LABEL_53;
      }
    }

    v80 = v6;
    v125 = OUTLINED_FUNCTION_105();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v125, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_13_15(v27, 5.7779e-34);
      v28 = "%@ cannot show auto play timer as media info is nil for the first item and we won't be able to autoplay";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v32 = v6;
  v125 = OUTLINED_FUNCTION_105();
  v25 = sub_1E4206814();

  if (os_log_type_enabled(v125, v25))
  {
    v26 = OUTLINED_FUNCTION_6_21();
    v27 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_13_15(v27, 5.7779e-34);
    v28 = "%@ we are already showing a countdown progress view, returning early";
    goto LABEL_30;
  }

LABEL_31:
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3A59E64()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  if (!(*(v2 + 560))() || (OUTLINED_FUNCTION_26_0(), v4 = (*(v3 + 464))(), , !v4))
  {
LABEL_21:
    v12 = v1;
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_160();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v1;
      v17 = v12;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v18, v19, "%@ collectionViewModel is nil, cannot find viewModel for first item");
      sub_1E325F7A8(v16, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    goto LABEL_23;
  }

  if (!sub_1E32AE9B0(v4))
  {

    goto LABEL_21;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_26_0();
  v6 = (*(v5 + 1040))();
  if (!v6)
  {
LABEL_27:
    v20 = v1;
    v21 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_6_21();
      v22 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_15_69(v22, 5.7779e-34);
      v23 = v20;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      sub_1E325F7A8(v22, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    return 0;
  }

  v4 = v6;
  if (!sub_1E32AE9B0(v6))
  {

    goto LABEL_27;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_36:
    v7 = MEMORY[0x1E6911E60](0, v4);
    goto LABEL_13;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(v4 + 32);

LABEL_13:

  v9 = (*(*v7 + 872))(v8);
  if (!v9)
  {
LABEL_31:
    v29 = v1;
    v13 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v13, v30))
    {
      v31 = OUTLINED_FUNCTION_6_21();
      v32 = OUTLINED_FUNCTION_160();
      *v31 = 138412290;
      *(v31 + 4) = v29;
      *v32 = v1;
      v33 = v29;
      _os_log_impl(&dword_1E323F000, v13, v30, "%@ items array is nil or empty, cannot find viewModel for first item", v31, 0xCu);
      sub_1E325F7A8(v32, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

LABEL_23:

    return 0;
  }

  v4 = v9;
  result = sub_1E32AE9B0(v9);
  if (!result)
  {

    goto LABEL_31;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_38:
    v11 = MEMORY[0x1E6911E60](0, v4);
    goto LABEL_18;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v4 + 32);

LABEL_18:

    return v11;
  }

  __break(1u);
  return result;
}

id sub_1E3A5A2B4()
{
  LOBYTE(v15) = 1;
  OUTLINED_FUNCTION_26_0();
  v0 += 97;
  v1 = *v0;
  (*v0)(v16, &v15, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v17)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_21_12() & 1) == 0)
  {
    return 0;
  }

  v2 = v15;
  LOBYTE(v15) = 2;
  v1(v16, &v15, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v17)
  {

LABEL_9:
    sub_1E325F7A8(v16, &unk_1ECF296E0);
    return 0;
  }

  if ((OUTLINED_FUNCTION_21_12() & 1) == 0)
  {

    return 0;
  }

  v3 = v15;
  v4 = sub_1E3744600(v2);

  v5 = sub_1E3744600(v3);

  v6 = objc_allocWithZone(VUIVideosPlayable);
  v7 = sub_1E37448C4(v4, v5);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E4298880;
    *(v8 + 32) = v7;
    v9 = objc_allocWithZone(VUIMediaInfo);
    v10 = v7;
    v7 = sub_1E376538C(13, v8, MEMORY[0x1E69E7CC0], 0);
    [v7 setIntent_];
    [v7 setAutomaticPlaybackStart_];
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 appController];

    if (v12)
    {
      v13 = [v12 appContext];
    }

    else
    {
      v13 = 0;
    }

    [v7 setAppContext_];
  }

  return v7;
}

uint64_t sub_1E3A5A548()
{
  v0 = [objc_opt_self() isFeatureEnabled_];
  v1 = [objc_opt_self() isPostPlayAutoPlayEnabledForType_];
  v2 = *sub_1E32A9398();
  v3 = sub_1E3C14D60();

  return v0 & 1 | ((v1 & 1) == 0) | v3 & 1u;
}

id sub_1E3A5A5D4()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  return v1;
}

uint64_t sub_1E3A5A640()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v20 - v1;
  v3 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = [objc_opt_self() defaultCenter];
  v16 = *sub_1E37E1340();
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v17 = sub_1E4206A04();
  v20[1] = v17;
  v18 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v18);
  sub_1E38DF10C();
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F7A8(v2, &unk_1ECF2D2B0);

  (*(v5 + 8))(v8, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E38DF1B8();
  sub_1E4200844();

  (*(v11 + 8))(v14, v9);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();
}

uint64_t sub_1E3A5A950()
{
  OUTLINED_FUNCTION_156();
  v2 = objc_allocWithZone(v0);
  return sub_1E3A5A990(v1);
}

uint64_t sub_1E3A5A990(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_loggingIdentifier);
  *v4 = 0;
  v4[1] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndPlaybackPrefetchTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndPlaybackPrefetchTimerDuration);
  *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewCell) = 0;
  OUTLINED_FUNCTION_27_32(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewSize);
  *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewLineWidth) = 0x4010000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewColor;
  *(v2 + v5) = [objc_opt_self() whiteColor];
  v6 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewImage;
  sub_1E3280A90(0, &qword_1EE23AE00);
  v7 = [objc_opt_self() configurationWithTextStyle_];
  *(v2 + v6) = OUTLINED_FUNCTION_2_100(v7);
  *(v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_23_41();

  return sub_1E3ED15A8(a1);
}

id sub_1E3A5AB30(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_loggingIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndPlaybackPrefetchTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndPlaybackPrefetchTimerDuration);
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewCell] = 0;
  OUTLINED_FUNCTION_27_32(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewSize);
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewLineWidth] = 0x4010000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewColor;
  *&v2[v5] = [objc_opt_self() whiteColor];
  v6 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewImage;
  sub_1E3280A90(0, &qword_1EE23AE00);
  v7 = [objc_opt_self() configurationWithTextStyle_];
  *&v2[v6] = OUTLINED_FUNCTION_2_100(v7);
  *&v2[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_cancellables] = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_23_41();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for LivePostPlayTemplateViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  return v8;
}

uint64_t sub_1E3A5AD08()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate);

  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_1E3A5ADD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePostPlayTemplateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3A5AEDC(size_t *a1)
{
  v2 = *(sub_1E41FE874() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E3A5C928(v3);
  }

  v4 = *(v3 + 16);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1E3A5B19C(v5);
  *a1 = v3;
}

uint64_t type metadata accessor for LivePostPlayTemplateViewController()
{
  result = qword_1ECF53BF0;
  if (!qword_1ECF53BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A5AFD0()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x888))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3A5B0A8()
{
  result = sub_1E41FFCB4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1E3A5B19C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1E4207914();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E41FE874();
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E41FE874() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E3A5B610(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1E3A5B2CC(0, v2, 1, a1);
  }
}

void sub_1E3A5B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v40 = a2;
  if (a3 == a2)
  {
    return;
  }

  v18 = &v38 - v15;
  v19 = *a4;
  v21 = *(v16 + 16);
  v20 = v16 + 16;
  v22 = *(v20 + 56);
  v50 = (v20 - 8);
  v51 = v21;
  v52 = v20;
  v48 = (v20 + 16);
  v49 = v19;
  v23 = (v19 + v22 * (a3 - 1));
  v47 = -v22;
  v24 = a1 - a3;
  v39 = v22;
  v25 = v19 + v22 * a3;
  while (2)
  {
    v43 = v23;
    v44 = a3;
    v41 = v25;
    v42 = v24;
    v26 = v24;
    v27 = v23;
    while (1)
    {
      v28 = v51;
      (v51)(v18, v25, v8, v17);
      v28(v13, v27, v8);
      v29 = v18;
      v30 = sub_1E41FE854();
      if (v30 >= sub_1E41FE854())
      {
        break;
      }

      v31 = *v50;
      (*v50)(v13, v8);
      v31(v29, v8);
      v18 = v29;
LABEL_8:
      if (!v49)
      {
        __break(1u);
        return;
      }

      v35 = *v48;
      (*v48)(v10, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      v35(v27, v10, v8);
      v27 += v47;
      v25 += v47;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_13;
      }
    }

    v32 = sub_1E41FE854();
    if (v32 == sub_1E41FE854())
    {
      v46 = sub_1E41FE824();
      v45 = sub_1E41FE824();
      v33 = v10;
      v34 = *v50;
      (*v50)(v13, v8);
      v34(v29, v8);
      v10 = v33;
      v18 = v29;
      if (v46 >= v45)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v37 = *v50;
    (*v50)(v13, v8);
    v37(v29, v8);
    v18 = v29;
LABEL_13:
    a3 = v44 + 1;
    v23 = &v43[v39];
    v24 = v42 - 1;
    v25 = v41 + v39;
    if (v44 + 1 != v40)
    {
      continue;
    }

    break;
  }
}

void sub_1E3A5B610(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v8 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v131 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v131 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v131 - v21;
  v26 = MEMORY[0x1EEE9AC00](v22);
  v133 = &v131 - v27;
  v144 = v23;
  v145 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v158 = *v135;
    if (!v158)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_151;
  }

  v147 = v19;
  v148 = v25;
  v154 = v24;
  v132 = a4;
  v29 = 0;
  v158 = v23 + 16;
  v157 = (v23 + 8);
  v155 = (v23 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v156 = v14;
  while (1)
  {
    v31 = v29++;
    v137 = v31;
    if (v29 >= v28)
    {
      goto LABEL_39;
    }

    v143 = v28;
    v136 = v30;
    v32 = *v145;
    v33 = *(v23 + 72);
    v34 = v29;
    v35 = *(v23 + 16);
    v36 = v133;
    v35(v133, &(*v145)[v33 * v29], v8, v26);
    v150 = v33;
    v37 = &v32[v33 * v31];
    v38 = v134;
    v142 = v35;
    (v35)(v134, v37, v8);
    v39 = sub_1E41FE854();
    if (v39 >= sub_1E41FE854())
    {
      v41 = sub_1E41FE854();
      if (v41 != sub_1E41FE854())
      {
        LODWORD(v149) = 0;
        goto LABEL_10;
      }

      v42 = sub_1E41FE824();
      v40 = v42 < sub_1E41FE824();
    }

    else
    {
      v40 = 1;
    }

    LODWORD(v149) = v40;
LABEL_10:
    if (v5)
    {
      v130 = *v157;
      (*v157)(v38, v8);
      v130(v36, v8);
LABEL_126:

      return;
    }

    v43 = *v157;
    (*v157)(v38, v8);
    v141 = v43;
    (v43)(v36, v8);
    v44 = (v137 + 2);
    v45 = v150 * (v137 + 2);
    v46 = &v32[v45];
    v47 = v150 * v29;
    v30 = &v32[v150 * v29];
    do
    {
      v48 = v44;
      v49 = v34;
      v50 = v47;
      v51 = v45;
      if (v44 >= v143)
      {
        break;
      }

      v153 = v34;
      v151 = v44;
      v146 = v5;
      v52 = v142;
      (v142)(v147, v46, v8);
      v52(v148, v30, v8);
      v53 = sub_1E41FE854();
      if (v53 >= sub_1E41FE854())
      {
        v55 = sub_1E41FE854();
        if (v55 == sub_1E41FE854())
        {
          v56 = sub_1E41FE824();
          v54 = v56 < sub_1E41FE824();
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v54 = 1;
      }

      v5 = v146;
      v57 = v141;
      (v141)(v148, v8);
      v57(v147, v8);
      v48 = v151;
      v44 = v151 + 1;
      v46 += v150;
      v30 += v150;
      v49 = v153;
      v34 = v153 + 1;
      v47 = v50 + v150;
      v45 = v51 + v150;
    }

    while (v149 == v54);
    v23 = v144;
    if (v149)
    {
      v31 = v137;
      if (v48 < v137)
      {
        goto LABEL_150;
      }

      if (v137 >= v48)
      {
        v29 = v48;
        v30 = v136;
        v14 = v156;
        goto LABEL_39;
      }

      v58 = v137 * v150;
      do
      {
        if (v31 != v49)
        {
          v153 = v49;
          v59 = *v145;
          if (!*v145)
          {
            goto LABEL_155;
          }

          v60 = v48;
          v151 = *v155;
          (v151)(v140, &v59[v58], v8);
          v61 = v58 < v50 || &v59[v58] >= &v59[v51];
          if (v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          (v151)(&v59[v50], v140, v8);
          v48 = v60;
          v49 = v153;
        }

        ++v31;
        v50 -= v150;
        v51 -= v150;
        v58 += v150;
        v62 = v31 < v49--;
      }

      while (v62);
      v29 = v48;
      v23 = v144;
    }

    else
    {
      v29 = v48;
    }

    v30 = v136;
    v14 = v156;
    v31 = v137;
LABEL_39:
    v63 = v145[1];
    if (v29 < v63)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_147;
      }

      if (v29 - v31 < v132)
      {
        break;
      }
    }

LABEL_60:
    if (v29 < v31)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1E37FFF70(0, *(v30 + 2) + 1, 1, v30);
    }

    v82 = *(v30 + 2);
    v81 = *(v30 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v30 = sub_1E37FFF70((v81 > 1), v82 + 1, 1, v30);
    }

    *(v30 + 2) = v83;
    v84 = v30 + 32;
    v85 = &v30[16 * v82 + 32];
    *v85 = v137;
    *(v85 + 1) = v29;
    v153 = *v135;
    if (!v153)
    {
      goto LABEL_156;
    }

    if (v82)
    {
      v149 = v29;
      v151 = v30 + 32;
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = &v30[16 * v83];
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v30 + 4);
          v90 = *(v30 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_81:
          if (v92)
          {
            goto LABEL_133;
          }

          v104 = *v88;
          v103 = *(v88 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_136;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_141;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v83 < 2)
        {
          goto LABEL_135;
        }

        v111 = *v88;
        v110 = *(v88 + 1);
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_96:
        if (v107)
        {
          goto LABEL_138;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_140;
        }

        if (v114 < v106)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v145)
        {
          goto LABEL_153;
        }

        v118 = v30;
        v119 = &v84[16 * v86 - 16];
        v120 = *v119;
        v121 = v86;
        v30 = &v84[16 * v86];
        v122 = *(v30 + 1);
        sub_1E3A5C204(&(*v145)[*(v144 + 72) * *v119], &(*v145)[*(v144 + 72) * *v30], &(*v145)[*(v144 + 72) * v122], v153);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v122 < v120)
        {
          goto LABEL_128;
        }

        v5 = *(v118 + 2);
        if (v121 > v5)
        {
          goto LABEL_129;
        }

        *v119 = v120;
        *(v119 + 1) = v122;
        if (v121 >= v5)
        {
          goto LABEL_130;
        }

        v83 = v5 - 1;
        memmove(v30, v30 + 16, 16 * (v5 - 1 - v121));
        v30 = v118;
        *(v118 + 2) = v5 - 1;
        v62 = v5 > 2;
        v5 = 0;
        v14 = v156;
        v29 = v149;
        v84 = v151;
        if (!v62)
        {
          goto LABEL_110;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_131;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_132;
      }

      v100 = *(v88 + 1);
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_134;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_137;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_145;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v23 = v144;
    v28 = v145[1];
    if (v29 >= v28)
    {
      goto LABEL_114;
    }
  }

  v64 = v31 + v132;
  if (__OFADD__(v31, v132))
  {
    goto LABEL_148;
  }

  if (v64 >= v63)
  {
    v64 = v145[1];
  }

  if (v64 < v31)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v30 = sub_1E37FFF5C(v30);
LABEL_116:
    v123 = v30 + 16;
    v124 = *(v30 + 2);
    while (v124 >= 2)
    {
      if (!*v145)
      {
        goto LABEL_154;
      }

      v125 = v30;
      v126 = &v30[16 * v124];
      v127 = *v126;
      v30 = &v123[2 * v124];
      v128 = *(v30 + 1);
      sub_1E3A5C204(&(*v145)[*(v144 + 72) * *v126], &(*v145)[*(v144 + 72) * *v30], &(*v145)[*(v144 + 72) * v128], v158);
      if (v5)
      {
        break;
      }

      if (v128 < v127)
      {
        goto LABEL_142;
      }

      if (v124 - 2 >= *v123)
      {
        goto LABEL_143;
      }

      *v126 = v127;
      *(v126 + 1) = v128;
      v129 = *v123 - v124;
      if (*v123 < v124)
      {
        goto LABEL_144;
      }

      v124 = *v123 - 1;
      memmove(v30, v30 + 16, 16 * v129);
      *v123 = v124;
      v30 = v125;
    }

    goto LABEL_126;
  }

  if (v29 == v64)
  {
    goto LABEL_60;
  }

  v136 = v30;
  v146 = v5;
  v65 = *v145;
  v66 = *(v23 + 72);
  v153 = *(v23 + 16);
  v67 = &v65[v66 * (v29 - 1)];
  v150 = -v66;
  v151 = v65;
  v68 = (v31 - v29);
  v138 = v66;
  v139 = v64;
  v69 = &v65[v29 * v66];
LABEL_48:
  v149 = v29;
  v141 = v69;
  v142 = v68;
  v143 = v67;
  while (1)
  {
    v70 = v153;
    v71 = v154;
    (v153)(v154, v69, v8);
    v70(v14, v67, v8);
    v72 = sub_1E41FE854();
    if (v72 >= sub_1E41FE854())
    {
      v74 = sub_1E41FE854();
      if (v74 != sub_1E41FE854())
      {
        v80 = *v157;
        (*v157)(v14, v8);
        v80(v71, v8);
LABEL_58:
        v29 = v149 + 1;
        v67 = (v143 + v138);
        v68 = v142 - 1;
        v69 = &v141[v138];
        if (v149 + 1 == v139)
        {
          v29 = v139;
          v5 = v146;
          v30 = v136;
          v31 = v137;
          goto LABEL_60;
        }

        goto LABEL_48;
      }

      v75 = sub_1E41FE824();
      v76 = sub_1E41FE824();
      v77 = *v157;
      (*v157)(v156, v8);
      v77(v71, v8);
      v14 = v156;
      if (v75 >= v76)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v73 = *v157;
      (*v157)(v14, v8);
      v73(v71, v8);
    }

    if (!v151)
    {
      break;
    }

    v78 = *v155;
    v79 = v152;
    (*v155)(v152, v69, v8);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v8);
    v67 += v150;
    v69 += v150;
    v61 = __CFADD__(v68++, 1);
    if (v61)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1E3A5C204(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = a2;
  v7 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v20 = v68 - a1;
  v21 = v68 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - v68;
  if (a3 - v68 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v24 = v20 / v19;
  v71 = a1;
  v70 = a4;
  v66 = (v15 + 16);
  v67 = (v15 + 8);
  v25 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    sub_1E390E78C(a1, v24, a4);
    v64 = (a4 + v24 * v19);
    v65 = v7;
    v69 = v64;
    v63 = a3;
    while (1)
    {
      if (a4 >= v64 || v68 >= a3)
      {
        goto LABEL_70;
      }

      v27 = v19;
      v28 = *v66;
      (*v66)(v17, v68, v7);
      v28(v13, a4, v7);
      v29 = sub_1E41FE854();
      if (v29 < sub_1E41FE854())
      {
        break;
      }

      v33 = sub_1E41FE854();
      if (v33 == sub_1E41FE854())
      {
        v34 = sub_1E41FE824();
        v62 = sub_1E41FE824();
        v35 = a4;
        v36 = *v67;
        v37 = v65;
        (*v67)(v13, v65);
        v36(v17, v37);
        a4 = v35;
        if (v34 < v62)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v38 = *v67;
        v39 = v65;
        (*v67)(v13, v65);
        v38(v17, v39);
      }

      v19 = v27;
      if (a1 < a4 || a1 >= a4 + v27)
      {
        v7 = v65;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v63;
      }

      else
      {
        a3 = v63;
        v7 = v65;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v70 = a4 + v27;
      a4 += v27;
LABEL_40:
      a1 += v19;
      v71 = a1;
    }

    v30 = *v67;
    (*v67)(v13, v7);
    v30(v17, v7);
LABEL_18:
    v19 = v27;
    v31 = v68 + v27;
    if (a1 < v68 || a1 >= v31)
    {
      v7 = v65;
      swift_arrayInitWithTakeFrontToBack();
      v68 = v31;
      a3 = v63;
    }

    else
    {
      a3 = v63;
      v7 = v65;
      if (a1 != v68)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = v31;
    }

    goto LABEL_40;
  }

  sub_1E390E78C(v68, v22 / v19, a4);
  v41 = a4 + v25 * v19;
  v42 = -v19;
  v43 = v41;
  v61 = a1;
  v62 = a4;
LABEL_42:
  v63 = v68 + v42;
  v44 = a3;
  v59 = v43;
  while (1)
  {
    if (v41 <= a4)
    {
      v71 = v68;
      v69 = v43;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v60 = v43;
    v45 = v41 + v42;
    v46 = *v66;
    (*v66)(v64, v41 + v42, v7);
    v46(v65, v63, v7);
    v47 = sub_1E41FE854();
    if (v47 >= sub_1E41FE854())
    {
      v49 = sub_1E41FE854();
      if (v49 == sub_1E41FE854())
      {
        v50 = sub_1E41FE824();
        v48 = v50 < sub_1E41FE824();
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = 1;
    }

    a3 = v44 + v42;
    v51 = *v67;
    (*v67)(v65, v7);
    v51(v64, v7);
    if (v48)
    {
      v53 = v44 < v68 || a3 >= v68;
      a1 = v61;
      a4 = v62;
      if (v53)
      {
        v54 = v63;
        swift_arrayInitWithTakeFrontToBack();
        v68 = v54;
        v43 = v60;
      }

      else
      {
        v43 = v60;
        v55 = v68;
        v56 = v63;
        v68 = v63;
        if (v44 != v55)
        {
          v57 = v60;
          swift_arrayInitWithTakeBackToFront();
          v68 = v56;
          v43 = v57;
        }
      }

      goto LABEL_42;
    }

    v52 = v44 < v41 || a3 >= v41;
    a1 = v61;
    a4 = v62;
    if (v52)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v43 = v41 + v42;
    v21 = v41 == v44;
    v44 += v42;
    v41 += v42;
    if (!v21)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      v44 = a3;
      v41 = v45;
      v43 = v45;
    }
  }

  v71 = v68;
  v69 = v59;
LABEL_70:
  sub_1E3A5C848(&v71, &v70, &v69);
}

uint64_t sub_1E3A5C848(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E41FE874();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1E3A5C93C(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DB28);
  v10 = *(sub_1E41FE874() - 8);
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
  v15 = *(sub_1E41FE874() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E390E78C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1E3A5CAF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = OUTLINED_FUNCTION_105();
    v5 = sub_1E4206814();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_160();
      *v6 = 138412290;
      *(v6 + 4) = v0;
      *v7 = v2;
      v8 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v9, v10, "%@ watch modal will appear notification received");
      sub_1E325F7A8(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x888))())
    {
      v12 = v11;
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(0, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    v14 = OUTLINED_FUNCTION_4_103();
    v15(v14);
  }
}

uint64_t sub_1E3A5CC94()
{
  type metadata accessor for PlaybackEndManager();
  v0 = swift_allocObject();
  result = sub_1E3A5DDB0();
  qword_1EE2AAF70 = v0;
  return result;
}

uint64_t sub_1E3A5CCD4()
{
  v0 = swift_allocObject();
  sub_1E3A5DDB0();
  return v0;
}

uint64_t *sub_1E3A5CD0C()
{
  if (qword_1EE2A0630 != -1)
  {
    OUTLINED_FUNCTION_1_124();
  }

  return &qword_1EE2AAF70;
}

void sub_1E3A5CD4C()
{
  oslog = sub_1E41FFC94();
  v0 = sub_1E4206814();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, oslog, v0, "set playbackBroadcastDidEndHandler", v1, 2u);
    OUTLINED_FUNCTION_6_0();
  }
}

uint64_t sub_1E3A5CDF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_1E34AF604(a1);
  sub_1E34AF594(v6);
  sub_1E3A5CD4C();
  return sub_1E34AF594(a1);
}

uint64_t sub_1E3A5CE7C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v82 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v77 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v72 = v8;
  v83 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v73 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD10);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314B8);
  OUTLINED_FUNCTION_0_10();
  v70 = v18;
  v71 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v21 = v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314C0);
  OUTLINED_FUNCTION_0_10();
  v76 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v74 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314C8);
  OUTLINED_FUNCTION_0_10();
  v80 = v26;
  v81 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v79 = v28;
  v29 = a1;
  v75 = v1;
  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    OUTLINED_FUNCTION_7_34(&dword_1E323F000, v35, v36, "monitor %@");
    sub_1E325F7A8(v33, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for PlayerLiveEventMonitor();
  v37 = v29;
  v38 = sub_1E3B3DAB8();
  v68 = v37;
  v39 = [v37 currentMediaItem];
  if (v39)
  {
    ObjectType = swift_getObjectType();
    v41 = MEMORY[0x1E69E63B0];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E63B0]);
    sub_1E4123590(@"VUIMediaItemMetadataKeyAutoExitOnBroadcastEndInSeconds", v41, &v85);
    v39 = swift_unknownObjectRelease();
  }

  (*(*v38 + 192))(v39);
  sub_1E32752B0(&qword_1EE28A0F8, &qword_1ECF2CD10);
  v42 = v21;
  v43 = v67;
  sub_1E4200794();
  (*(v13 + 8))(v16, v43);
  v44 = v69;
  sub_1E4207064();
  v45 = v72;
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v83);
  v46 = [objc_opt_self() mainRunLoop];
  v67 = v38;
  v47 = v46;
  v85 = v46;
  v48 = sub_1E4207054();
  v49 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v48);
  sub_1E3280A90(0, &qword_1EE23AD08);
  sub_1E32752B0(&qword_1ECF314D0, &qword_1ECF314B8);
  sub_1E32ADE7C(&qword_1EE23AD10, &qword_1EE23AD08);
  v50 = v74;
  v51 = v71;
  sub_1E4200784();
  sub_1E325F7A8(v49, &unk_1ECF3DB30);

  sub_1E325F7A8(v45, &qword_1ECF2CEC0);
  (*(v73 + 8))(v44, v83);
  (*(v70 + 8))(v42, v51);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v52 = sub_1E4206A04();
  v85 = v52;
  v53 = sub_1E42069A4();
  v54 = v82;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v53);
  sub_1E32752B0(&qword_1ECF314D8, &qword_1ECF314C0);
  sub_1E32ADE7C(&qword_1EE23B1E0, &qword_1EE23B1D0);
  v55 = v78;
  v56 = v79;
  sub_1E42007D4();
  sub_1E325F7A8(v54, &unk_1ECF2D2B0);

  (*(v76 + 8))(v50, v55);
  v57 = swift_allocObject();
  v58 = v75;
  swift_weakInit();
  v59 = swift_allocObject();
  v60 = v68;
  *(v59 + 16) = v57;
  *(v59 + 24) = v60;
  sub_1E32752B0(&qword_1ECF314E0, &qword_1ECF314C8);
  v61 = v60;
  v62 = v81;
  v63 = sub_1E4200844();

  (*(v80 + 8))(v56, v62);
  v64 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors;
  swift_beginAccess();

  v65 = v67;

  swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v58 + v64);
  sub_1E3A5DFCC(v63, v65, v61);
  *(v58 + v64) = v84;
  swift_endAccess();
}

uint64_t sub_1E3A5D7D8(uint64_t a1, void *a2)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v5 + 16))(v8, Strong + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_logger, v3);

    v10 = a2;
    v11 = sub_1E41FFC94();
    v12 = sub_1E4206814();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1E323F000, v11, v12, "%@ in broadcast end range", v13, 0xCu);
      sub_1E325F7A8(v14, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = (result + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler);
    OUTLINED_FUNCTION_5_0();
    v18 = *v17;
    if (*v17)
    {
      sub_1E34AF604(v18);

      v18(a2);
      return sub_1E34AF594(v18);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E3A5DA24(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors;
  swift_beginAccess();
  if (!*(*(v1 + v3) + 16))
  {
    return swift_endAccess();
  }

  sub_1E3A5DF88(a1);
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();

  v5 = a1;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    OUTLINED_FUNCTION_7_34(&dword_1E323F000, v11, v12, "remove %@");
    sub_1E325F7A8(v9, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  sub_1E42004E4();
  swift_beginAccess();
  v13 = sub_1E3A5DE40(v5);
  swift_endAccess();
  sub_1E37E6C80(v13);
}

void sub_1E3A5DBD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 48) + ((v8 << 9) | (8 * v9)));
    sub_1E3A5DA24(v10);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1E3A5DCD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler));
  return v0;
}

uint64_t sub_1E3A5DD58()
{
  sub_1E3A5DCD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A5DDB0()
{
  sub_1E41FFCA4();
  *(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors) = MEMORY[0x1E69E7CC8];
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler);
  *v1 = 0;
  v1[1] = 0;
  return v0;
}

uint64_t sub_1E3A5DE40(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3A5DF88(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314E8);
  sub_1E4207644();

  v6 = *(*(v8 + 56) + 16 * v5);
  sub_1E3280A90(0, &qword_1ECF3A0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314F0);
  sub_1E32ADE7C(&unk_1ECF314F8, &qword_1ECF3A0B0);
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

unint64_t sub_1E3A5DF88(uint64_t a1)
{
  v2 = sub_1E4206F54();

  return sub_1E3A5E26C(a1, v2);
}

id sub_1E3A5DFCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3A5DF88(a3);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314E8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E3A5DF88(a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1E3280A90(0, &qword_1ECF3A0B0);
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 16 * v10);
    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
    sub_1E3A5E224(v10, a3, a1, a2, v14);

    return a3;
  }
}

uint64_t type metadata accessor for PlaybackEndManager()
{
  result = qword_1EE2A0620;
  if (!qword_1EE2A0620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A5E17C()
{
  result = sub_1E41FFCB4();
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

unint64_t sub_1E3A5E224(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E3A5E26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1E3280A90(0, &qword_1ECF3A0B0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1E4206F64();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E3A5E38C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3A5E3EC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3A5E46C;
}

void sub_1E3A5E46C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

double variable initialization expression of TVExtensionController.notificationObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static TVExtensionController.prewarm()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  [v1 prewarmOnMainWithPrefetchSelectedPage_];

  v2 = [v0 sharedInstance];
  sub_1E3CC4420();
}

uint64_t static TVExtensionController.createTVExtensionController(delegate:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for TVExtension();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1E3A5E66C;

  return sub_1E3ABD728(a3, a1, a2);
}

uint64_t sub_1E3A5E66C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_31();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E3A5E7B0, 0, 0);
  }
}

uint64_t sub_1E3A5E7B0()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 48) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3A5E83C, v2, v1);
}

uint64_t sub_1E3A5E83C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  type metadata accessor for TVExtensionController();
  v0[7] = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1E3A5E9B8(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3A5E8DC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_13_7();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1E3A5E93C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E3A5E9B8(a1, a2, a3);
  return v6;
}

uint64_t sub_1E3A5E9B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 40) = a1;
  swift_beginAccess();
  *(v4 + 24) = a3;
  swift_unknownObjectWeakAssign();
  type metadata accessor for VideosUI();
  v7 = a1;
  static VideosUI.initializeUIFactory()(v7, v8);
  v9 = [objc_allocWithZone(VUIAppContext) initWithApplication:v7 mode:0 delegate:v7];
  *(v4 + 32) = v9;
  [v9 start];
  [objc_opt_self() showGDPRWelcomeScreen_];
  v10 = [objc_opt_self() defaultCenter];
  v11 = swift_allocObject();
  swift_weakInit();
  v21 = sub_1E3A5EC48;
  v22 = v11;
  aBlock.receiver = MEMORY[0x1E69E9820];
  aBlock.super_class = 1107296256;
  v19 = sub_1E3A5EE04;
  ObjectType = &block_descriptor_48;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 addObserverForName:@"VUIActionAskToBuyNotification" object:0 queue:0 usingBlock:v12];
  _Block_release(v12);

  ObjectType = swift_getObjectType();
  aBlock.receiver = v13;
  swift_beginAccess();
  sub_1E37EB5D0(&aBlock, v4 + 56);
  swift_endAccess();
  updated = type metadata accessor for DocumentUpdateEventSubscriber();
  v15 = objc_allocWithZone(updated);

  swift_weakInit();
  swift_weakAssign();
  aBlock.receiver = v15;
  aBlock.super_class = updated;
  objc_msgSendSuper2(&aBlock, sel_init);
  OUTLINED_FUNCTION_50();

  swift_unknownObjectRelease();
  v16 = *(v4 + 88);
  *(v4 + 88) = updated;

  return v4;
}

void sub_1E3A5EC48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_1E41FDF24();
  if (!v2)
  {

    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_1E325F748(&v10, &unk_1ECF296E0);
    return;
  }

  v3 = v2;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(&v9, v3, &v10);

  sub_1E375D84C(&v9);
  if (!*(&v11 + 1))
  {

    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v4 = sub_1E4205ED4();

    if ((*(*v1 + 128))(v5))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, v4, ObjectType, v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1E3A5EE04(uint64_t a1)
{
  v2 = sub_1E41FDF34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1E41FDEE4();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id *TVExtensionController.deinit()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedMonitor];
    [v4 removeObserver_];
  }

  [v0[4] stop];
  sub_1E32AF6F8((v0 + 2));

  sub_1E325F748((v0 + 7), &unk_1ECF296E0);
  return v0;
}

uint64_t TVExtensionController.__deallocating_deinit()
{
  TVExtensionController.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t TVExtensionController.createRootViewController(productPageURL:)()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  v4 = sub_1E41FE414();
  v1[4] = v4;
  v1[5] = *(v4 - 8);
  v1[6] = swift_task_alloc();
  v5 = sub_1E41FFCB4();
  v1[7] = v5;
  v1[8] = *(v5 - 8);
  v1[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v1;
  v6[1] = sub_1E3A5F168;

  return sub_1E3A5F910(v3);
}

uint64_t sub_1E3A5F168()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3A5F258()
{
  v37 = v0;
  if (*(v0 + 88))
  {
    sub_1E4206434();
    *(v0 + 96) = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    v2 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E3A5F570, v2, v1);
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);
    v10 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v4 + 16))(v3, v10, v5);
    (*(v8 + 16))(v6, v9, v7);
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067F4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    if (v13)
    {
      v35 = *(v0 + 56);
      v20 = OUTLINED_FUNCTION_6_21();
      v33 = v12;
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136380675;
      sub_1E326D148();
      v22 = sub_1E4207944();
      v34 = v14;
      v24 = v23;
      (*(v18 + 8))(v16, v19);
      sub_1E3270FC8(v22, v24, &v36);
      OUTLINED_FUNCTION_50();

      *(v20 + 4) = v16;
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v25 = (*(v15 + 8))(v34, v35);
    }

    else
    {

      (*(v18 + 8))(v16, v19);
      v25 = (*(v15 + 8))(v14, v17);
    }

    if ((*(**(v0 + 24) + 128))(v25))
    {
      v27 = v26;
      ObjectType = swift_getObjectType();
      sub_1E3A609B8();
      v29 = swift_allocError();
      *v30 = 1;
      (*(v27 + 32))(v29, ObjectType, v27);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_13_7();

    return v31(0);
  }
}

uint64_t sub_1E3A5F570()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[11];
  v2 = v0[3];

  v0[13] = sub_1E3A5FEC8(v1, v2, &off_1F5D6C990);
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A5F5EC()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_13_7();

  return v2(v1);
}

void sub_1E3A5F660(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  v23 = [a1 descriptor];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v6 + 16))(v1, v10, v4);
    v11 = v23;
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_6_21();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v14 = 136380675;
      v15 = [v9 canonicalID];
      v16 = sub_1E4205F14();
      v18 = v17;

      v19 = sub_1E3270FC8(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1E323F000, v12, v13, "Received purchase event for canonical ID: %{private}s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      v2 = v1;
      OUTLINED_FUNCTION_6_0();
    }

    v20 = (*(v6 + 8))(v1, v4);
    if ((*(*v2 + 128))(v20))
    {
      OUTLINED_FUNCTION_145();
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, @"purchase", ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_1E3A5F910(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  v3 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A5F938()
{
  v1 = v0[63];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 openURLHandler];
  v0[64] = v3;

  v4 = sub_1E41FE364();
  v0[65] = v4;
  v5 = *(v1 + 32);
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1E3A5FAC0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31520);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E3A5FE5C;
  v0[13] = &block_descriptor_24_1;
  v0[14] = v6;
  [v3 createProductPageDocumentDataSource:v4 appContext:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E3A5FAC0()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E3A5FB98, 0, 0);
}

uint64_t sub_1E3A5FB98()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  swift_unknownObjectRelease();

  if ((*(*v3 + 128))())
  {
    OUTLINED_FUNCTION_145();
    v4 = *(v0 + 504);
    ObjectType = swift_getObjectType();
    v2[3](v4, ObjectType, v2);
    v20 = *(v0 + 464);
    v21 = *(v0 + 448);
    v19 = *(v0 + 480);
    swift_unknownObjectRelease();
    v7 = v19;
    v6 = v20;
    v8 = v21;
  }

  else
  {
    v8 = xmmword_1E4297170;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *(v0 + 400) = v8;
  *(v0 + 416) = v6;
  *(v0 + 432) = v7;
  TVExtensionConfig.init(askToBuy:appConfig:)((v0 + 400), 0, 1, (v0 + 320));
  if (v1)
  {
    v9 = v1;
    v10 = [v9 contextData];
    if (!v10)
    {
      v10 = [objc_allocWithZone(VUIDocumentContextData) init];
    }

    v11 = *(v0 + 328);
    if (v11 != 1)
    {
      v12 = *(v0 + 320);
      v13 = *(v0 + 352);
      *(v0 + 176) = *(v0 + 336);
      *(v0 + 192) = v13;
      v14 = *(v0 + 384);
      *(v0 + 208) = *(v0 + 368);
      *(v0 + 224) = v14;
      *(v0 + 160) = v12;
      *(v0 + 168) = v11;
      memcpy((v0 + 80), (v0 + 320), 0x50uLL);
      sub_1E3A60EE0(v0 + 80, v0 + 240);
      sub_1E3A60F3C();
      v15 = sub_1E3BFE88C();
      memcpy((v0 + 240), (v0 + 160), 0x50uLL);
      sub_1E3A60F90(v0 + 240);
      if (v15)
      {
        sub_1E3280A90(0, &qword_1ECF31538);
        sub_1E3744600(v15);

        v16 = sub_1E37766C4();
        [v10 setExtensionContextData_];
      }
    }

    sub_1E325F748(v0 + 320, &qword_1ECF31528);
    [v9 setContextData_];
  }

  else
  {
    sub_1E325F748(v0 + 320, &qword_1ECF31528);
  }

  OUTLINED_FUNCTION_13_7();

  return v17(v1);
}

uint64_t sub_1E3A5FE5C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_1E3A5FEA8(v3, a2);
}

id sub_1E3A5FEC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = v78 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v84 = v78 - v16;
  v17 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v82 = v3;
  v18 = v17;
  v19 = sub_1E3D51180();

  if (v19)
  {
    type metadata accessor for DocumentRequestViewController();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x550);
      swift_unknownObjectRetain();
      v22 = a1;
      v23 = v19;
      v21(a2, a3);

      a1 = v22;
    }

    v24 = [a1 contextData];
    if (v24 && (v25 = sub_1E3751A20(v24)) != 0)
    {
      v26 = v25;
      v85 = 0x6449776F6873;
      v86 = 0xE600000000000000;

      sub_1E4207414();
      sub_1E375D7E8(v87, v26, &v88);

      sub_1E375D84C(v87);
      if (*(&v89 + 1))
      {
        if (swift_dynamicCast())
        {
          v28 = v87[0];
          v27 = v87[1];

          goto LABEL_23;
        }

        goto LABEL_15;
      }

      v29 = 0;
    }

    else
    {
      v26 = 0;
      v88 = 0u;
      v89 = 0u;
      v29 = 1;
    }

    sub_1E325F748(&v88, &unk_1ECF296E0);
    if (v29)
    {
      v88 = 0u;
      v89 = 0u;
LABEL_22:
      sub_1E325F748(&v88, &unk_1ECF296E0);
      v27 = 0;
      v28 = 0;
LABEL_23:
      v40 = Logger.tvExtension.unsafeMutableAddressor();
      v42 = v9 + 16;
      v41 = *(v9 + 16);
      v43 = v84;
      v80 = v40;
      v79 = v41;
      (v41)(v84);

      v44 = sub_1E41FFC94();
      v45 = sub_1E42067E4();

      v46 = os_log_type_enabled(v44, v45);
      v81 = v19;
      v78[1] = v28;
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_6_21();
        v78[0] = a1;
        v48 = v47;
        v49 = swift_slowAlloc();
        v87[0] = v49;
        *v48 = 136380675;
        if (v27)
        {
          v50 = v28;
        }

        else
        {
          v50 = 7104878;
        }

        v51 = v9;
        v52 = v7;
        if (v27)
        {
          v53 = v27;
        }

        else
        {
          v53 = 0xE300000000000000;
        }

        v54 = sub_1E3270FC8(v50, v53, v87);
        v7 = v52;

        *(v48 + 4) = v54;
        _os_log_impl(&dword_1E323F000, v44, v45, "Created document data source for canonicalId = %{private}s.", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_6_0();
        a1 = v78[0];
        OUTLINED_FUNCTION_6_0();

        v55 = *(v51 + 8);
        v55(v84, v52);
      }

      else
      {

        v55 = *(v9 + 8);
        v55(v43, v7);
      }

      v56 = v82;
      if (v27)
      {
        v57 = *(v82 + 88);
        if (v57)
        {
          v58 = objc_opt_self();
          v59 = v57;
          v60 = [v58 sharedMonitor];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4298880;
          sub_1E3280A90(0, &qword_1EE23AED8);
          v62 = v59;
          *(inited + 32) = sub_1E3A60798();
          if (sub_1E32AE9B0(inited))
          {
            sub_1E3A60C9C(inited);
          }

          else
          {
            swift_setDeallocating();
            sub_1E377D458();
          }

          v72 = v81;
          sub_1E3280A90(0, &qword_1EE23AEF0);
          sub_1E3A60E60();
          v76 = sub_1E4206614();

          [v60 addObserver:v62 forEventDescriptors:v76 viewController:v72];

LABEL_44:
          v38 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];

          return v38;
        }
      }

      v63 = v7;
      v79(v83, v80, v7);
      v64 = a1;
      v65 = sub_1E41FFC94();
      v66 = sub_1E42067F4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_6_21();
        v68 = swift_slowAlloc();
        *v67 = 138477827;
        *(v67 + 4) = v64;
        *v68 = v64;
        v69 = v64;
        _os_log_impl(&dword_1E323F000, v65, v66, "No canonical ID for data source %{private}@.", v67, 0xCu);
        sub_1E325F748(v68, &unk_1ECF28E30);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v70 = (v55)(v83, v63);
      v71 = (*(*v56 + 128))(v70);
      v72 = v81;
      if (v71)
      {
        OUTLINED_FUNCTION_145();
        ObjectType = swift_getObjectType();
        sub_1E3A609B8();
        v74 = swift_allocError();
        *v75 = 2;
        (*(v42 + 32))(v74, ObjectType, v42);
        swift_unknownObjectRelease();
      }

      goto LABEL_44;
    }

LABEL_15:
    v85 = 25705;
    v86 = 0xE200000000000000;
    sub_1E4207414();
    sub_1E375D7E8(v87, v26, &v88);

    sub_1E375D84C(v87);
    if (*(&v89 + 1))
    {
      v39 = swift_dynamicCast();
      if (v39)
      {
        v27 = v91;
      }

      else
      {
        v27 = 0;
      }

      if (v39)
      {
        v28 = v90;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v30 = Logger.tvExtension.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v30, v7);
  v31 = a1;
  v32 = sub_1E41FFC94();
  v33 = sub_1E42067F4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_6_21();
    v35 = v7;
    v36 = swift_slowAlloc();
    *v34 = 138477827;
    *(v34 + 4) = v31;
    *v36 = v31;
    v37 = v31;
    _os_log_impl(&dword_1E323F000, v32, v33, "Could not create view controller for data source %{private}@.", v34, 0xCu);
    sub_1E325F748(v36, &unk_1ECF28E30);
    v7 = v35;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v12, v7);
  return 0;
}

id sub_1E3A60798()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithCanonicalID_];

  return v2;
}

void sub_1E3A6080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  if ((a5 & 0xE000) == 0x6000)
  {
    v11 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v9 + 16))(v5, v11, v7);
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E323F000, v12, v13, "Document finished fetching.", v14, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v15 = (*(v9 + 8))(v5, v7);
    if ((*(*v5 + 128))(v15))
    {
      OUTLINED_FUNCTION_145();
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1E3A609B8()
{
  result = qword_1ECF32470;
  if (!qword_1ECF32470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32470);
  }

  return result;
}

uint64_t sub_1E3A60A0C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 264))(a1);
  }

  return result;
}

id sub_1E3A60B40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentUpdateEventSubscriber();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16TVExtensionErrorO(uint64_t *a1)
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

uint64_t sub_1E3A60BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A60C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1E3A60C5C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1E3A60C9C(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510);
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

        sub_1E3280A90(0, &qword_1EE23AEF0);
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

unint64_t sub_1E3A60E60()
{
  result = qword_1EE23AEE8;
  if (!qword_1EE23AEE8)
  {
    sub_1E3280A90(255, &qword_1EE23AEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AEE8);
  }

  return result;
}

unint64_t sub_1E3A60F3C()
{
  result = qword_1ECF31530;
  if (!qword_1ECF31530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31530);
  }

  return result;
}

uint64_t sub_1E3A60FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31540);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31548) + 36));
  *v8 = sub_1E3A615F4;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
}

uint64_t sub_1E3A610FC(uint64_t a1)
{
  LOBYTE(v18) = 18;
  (*(*a1 + 776))(v19, &v18, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v19[3])
  {
    sub_1E329505C(v19);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v3 = v18;
LABEL_9:
  v4 = (*(*a1 + 1040))();
  if (!v4)
  {
LABEL_18:
    v6 = 0;
LABEL_19:
    if (v3 < 0)
    {
      if (v6)
      {

        goto LABEL_26;
      }
    }

    else if (v6)
    {

LABEL_22:
      v12 = (*(*v6 + 872))(v11);

      if (v12)
      {
        v13 = sub_1E37D027C(v12);

        return v13;
      }

      goto LABEL_29;
    }

    return 0;
  }

  v5 = v4;
  result = sub_1E32AE9B0(v4);
  if (!result)
  {

    goto LABEL_18;
  }

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_36;
  }

  v6 = MEMORY[0x1E6911E60](0, v5);
LABEL_14:

  v7 = *(*v6 + 872);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = sub_1E32AE9B0(v9);

  if (v3 >= v10)
  {
    goto LABEL_22;
  }

LABEL_26:
  v14 = (*(*v6 + 872))(v11);

  if (!v14)
  {
LABEL_29:

    return 0;
  }

  result = sub_1E3A61424(v3, v14);
  if (v16 == v17 >> 1)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  if (v16 < (v17 >> 1))
  {
    v13 = *(v15 + 8 * v16);

    swift_unknownObjectRelease();
    return v13;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E3A61424(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(v7, a2);
  result = sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for ViewModel();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_1E42074F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1E4207704();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1E3A61574()
{
  result = qword_1EE2A0640[0];
  if (!qword_1EE2A0640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0640);
  }

  return result;
}

uint64_t sub_1E3A615F4()
{
  if (*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0);
    return sub_1E4200624();
  }

  return result;
}

unint64_t sub_1E3A61674()
{
  result = qword_1EE289AF8;
  if (!qword_1EE289AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31548);
    sub_1E32752B0(&qword_1EE2889C0, &qword_1ECF31540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AF8);
  }

  return result;
}

void sub_1E3A6180C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3A61868(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___VUIJSSportsKitJavascriptInterface_context;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

id SportsKitJavascriptInterface.init(context:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SportsKitJavascriptInterface();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

JSValue __swiftcall SportsKitJavascriptInterface.checkActivityExists(for:)(Swift::String a1)
{
  v2 = v1;
  sub_1E4205004();
  v3 = sub_1E4204FF4();
  v4 = sub_1E4204F94();

  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))();
  v6 = [objc_opt_self() valueWithBool:v4 & 1 inContext:v5];

  if (v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

id SportsKitJavascriptInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportsKitJavascriptInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsKitJavascriptInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SearchRACMenuOption()
{
  result = qword_1EE29E710;
  if (!qword_1EE29E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A61C3C()
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

uint64_t sub_1E3A61C90(char a1)
{
  if (a1)
  {
    return 0x5479616C70736964;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1E3A61CD4(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x736E7265636E6F63;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001E426E210;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    v4 = 0x80000001E426E1F0;
    v3 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x736E7265636E6F63;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001E426E210;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0x80000001E426E1F0;
    v5 = 0xD000000000000012;
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

uint64_t sub_1E3A61DBC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x5479616C70736964;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB000000006D7265;
  }

  if (a2)
  {
    v5 = 0x5479616C70736964;
  }

  else
  {
    v5 = 1701869940;
  }

  if (a2)
  {
    v6 = 0xEB000000006D7265;
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

uint64_t sub_1E3A61E84()
{
  sub_1E4206014();
}

uint64_t sub_1E3A61F1C()
{
  sub_1E4206014();
}

uint64_t sub_1E3A61F90()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A62010()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A620BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A61C3C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A620EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A61C90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A62120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A61C3C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A62158()
{
  sub_1E3A623D4();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1E3A62190()
{
  sub_1E3A623D4();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1E3A621C8()
{
  if ((sub_1E41FE604() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for SearchRACMenuOption();
  OUTLINED_FUNCTION_13_76(*(v0 + 20));
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_76(*(v0 + 24));
  if (v3 && v4 == v5)
  {
    return 1;
  }

  return sub_1E42079A4();
}

uint64_t sub_1E3A62264(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31558);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A623D4();
  sub_1E4207C14();
  type metadata accessor for SearchRACMenuOption();
  v10[15] = 0;
  sub_1E42078C4();
  if (!v1)
  {
    v10[14] = 1;
    sub_1E42078C4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1E3A623D4()
{
  result = qword_1ECF31560;
  if (!qword_1ECF31560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31560);
  }

  return result;
}

uint64_t sub_1E3A62428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31568);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v26 = type metadata accessor for SearchRACMenuOption();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE614();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A623D4();
  sub_1E4207C04();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1E41FE624();
    OUTLINED_FUNCTION_2();
    return (*(v15 + 8))(v12);
  }

  else
  {
    v13 = v25;
    v28 = 0;
    v14 = sub_1E4207834();
    v16 = v26;
    v17 = &v12[*(v26 + 20)];
    *v17 = v14;
    v17[1] = v18;
    v27 = 1;
    v19 = sub_1E4207834();
    v20 = v9;
    v22 = v21;
    (*(v6 + 8))(v20, v4);
    v23 = &v12[*(v16 + 24)];
    *v23 = v19;
    v23[1] = v22;
    sub_1E390E2C8(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E390E548(v12);
  }
}

uint64_t sub_1E3A626E0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3A6272C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x736E7265636E6F63;
}

uint64_t sub_1E3A627B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A626E0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A627E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A6272C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A62818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A626E0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A6284C()
{
  sub_1E3A62AE0();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1E3A62884()
{
  sub_1E3A62AE0();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1E3A628BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31570);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1E3A62AE0();
  sub_1E4207C04();
  if (!v1)
  {
    LOBYTE(v4) = sub_1E4207844();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31578);
    sub_1E3A62B34();
    sub_1E4207864();
    if (sub_1E4207884())
    {
      sub_1E4207854();
    }

    v6 = OUTLINED_FUNCTION_9_70();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4 & 1;
}

unint64_t sub_1E3A62AE0()
{
  result = qword_1EE24E8D8;
  if (!qword_1EE24E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8D8);
  }

  return result;
}

unint64_t sub_1E3A62B34()
{
  result = qword_1EE23B590;
  if (!qword_1EE23B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31578);
    sub_1E3A644D0(qword_1EE26F7D8, type metadata accessor for SearchRACMenuOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B590);
  }

  return result;
}

uint64_t sub_1E3A62BE8()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = MEMORY[0x1E69E6158];
  v2 = sub_1E4205C44();
  v14 = 0;
  v3 = [v0 dataWithJSONObject:v2 options:0 error:&v14];

  v4 = v14;
  if (v3)
  {
    v5 = sub_1E41FE464();
    v7 = v6;

    sub_1E41FDE24();
    swift_allocObject();
    sub_1E41FDE14();
    sub_1E3A64310();
    sub_1E41FDE04();

    sub_1E38DCCB0(v5, v7);
    return v14;
  }

  else
  {
    v9 = v4;
    v10 = sub_1E41FE274();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E4297BE0;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1E42074B4();
    MEMORY[0x1E69109E0](0xD000000000000027, 0x80000001E426E230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E4207614();
    v12 = v14;
    v13 = v15;
    *(v11 + 56) = v1;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    sub_1E4207B14();

    return 0;
  }
}

uint64_t sub_1E3A62E44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E3A628BC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1E3A62E78()
{
  type metadata accessor for SearchRACManager();
  v0 = swift_allocObject();
  result = sub_1E3A63028();
  qword_1EE2AB0A0 = v0;
  return result;
}

uint64_t *sub_1E3A62EB4()
{
  if (qword_1EE2A2A90 != -1)
  {
    OUTLINED_FUNCTION_5_100();
  }

  return &qword_1EE2AB0A0;
}

void sub_1E3A62EF4()
{
  byte_1EE2AB0A8 = 0;
  qword_1EE2AB0B0 = 2000;
  unk_1EE2AB0B8 = MEMORY[0x1E69E7CC0];
}

char *sub_1E3A62F14()
{
  if (qword_1EE2A2A98 != -1)
  {
    OUTLINED_FUNCTION_1_125();
  }

  return &byte_1EE2AB0A8;
}

void *sub_1E3A62F54()
{
  OUTLINED_FUNCTION_5_0();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_1E3A62F90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_1E3A63028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = 0;
  v4 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E3A63354(0, 0, v3, &unk_1E42B57B8, v5);

  return v0;
}

uint64_t sub_1E3A63124()
{
  OUTLINED_FUNCTION_27_2();
  *(v0 + 16) = v1;
  v5 = (*(*v2 + 224) + **(*v2 + 224));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1E3A63238;

  return v5();
}

uint64_t sub_1E3A63238()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 48) = v0;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3A6332C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 48);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1E3A63354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1E325A8C0(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325A8C0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1E3A635F0(void (*a1)(void *, void, void, uint64_t), uint64_t a2)
{
  v5 = (*(*v2 + 184))();
  if (!v5)
  {
    OUTLINED_FUNCTION_22_42("jsRACInterface is nil. Aborting configuration population");
    sub_1E3A648A8();
    v6 = swift_allocError();
    *v11 = xmmword_1E4297170;
    a1(v6, 0, 0, 1);

    goto LABEL_3;
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();

  sub_1E3A64934();
  v8 = *(*(v2 + 48) + 16);
  sub_1E3A64980(v8);
  v9 = *(v2 + 48);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1E3A648FC;
  *(v10 + 40) = v7;
  *(v2 + 48) = v9;
  swift_endAccess();
  if (*(v2 + 40) == 1)
  {
LABEL_3:

    return;
  }

  *(v2 + 40) = 1;
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_weakInit();

  sub_1E3F17A28(sub_1E3A649C0, v12);
}

uint64_t sub_1E3A637D0()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return OUTLINED_FUNCTION_6_5(sub_1E3A63810);
}

uint64_t sub_1E3A63810()
{
  v1 = v0[5];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v9 = v0[1];

    return v9(v4 & 1, v3, v2);
  }

  else
  {
    v6 = v0[6];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_1E3A63978;

    return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000012, 0x80000001E426E260, sub_1E3A64364, v7, &type metadata for SearchRACMenuConfiguration);
  }
}

uint64_t sub_1E3A63978()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A63A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v12, a1, v5);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 32))(v15 + v14, v12, v5);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_1E3A635F0(sub_1E3A64E5C, v15);
}

uint64_t sub_1E3A63C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_6_5(sub_1E3A63C40);
}

uint64_t sub_1E3A63C40()
{
  v1 = (*(**(v0 + 56) + 184))();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v11 = *(v0 + 16);
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    v6 = *(v0 + 40);
    *(v5 + 16) = v2;
    *(v5 + 24) = v11;
    *(v5 + 40) = v4;
    *(v5 + 48) = v6;
    *(v5 + 64) = v3;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1E3A63DF0;
    v8 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 88, 0, 0, 0xD00000000000003FLL, 0x80000001E426E2C0, sub_1E3A6436C, v5, v8);
  }

  else
  {
    OUTLINED_FUNCTION_22_42("jsRACInterface is nil. Aborting configuration population");
    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_1E3A63DF0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A63EF0()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3A63F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v24 = a7;
  v22 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v11);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v16, v11);

  sub_1E3F17FC8(a3, a4, a5, v22, v24, sub_1E3A64D00, v19);
}

uint64_t sub_1E3A640F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E324FBDC();
  (*(v6 + 16))(v9, v10, v4);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(a1, a2, &v17);
    _os_log_impl(&dword_1E323F000, v11, v12, "SearchRACManager - %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1E3A642AC()
{

  return v0;
}

uint64_t sub_1E3A642DC()
{
  sub_1E3A642AC();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1E3A64310()
{
  result = qword_1EE24E8C0;
  if (!qword_1EE24E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8C0);
  }

  return result;
}

unint64_t sub_1E3A64384()
{
  result = qword_1ECF31580;
  if (!qword_1ECF31580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31580);
  }

  return result;
}

unint64_t sub_1E3A643DC()
{
  result = qword_1ECF31588;
  if (!qword_1ECF31588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31588);
  }

  return result;
}

unint64_t sub_1E3A64434()
{
  result = qword_1ECF31590;
  if (!qword_1ECF31590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31590);
  }

  return result;
}

uint64_t sub_1E3A644D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3A6451C()
{
  result = qword_1ECF31598;
  if (!qword_1ECF31598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31598);
  }

  return result;
}

unint64_t sub_1E3A64574()
{
  result = qword_1EE24E8C8;
  if (!qword_1EE24E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8C8);
  }

  return result;
}

unint64_t sub_1E3A645CC()
{
  result = qword_1EE24E8D0;
  if (!qword_1EE24E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8D0);
  }

  return result;
}

uint64_t sub_1E3A64648()
{
  result = sub_1E41FE624();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRACMenuOption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRACMenuConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3A648A8()
{
  result = qword_1EE281878[0];
  if (!qword_1EE281878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE281878);
  }

  return result;
}

void *sub_1E3A64934()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3A64BD0(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3A64980(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3A64BD0((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1E3A649C0()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 40) = 0;
  }

  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_1E42074B4();
    MEMORY[0x1E69109E0](0xD000000000000033, 0x80000001E426E390);
    OUTLINED_FUNCTION_17_59();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315A0);
    sub_1E4207614();
    sub_1E3A640F4(0, 0xE000000000000000);
  }

  OUTLINED_FUNCTION_5_0();
  v1 = swift_weakLoadStrong();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_5_0();
    v3 = *(v2 + 48);

    v5 = 0;
    v6 = *(v3 + 16);
    for (i = v3 + 40; ; i += 16)
    {
      if (v6 == v5)
      {

        goto LABEL_11;
      }

      if (v5 >= *(v3 + 16))
      {
        break;
      }

      ++v5;
      v8 = *(i - 8);
      OUTLINED_FUNCTION_17_59();

      v8(v10);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_5_0();
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = result;
      swift_beginAccess();
      *(v9 + 48) = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1E3A64BD0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3A64D00(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    sub_1E42074B4();

    if (a1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (a1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1E69109E0](v2, v3);

    sub_1E3A640F4(0xD00000000000002BLL, 0x80000001E426E3D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  return sub_1E42063D4();
}

uint64_t sub_1E3A64E5C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0);
  if (a4)
  {
    if (qword_1EE2A2A98 != -1)
    {
      OUTLINED_FUNCTION_1_125();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      Strong[2] = a1 & 1;
      Strong[3] = a2;
      Strong[4] = a3;
      sub_1E3A64FE4(a1, a2, a3, 0);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315B0);
  }

  return sub_1E42063D4();
}

id sub_1E3A64FE4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1E3A64FF4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E39C9724;

  return sub_1E3A63124();
}

uint64_t sub_1E3A65088(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1E3A6517C;

  return v5(v2 + 16);
}

uint64_t sub_1E3A6517C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = v1[5];
  v5 = *v0;
  *v3 = *v0;

  v6 = v1[3];
  v7 = v1[4];
  *v4 = *(v2 + 16);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  v8 = v5[1];

  return v8();
}

uint64_t sub_1E3A652B8()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3A6534C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t *MetricsDiskManager.shared.unsafeMutableAddressor()
{
  if (qword_1EE2A08A0 != -1)
  {
    OUTLINED_FUNCTION_5_101();
  }

  return &static MetricsDiskManager.shared;
}

id MetricsDiskManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsDiskManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsDiskManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MetricsDiskManager.writeSession(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_126();
  OUTLINED_FUNCTION_17_60();
  sub_1E3A65690(a1, v4, v5, *(v1 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults), type metadata accessor for MetricsRenderSession, &qword_1ECF315D0, type metadata accessor for MetricsRenderSession);
}

void sub_1E3A65690(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v32[6] = a2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v32[5] = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  v32[17] = a1;
  if (a4)
  {
    v32[4] = a3;
    sub_1E41FDE54();
    swift_allocObject();
    v21 = a4;
    sub_1E41FDE44();
    a5(0);
    sub_1E3A66B68(a6, a7);
    v27 = sub_1E41FDE34();
    v29 = v28;
    v30 = sub_1E41FE454();
    v31 = sub_1E4205ED4();
    [v21 setObject:v30 forKey:v31];

    sub_1E38DCCB0(v27, v29);
  }

  else
  {
    sub_1E324FBDC();
    v22 = OUTLINED_FUNCTION_3_50();
    v23(v22);
    v24 = sub_1E41FFC94();
    v25 = sub_1E42067F4();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_71(&dword_1E323F000, v26, v25, "UserDefaults for metrics does not exist");
      OUTLINED_FUNCTION_65_0();
    }

    (*(v15 + 8))(v20, v7);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t MetricsDiskManager.writeEvent(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_77();
  OUTLINED_FUNCTION_17_60();
  sub_1E3A65690(a1, v4, v5, *(v1 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults), type metadata accessor for MetricsRenderEvent, &qword_1ECF315C8, type metadata accessor for MetricsRenderEvent);
}

uint64_t MetricsDiskManager.eventsForSession(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB8))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults);
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      MEMORY[0x1E69109E0](v7, v8);

      OUTLINED_FUNCTION_3_104();
      sub_1E3A65E34(v9, 0xE600000000000000, v5, v10, &qword_1ECF315C0, type metadata accessor for MetricsRenderEvent);
      v12 = v11;

      if (v12)
      {
        v13 = v12;
        MEMORY[0x1E6910BF0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v2 = v15;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}