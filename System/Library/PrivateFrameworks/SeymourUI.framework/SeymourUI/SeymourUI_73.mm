void sub_20BD4D724(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C133B74();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C133B44();
          v45 = sub_20C133B44();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C133B44();
        v26 = sub_20C133B44();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07CC(&v64, &v63, &v62);
}

uint64_t sub_20BD4DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = v3 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row;
  sub_20B5D8060(v22);
  v8 = v22[9];
  *(v7 + 128) = v22[8];
  *(v7 + 144) = v8;
  *(v7 + 160) = v23;
  v9 = v22[5];
  *(v7 + 64) = v22[4];
  *(v7 + 80) = v9;
  v10 = v22[7];
  *(v7 + 96) = v22[6];
  *(v7 + 112) = v10;
  v11 = v22[1];
  *v7 = v22[0];
  *(v7 + 16) = v11;
  v12 = v22[3];
  *(v7 + 32) = v22[2];
  *(v7 + 48) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_playlist;
  v14 = sub_20C138204();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B52E424(&v21, v4 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_eventHub) = v21;
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_platform) = v21;
  v15 = (v4 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_descriptorIdentifier);
  *v15 = a2;
  v15[1] = a3;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  *(v16 + 152) = MEMORY[0x277D84F90];
  v18 = sub_20B6B0C04(v17);
  v19 = MEMORY[0x277D84FA0];
  *(v16 + 160) = v18;
  *(v16 + 168) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();
  *(v16 + 136) = 20;
  *(v16 + 144) = 25;
  *(v4 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_lazyLockupFetcher) = v16;
  return v4;
}

uint64_t sub_20BD4DF94(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 144);
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 128);
  v57 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 48);
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 64);
  v53 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 80);
  v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 96);
  v55 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row);
  v49[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 48);
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 32);
  v51 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 80);
  v46 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 64);
  v47 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 16);
  v42 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row);
  v43 = v14;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 32);
  v45 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 112);
  v39 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 128);
  v40 = v15;
  v38 = v16;
  v59[0] = v49[0];
  v59[1] = v10;
  v59[4] = v52;
  v59[5] = v9;
  v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 160);
  v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 96);
  v17 = *(&v54 + 1);
  v41 = *(v3 + 160);
  v18 = *(v3 + 96);
  v59[2] = v50;
  v59[3] = v8;
  v19 = *(v3 + 144);
  v65 = *(v3 + 160);
  v63 = v56;
  v64 = v19;
  v62 = v5;
  v60 = v18;
  v61 = *(&v54 + 1);
  if (sub_20B5EAF8C(v59) == 1)
  {
    v30 = v46;
    v31 = v47;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v32 = v48;
    v33 = *(&v54 + 1);
    v37 = v41;
    v35 = v39;
    v36 = v40;
    v34 = v38;
    sub_20B52F9E8(v49, v25, &qword_27C762340);
    sub_20B520158(&v26, &qword_27C762340);
LABEL_6:
    v23 = 1;
    return v23 & 1;
  }

  v30 = v46;
  v31 = v47;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v32 = v48;
  v33 = *(&v54 + 1);
  v37 = v41;
  v35 = v39;
  v36 = v40;
  v34 = v38;
  sub_20B52F9E8(v49, v25, &qword_27C762340);

  sub_20B520158(&v26, &qword_27C762340);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = *(v17 + 8 * v20 + 24);

  v22 = sub_20B969AA8(a1, v21);

  v23 = v22 ^ 1;
  return v23 & 1;
}

unint64_t sub_20BD4E1E4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_20C13D944() <= a5)
  {
LABEL_15:

    return a1;
  }

  v8 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    return sub_20C13D974();
  }

  v9 = 0;
  do
  {
    v10 = sub_20C13D954();
    v12 = v11;
    if ((v11 & 0x1000000000000000) != 0)
    {
      v16 = sub_20C13CAD4();

      v15 = v9 + v16;
      if (__OFADD__(v9, v16))
      {
        goto LABEL_14;
      }
    }

    else
    {

      if ((v12 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v14 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v15 = v9 + v14;
      if (__OFADD__(v9, v14))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    if (v9 >= a5)
    {
      goto LABEL_16;
    }

    result = sub_20C13D924();
    v8 = result >> 14;
    v9 = v15;
  }

  while (result >> 14 != a2 >> 14);
  v8 = a2 >> 14;
LABEL_16:
  if (v8 >= a1 >> 14)
  {
    return sub_20C13D974();
  }

  __break(1u);
  return result;
}

void sub_20BD4E394(uint64_t a1)
{
  sub_20B51C88C(0, &qword_27C766528);
  v3 = sub_20C13CC54();
  [v1 setBoundarySupplementaryItems_];

  [v1 setContentInsets_];
  sub_20B51C88C(0, &qword_27C76B518);
  v4 = sub_20C13CC54();
  [v1 setDecorationItems_];

  [v1 setInterGroupSpacing_];
  [v1 setOrthogonalScrollingBehavior_];
  [v1 setSupplementariesFollowContentInsets_];
  if (*(a1 + 72))
  {
    v5 = *(a1 + 80);
    v7[4] = *(a1 + 72);
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_20C0C1C20;
    v7[3] = &block_descriptor_122;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v1 setVisibleItemsInvalidationHandler_];
  _Block_release(v6);
}

void sub_20BD4E6E4(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RoundedButton();
  objc_msgSendSuper2(&v9, sel_setHighlighted_, a1 & 1);
  if (![v1 buttonType] && (!objc_msgSend(v1, sel_isHighlighted) || *(v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_shouldShowHighlight) == 1))
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_shouldShowHighlight) = 0;
    if ([v1 isHighlighted])
    {
      v3 = 0.165;
    }

    else
    {
      v3 = 0.25;
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v8[4] = sub_20B8819CC;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_20B7B548C;
    v8[3] = &block_descriptor_123;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v4 animateWithDuration:6 delay:v6 options:0 animations:v3 completion:0.0];
    _Block_release(v6);
  }
}

id sub_20BD4E860(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI13RoundedButton_layout];
  *v11 = xmmword_20C16AFE0;
  v11[1] = xmmword_20C17BB10;
  v12 = OBJC_IVAR____TtC9SeymourUI13RoundedButton_indefiniteSpinner;
  v13 = objc_allocWithZone(type metadata accessor for IndefiniteSpinnerView());
  v14 = sub_20B7F1EE8(2.0);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v12] = v14;
  v15 = &v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults];
  sub_20BD4FDCC(v25);
  v16 = v25[3];
  v15[2] = v25[2];
  v15[3] = v16;
  v15[4] = v25[4];
  v17 = v25[1];
  *v15 = v25[0];
  v15[1] = v17;
  *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_highlightTimer] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont] = 0;
  v18 = &v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastSymbolScale];
  *v18 = 0;
  v18[8] = 1;
  v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_shouldShowHighlight] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_undimmedBackgroundColor] = 0;
  v19 = &v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaultContentInsets];
  v20 = *(MEMORY[0x277D768C8] + 16);
  *v19 = *MEMORY[0x277D768C8];
  v19[1] = v20;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for RoundedButton();
  v21 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20BD4F27C();
  [v21 addTarget:v21 action:sel_handleTouchUp_ forControlEvents:256];
  [v21 addTarget:v21 action:sel_handleTouchDown_ forControlEvents:1];
  [v21 addTarget:v21 action:sel_handleTouchUp_ forControlEvents:32];
  [v21 addTarget:v21 action:sel_handleTouchUp_ forControlEvents:64];
  [v21 addTarget:v21 action:sel_handleTouchUp_ forControlEvents:128];
  v22 = [objc_opt_self() defaultCenter];
  [v22 addObserver:v21 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  return v21;
}

void sub_20BD4EBCC(void *a1, uint64_t a2, void *a3, uint64_t a4, const char **a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for RoundedButton();
  v8 = *a5;
  v9 = a3;
  v10 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, v9, a4);
  sub_20BD4F5AC();
}

void sub_20BD4EC48()
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RoundedButton();
  objc_msgSendSuper2(&v7, sel_tintColorDidChange);
  if ([v0 tintAdjustmentMode] == 2)
  {
    v1 = [v0 backgroundColor];
    if (v1)
    {
      v5 = 0.0;
      v6 = 0.0;
      v2 = v1;
      [v1 getWhite:&v6 alpha:&v5];
      v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v6 alpha:v5 * 0.8];
    }

    else
    {
      v3 = 0;
    }

    [v0 setBackgroundColor_];
  }

  else
  {
    [v0 setBackgroundColor_];
  }

  if (![v0 buttonType])
  {
    v4 = [v0 tintColor];
    [v0 setTitleColor:v4 forState:0];
  }
}

void sub_20BD4EE1C(void *a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for RoundedButton();
  objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        v14 = *&v1[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont];
        v15 = v14;
        sub_20BD4F054(v14, 0, 1, v13);

        v3 = v15;
      }
    }
  }

  else
  {
    v16 = [v1 traitCollection];
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont];
    v3 = v17;
    sub_20BD4F054(v17, 0, 1, v16);
  }
}

void sub_20BD4F054(void *a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v10 = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont];
  *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont] = a1;
  v11 = a1;

  v12 = &v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastSymbolScale];
  *v12 = a2;
  v12[8] = a3 & 1;
  if (a4)
  {
    v13 = a4;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [v5 traitCollection];
    if (a1)
    {
LABEL_3:
      v14 = a4;
      v15 = v11;
      if ((a3 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v27 = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults + 24];
  v30[0] = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults + 8];
  v30[1] = v27;
  v30[2] = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults + 40];
  v31 = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults + 56];
  v28 = a4;
  sub_20B7B2490(v30, v29);
  v15 = sub_20B7C6A74(v13);
  sub_20B7B24EC(v30);
  if (a3)
  {
LABEL_4:
    a2 = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults + 64];
  }

LABEL_5:
  v16 = v11;
  v17 = [v5 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setFont_];
  }

  v19 = objc_opt_self();
  v20 = v15;
  [v20 pointSize];
  v22 = v21;
  sub_20BF1F62C();
  v24 = [v19 configurationWithPointSize:sub_20BF1F7A8(v23) weight:a2 scale:v22];

  v25 = [v5 imageForState_];
  v26 = [v25 imageByApplyingSymbolConfiguration_];

  [v5 setImage:v26 forState:0];
}

void sub_20BD4F27C()
{
  v1 = &v0[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults];
  [v0 setBackgroundColor_];
  [v0 setTintColor_];
  v2 = [v0 layer];
  [v2 setCornerCurve_];

  v3 = [v0 layer];
  v4 = _UISolariumEnabled();
  v5 = 14.0;
  if (v4)
  {
    v5 = 25.0;
  }

  [v3 setCornerRadius_];

  sub_20BD4F5AC();
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI13RoundedButton_indefiniteSpinner];
  [v0 addSubview_];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C150050;
  v9 = [v0 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v8 + 32) = v10;
  v11 = [v6 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v8 + 40) = v13;
  v14 = [v6 widthAnchor];
  v15 = [v6 heightAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v8 + 48) = v16;
  v17 = [v6 centerYAnchor];
  v18 = [v0 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v8 + 56) = v19;
  v20 = [v6 heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v8 + 64) = v21;
  sub_20B5E29D0();
  v22 = sub_20C13CC54();

  [v7 activateConstraints_];
}

id sub_20BD4F5AC()
{
  v1 = [v0 titleForState_];
  if (v1 && (v1, (v2 = [v0 imageForState_]) != 0))
  {

    v3 = 0.0;
    if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
    {
      v4 = -4.0;
      [v0 setContentEdgeInsets_];
      [v0 setImageEdgeInsets_];
      v5 = 4.0;
    }

    else
    {
      v4 = 4.0;
      [v0 setContentEdgeInsets_];
      [v0 setImageEdgeInsets_];
      v5 = -4.0;
    }

    v6 = 0.0;
  }

  else
  {
    [v0 setContentEdgeInsets_];
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
    [v0 setImageEdgeInsets_];
  }

  return [v0 setTitleEdgeInsets_];
}

id sub_20BD4F994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BD4FADC(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState];
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState];
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState + 8];
  v7 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState + 16];
  v8 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState + 24];
  v9 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState + 32];
  v10 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState + 40];
  if (v6 == 1)
  {
    if (a1[1] == 1)
    {
      sub_20B7F2560();
      return;
    }

    goto LABEL_5;
  }

  v11 = a1[1];
  if (v11 != 1)
  {
    v20 = a1[2];
    v21 = a1[3];
    v23 = a1[4];
    v22 = a1[5];
    if (v6)
    {
      if (!v11)
      {
        goto LABEL_5;
      }

      if (v5 != *a1 || v6 != v11)
      {
        v31 = a1[4];
        v32 = a1[5];
        v30 = a1[2];
        v25 = sub_20C13DFF4();
        v20 = v30;
        v23 = v31;
        v22 = v32;
        if ((v25 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_5;
    }

    if (v8)
    {
      if (!v21)
      {
        goto LABEL_5;
      }

      if (v7 != v20 || v8 != v21)
      {
        v33 = v22;
        v27 = v23;
        v28 = sub_20C13DFF4();
        v23 = v27;
        v22 = v33;
        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (v21)
    {
      goto LABEL_5;
    }

    if (v10)
    {
      if (v22)
      {
        v29 = v9 == v23 && v10 == v22;
        if (v29 || (sub_20C13DFF4() & 1) != 0)
        {
          return;
        }
      }
    }

    else if (!v22)
    {
      return;
    }
  }

LABEL_5:
  v12 = *(a1 + 1);
  *v4 = *a1;
  *(v4 + 1) = v12;
  *(v4 + 2) = *(a1 + 2);
  sub_20BAC1C94(a1, v34);
  sub_20BAC1CF0(v5, v6);
  v13 = a1[1];
  v14 = *&v2[OBJC_IVAR____TtC9SeymourUI13RoundedButton_indefiniteSpinner];
  if (v13 == 1)
  {
    sub_20B7F2560();
    [v2 setTitle:0 forState:0];
    [v2 setImage:0 forState:0];
  }

  else
  {
    v15 = a1[5];
    v14[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_isAnimating] = 0;
    [v14 setHidden_];
    v16 = *&v14[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer];
    v17 = sub_20C13C914();
    [v16 removeAnimationForKey_];

    if (v13)
    {
      v13 = sub_20C13C914();
    }

    [v2 setTitle:v13 forState:0];

    if (v15)
    {
      v18 = sub_20C13C914();
      v19 = [objc_opt_self() systemImageNamed_];

      [v2 setImage:v19 forState:0];
    }
  }
}

id sub_20BD4FDCC@<X0>(uint64_t a1@<X8>)
{
  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
  v2 = *MEMORY[0x277D76918];
  v18 = *MEMORY[0x277D74420];
  v3 = *MEMORY[0x277D76820];
  v20 = MEMORY[0x277D84FA0];
  v16 = v3;
  sub_20B6FF83C(v19, 1);
  v22 = 1;
  v21 = 0;
  v4 = v20;
  sub_20C13E164();
  v15 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 >= 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_7;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = v4;
    sub_20B706478(4, v7, isUniquelyReferenced_nonNull_native);
    v4 = v19[0];
  }

LABEL_7:
  v12 = v22;
  v13 = v21;
  result = [objc_opt_self() whiteColor];
  *a1 = v17;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 36) = v12;
  *(a1 + 37) = 9;
  *(a1 + 40) = v18;
  *(a1 + 48) = v13;
  *(a1 + 56) = v4;
  *(a1 + 64) = -1;
  *(a1 + 72) = result;
  return result;
}

void sub_20BD5005C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_currentState);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_layout);
  *v3 = xmmword_20C16AFE0;
  v3[1] = xmmword_20C17BB10;
  v4 = OBJC_IVAR____TtC9SeymourUI13RoundedButton_indefiniteSpinner;
  v5 = objc_allocWithZone(type metadata accessor for IndefiniteSpinnerView());
  v6 = sub_20B7F1EE8(2.0);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v6;
  v7 = (v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaults);
  sub_20BD4FDCC(v13);
  v8 = v13[3];
  v7[2] = v13[2];
  v7[3] = v8;
  v7[4] = v13[4];
  v9 = v13[1];
  *v7 = v13[0];
  v7[1] = v9;
  *(v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_highlightTimer) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont) = 0;
  v10 = v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastSymbolScale;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_shouldShowHighlight) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_undimmedBackgroundColor) = 0;
  v11 = (v1 + OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaultContentInsets);
  v12 = *(MEMORY[0x277D768C8] + 16);
  *v11 = *MEMORY[0x277D768C8];
  v11[1] = v12;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD501C4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v3 = 1;
        }

        else
        {
          v3 = 2;
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else if (a2 > 4)
    {
      if (a2 == 5)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }
    }

    else if (a2 == 3)
    {
      v3 = 3;
    }

    else
    {
      v3 = 5;
    }

    return MEMORY[0x20F2F58E0](v3);
  }

  else
  {
    MEMORY[0x20F2F58E0](4);
    return sub_20C13E194();
  }
}

uint64_t sub_20BD50270()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_20C13E164();
  sub_20BD501C4(v4, v1 | (v2 << 32));
  return sub_20C13E1B4();
}

uint64_t sub_20BD502E4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_20C13E164();
  sub_20BD501C4(v4, v1 | (v2 << 32));
  return sub_20C13E1B4();
}

unint64_t sub_20BD5036C()
{
  result = qword_27C76E890;
  if (!qword_27C76E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E890);
  }

  return result;
}

BOOL sub_20BD503C0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return (a2 & 0x100000000) != 0 && a2 == 1;
        }

        else
        {
          return (a2 & 0x100000000) != 0 && a2 == 2;
        }
      }

      else
      {
        return (a2 & 0x100000000) != 0 && !a2;
      }
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        return (a2 & 0x100000000) != 0 && a2 == 5;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 5;
      }
    }

    else if (a1 == 3)
    {
      return (a2 & 0x100000000) != 0 && a2 == 3;
    }

    else
    {
      return (a2 & 0x100000000) != 0 && a2 == 4;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return *&a1 == *&a2;
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadingEntryProgress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadingEntryProgress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_20BD504FC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BD50518(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

char *sub_20BD50548(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_metadataEntriesView;
  type metadata accessor for MetadataEntriesView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for MetadataEntryCell();
  v13 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_metadataEntriesView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_metadataEntriesView];
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = &v15[OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_actionHandler];
  v18 = *&v15[OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_actionHandler];
  *v17 = sub_20BD517E8;
  v17[1] = v16;
  v19 = v13;
  v20 = v15;
  sub_20B583ECC(v18);

  v21 = [v19 contentView];
  [v21 addSubview_];

  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14FE90;
  v24 = [*&v13[v14] leadingAnchor];
  v25 = [v19 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v23 + 32) = v27;
  v28 = [*&v13[v14] trailingAnchor];
  v29 = [v19 contentView];
  v30 = [v29 trailingAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v23 + 40) = v31;
  v32 = [*&v13[v14] topAnchor];
  v33 = [v19 contentView];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v23 + 48) = v35;
  v36 = [*&v13[v14] bottomAnchor];
  v37 = [v19 contentView];

  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor_];

  *(v23 + 56) = v39;
  sub_20B5E29D0();
  v40 = sub_20C13CC54();

  [v22 activateConstraints_];

  return v19;
}

uint64_t sub_20BD50974(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MetadataAction();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B60E378(a1, v16, type metadata accessor for MetadataAction);
  sub_20B60E3E0(v16, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_20B60E378(v13, v10, type metadata accessor for MetadataEntry);
    v19 = swift_storeEnumTagMultiPayload();
    *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
    *(&v26 - 4) = 0;
    *(&v26 - 24) = 1;
    *(&v26 - 2) = v10;
    *(&v26 - 1) = v18;
    v21 = [*(v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v21)
    {
      v22 = v21;
      sub_20C1331E4();

      sub_20C0C1CDC(v7, sub_20B5E27BC);
      swift_unknownObjectRelease();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_20B60E444(v13, type metadata accessor for MetadataEntry);
    v23 = type metadata accessor for ShelfItemAction;
    v24 = v10;
  }

  else
  {
    v23 = type metadata accessor for MetadataEntry;
    v24 = v13;
  }

  return sub_20B60E444(v24, v23);
}

id sub_20BD50F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataEntryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MetadataEntryCell()
{
  result = qword_27C76E8A8;
  if (!qword_27C76E8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD5105C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD51104(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD51150@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD511A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BD5120C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetadataEntry();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762958);
  MEMORY[0x28223BE20](v11);
  v13 = (&v59 - v12);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x24)
  {
    v62 = v3;
    sub_20C13B534();

    v21 = v1;
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63[0] = v26;
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2082;
      v63[3] = a1;
      v27 = sub_20B5F66D0();
      v28 = v21;
      v29 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v27);
      v31 = sub_20B51E694(v29, v30, v63);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_20B517000, v22, v23, "Attempted to configure %{public}@ with item: %{public}s", v24, 0x16u);
      sub_20B520158(v25, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v24, -1, -1);
    }

    (*(v4 + 8))(v6, v62);
    return;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI17MetadataEntryCell_metadataEntriesView];
  v16 = *(v14 + 16);
  v61 = OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_currentEntries;
  v62 = v14;
  if (v16 == *(*&v15[OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_currentEntries] + 16))
  {
    v60 = v15;
    if (!v16)
    {
LABEL_51:

      return;
    }

    v59 = v7;
    v17 = 0;
    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v19 = *(v8 + 72);
    v20 = v62 + v18;
    while (1)
    {
      v34 = (v13 + *(v11 + 48));
      *v13 = v17;
      sub_20B60E378(v62 + v18, v34, type metadata accessor for MetadataEntry);
      v35 = *&v15[v61];
      if (v17 >= *(v35 + 16))
      {
        __break(1u);
        return;
      }

      v37 = v34[1];
      v36 = v34[2];
      v38 = v34[3];
      v39 = v35 + v18;
      v41 = *(v35 + v18 + 8);
      v40 = *(v39 + 16);
      v42 = *(v39 + 24);
      v43 = v41 >> 62;
      if (v37 >> 62)
      {
        if (v37 >> 62 != 1)
        {
          if (v37 == 0x8000000000000000 && (v38 | v36) == 0)
          {
            if (v43 != 2 || v41 != 0x8000000000000000 || (v42 | v40) != 0)
            {
LABEL_52:
              sub_20B520158(v13, &qword_27C762958);
              goto LABEL_53;
            }
          }

          else if (v43 != 2 || v41 != 0x8000000000000001 || (v42 | v40) != 0)
          {
            goto LABEL_52;
          }

          goto LABEL_41;
        }

        if (v43 != 1)
        {
          goto LABEL_52;
        }
      }

      else if (v43)
      {
        goto LABEL_52;
      }

      if ((v41 ^ v37))
      {
        goto LABEL_52;
      }

      if (v36 != v40 || v38 != v42)
      {
        v45 = sub_20C13DFF4();
        sub_20B520158(v13, &qword_27C762958);
        if ((v45 & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_42;
      }

LABEL_41:
      sub_20B520158(v13, &qword_27C762958);
LABEL_42:
      ++v17;
      v18 += v19;
      if (v16 == v17)
      {
        v49 = *(v62 + 16);
        if (!v49)
        {
          goto LABEL_51;
        }

        v50 = *(v59 + 28);
        v51 = OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_currentViews;
        v52 = v60;
        swift_beginAccess();
        do
        {
          sub_20B60E378(v20, v10, type metadata accessor for MetadataEntry);
          v55 = *&v52[v51];
          if (*(v55 + 16))
          {

            v56 = sub_20B65AAD8(&v10[v50]);
            if (v57)
            {
              v53 = *(*(v55 + 56) + 16 * v56 + 8);
              swift_unknownObjectRetain();

              ObjectType = swift_getObjectType();
              (*(v53 + 16))(v10, ObjectType, v53);
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          sub_20B60E444(v10, type metadata accessor for MetadataEntry);
          v20 += v19;
          --v49;
        }

        while (v49);

        return;
      }
    }
  }

  v58 = v15;
LABEL_53:
  sub_20C0FF5A0(v62);
}

void *sub_20BD517F0(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  [v4 setContentInset_];
  [v4 setTextContainerInset_];
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x277D768C8], v5), vceqq_f64(*(MEMORY[0x277D768C8] + 16), v6)))))
  {
    v7 = [v4 textContainer];
    [v7 setLineFragmentPadding_];
  }

  return v4;
}

void *sub_20BD518BC()
{
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setTextColor_];
  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v3 = [v0 layer];
    v4 = [objc_opt_self() kCAFilterPlusL];
    if (!v4)
    {
      sub_20C13C954();
      v4 = sub_20C13C914();
    }

    [v3 setCompositingFilter_];
  }

  return v0;
}

uint64_t sub_20BD519D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20C13C4B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_20C13C4F4();
  v11 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v14 = sub_20C13D3A4();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  aBlock[4] = sub_20BD51F7C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_124;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_20C13C4D4();
  v19[1] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19[0]);
}

uint64_t sub_20BD51C78(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C13C4B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13C4F4();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.8 alpha:0.6];
  v14 = [a1 applyBlurWithRadius:v13 tintColor:0 saturationDeltaFactor:8.0 maskImage:1.8];

  sub_20B5E2E18();
  v15 = sub_20C13D374();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v14;
  aBlock[4] = sub_20BD51F88;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_6_4;
  v17 = _Block_copy(aBlock);

  v18 = v14;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v12, v9, v17);
  _Block_release(v17);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

char *TVBrowsingNavigationController.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_purchaseCoordinator;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_bag] = v31;
  v5 = [objc_allocWithZone(type metadata accessor for PlaceholderViewController()) init];
  v6 = OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_placeholderViewController;
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_placeholderViewController] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E900);
  sub_20C133AA4();
  sub_20B51C710(&v31, &v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_engagementPresentationCoordinator]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v7 = *(&v31 + 1);
  v8 = &v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_eventHub];
  *v8 = v31;
  *(v8 + 1) = v7;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_subscriptionToken] = sub_20C13A914();
  v9 = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_dynamicOfferCoordinator] = v9;
  v10 = objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator());
  v11 = v9;
  v12 = [v10 init];
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_webUserInterfaceCoordinator] = v12;
  v13 = objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler());
  v14 = v12;
  v15 = [v13 init];
  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_purchaseHandler] = v15;
  *&v15[OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8] = *(v8 + 1);
  swift_unknownObjectWeakAssign();
  v16 = objc_allocWithZone(type metadata accessor for PictureInPicturePresenter());

  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_pictureInPicturePresenter] = PictureInPicturePresenter.init(dependencies:)(v17);
  type metadata accessor for TVWorkoutPlanHandoffPresenter();
  swift_allocObject();

  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_workoutPlanHandoffPresenter] = sub_20BD73D80();
  type metadata accessor for TVWorkoutPlanRepetitionPresenter();
  swift_allocObject();

  v19 = sub_20BB1DAAC(v18);

  *&v2[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_workoutPlanRepetitionPresenter] = v19;
  v20 = *&v2[v6];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TVBrowsingNavigationController();
  v21 = objc_msgSendSuper2(&v30, sel_initWithRootViewController_, v20);
  [v21 setNavigationBarHidden:1 animated:1];
  sub_20B51CC64(v21 + OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_engagementPresentationCoordinator, &v31);
  v22 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  v23 = *(v22 + 64);
  v24 = v21;
  v23();

  __swift_destroy_boxed_opaque_existential_1(&v31);
  v25 = OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  v26 = &v24[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_eventHub];
  *(*&v24[v25] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *&v24[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v27 = OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_purchaseHandler;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v11[OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8] = *(v26 + 1);
  swift_unknownObjectWeakAssign();
  v28 = *&v24[v27];

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v24;
}

id sub_20BD5255C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TVBrowsingNavigationController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_pictureInPicturePresenter] + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  *(v1 + 8) = &protocol witness table for TVBrowsingNavigationController;
  swift_unknownObjectWeakAssign();
  *(*&v0[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_workoutPlanHandoffPresenter] + 24) = &off_2822E2D10;
  swift_unknownObjectWeakAssign();
  *(*&v0[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_workoutPlanRepetitionPresenter] + 24) = &off_2822E2D30;
  swift_unknownObjectWeakAssign();
  return [*(*&v0[OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_placeholderViewController] + OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator) startAnimating];
}

id TVBrowsingNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id TVBrowsingNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id TVBrowsingNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVBrowsingNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVBrowsingNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TVBrowsingNavigationController.attachViewController(_:)(void *a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  return _s9SeymourUI09PictureInC9PresenterC20attachViewControlleryyAA0cdC10Supporting_pF_0(a1, a2);
}

uint64_t TVBrowsingNavigationController.presentPictureInPictureSupportingViewController(_:animated:completion:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = *(v6 + OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_pictureInPicturePresenter);
  v20 = sub_20C13CDF4();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v19;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a1;
  *(v21 + 64) = a2;
  *(v21 + 72) = a3;
  v22 = v19;
  sub_20B584050(a4);
  v23 = a1;
  sub_20B6383D0(0, 0, v14, &unk_20C17DE80, v21);
}

id sub_20BD52DBC(void *a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  return _s9SeymourUI09PictureInC9PresenterC20attachViewControlleryyAA0cdC10Supporting_pF_0(a1, a2);
}

void sub_20BD52EE4()
{
  v1 = v0;
  v2 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
  v3 = objc_allocWithZone(type metadata accessor for TVWorkoutPlanHandoffViewController());

  v4 = sub_20C0D985C();
  [v2 setContentViewController_];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_20BD543BC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B762A80;
  v8[3] = &block_descriptor_18_2;
  v6 = _Block_copy(v8);

  v7 = [objc_opt_self() actionWithTitle:0 style:1 handler:v6];
  _Block_release(v6);

  [v2 addAction_];

  [v1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_20BD530AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_20C13CDA4();
  v2[5] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_20BD53148, v4, v3);
}

uint64_t sub_20BD53148()
{
  v1 = [*(v0 + 24) presentedViewController];
  *(v0 + 64) = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_10:

    goto LABEL_14;
  }

  v4 = [v3 contentViewController];
  *(v0 + 72) = v4;
  if (v4)
  {
    v5 = v4;
    type metadata accessor for TVWorkoutPlanHandoffViewController();
    v6 = swift_dynamicCastClass();
    *(v0 + 80) = v6;
    if (v6)
    {
      *(v0 + 88) = sub_20C13CD94();
      v8 = sub_20C13CD24();
      *(v0 + 96) = v8;
      *(v0 + 104) = v7;

      return MEMORY[0x2822009F8](sub_20BD532C4, v8, v7);
    }
  }

LABEL_14:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20BD532C4()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_20BD53368;
  v2 = *(v0 + 16);

  return sub_20B71F8A4(v2);
}

uint64_t sub_20BD53368()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_20BD53488, v3, v2);
}

uint64_t sub_20BD53488()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_20BD534EC, v1, v2);
}

uint64_t sub_20BD534EC()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BD53558()
{
  v1[2] = v0;
  v1[3] = sub_20C13CDA4();
  v1[4] = sub_20C13CD94();
  v3 = sub_20C13CD24();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_20BD535F4, v3, v2);
}

uint64_t sub_20BD535F4()
{
  v1 = [*(v0 + 16) presentedViewController];
  *(v0 + 56) = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_10:

    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v3 contentViewController];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for TVWorkoutPlanHandoffViewController();
    if (swift_dynamicCastClass())
    {

      *(v0 + 64) = sub_20C13CD94();
      v7 = swift_task_alloc();
      *(v0 + 72) = v7;
      *(v7 + 16) = v4;
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v8[1] = sub_20BD537E0;

      return MEMORY[0x2822007B8]();
    }
  }

LABEL_14:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20BD537E0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_20BD53940, v3, v2);
}

uint64_t sub_20BD53940()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20BD539AC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E940);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20BC3BAC4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_125;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_20BD53B60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_20C13CDF4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13CDA4();

  v5 = sub_20C13CD94();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_20B6380FC(0, 0, v2, &unk_20C17BD80, v6);
}

uint64_t sub_20BD53CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20BD53D4C, v6, v5);
}

uint64_t sub_20BD53D4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_workoutPlanRepetitionPresenter);
    v2 = Strong;

    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_20BD53E70;

    return sub_20BB18918(0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_20BD53E70()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20BCD6678, v3, v2);
}

void sub_20BD53FB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_20BB1D3F8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_20BD54068()
{
  v1 = sub_20C13C914();
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_20C13C914();
  v8[4] = sub_20BD542DC;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B762A80;
  v8[3] = &block_descriptor_23_0;
  v6 = _Block_copy(v8);

  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];
  _Block_release(v6);

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_20BD542F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BD53CB4(a1, v4, v5, v6);
}

uint64_t sub_20BD543C0(void *a1)
{
  [objc_msgSend(a1 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  if (v3 < 350.0)
  {
    return 0;
  }

  if (v3 < 480.0)
  {
    return 1;
  }

  if (v3 >= 568.0)
  {
    return 3;
  }

  return 2;
}

id UIView.forAutoLayout()()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];

  return v2;
}

id UIView.incompressible()(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v2) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v2];

  return v4;
}

id UIView.withCompressionResistancePriority(_:forAxis:)(uint64_t a1)
{
  [v1 setContentCompressionResistancePriority:a1 forAxis:?];

  return v3;
}

id UIView.withTintColor(_:)(uint64_t a1)
{
  [v1 setTintColor_];

  return v3;
}

id UIView.withLayerCornerRadius(_:)(double a1)
{
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  [v5 setClipsToBounds_];

  return v5;
}

id UIView.incompressibleForAxis(_:)(uint64_t a1, double a2)
{
  LODWORD(a2) = 1148846080;
  [v2 setContentCompressionResistancePriority:a1 forAxis:a2];

  return v4;
}

id UIView.withContentHuggingPriority(_:forAxis:)(uint64_t a1)
{
  [v1 setContentHuggingPriority:a1 forAxis:?];

  return v3;
}

id UIView.withBackgroundColor(_:)(uint64_t a1)
{
  [v1 setBackgroundColor_];

  return v3;
}

id UIView.withAlpha(_:)()
{
  [v0 setAlpha_];

  return v2;
}

id UIView.withClipsToBounds(_:)(char a1)
{
  [v1 setClipsToBounds_];

  return v3;
}

id UIView.withBorderColor(_:width:)(void *a1, double a2)
{
  v5 = [v2 layer];
  v6 = [a1 CGColor];
  [v5 setBorderColor_];

  v7 = [v9 layer];
  [v7 setBorderWidth_];

  return v9;
}

id UIView.tightlyHuggingContent()(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  LODWORD(v2) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v2];

  return v4;
}

id UIView.withAccessibilityIdentifier(_:)()
{
  v0 = sub_20C13C914();
  [v2 setAccessibilityIdentifier_];

  return v2;
}

id UIView.withCornerCurve(_:)(uint64_t a1)
{
  v3 = [v1 layer];
  [v3 setCornerCurve_];

  return v5;
}

id UIView.withContinousCornerRadius(_:)()
{
  [v0 smu_setContinuousCornerRadius_];

  return v2;
}

id UIView.forGlass(_:smoothness:)(uint64_t a1)
{
  v2 = sub_20C13C0B4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9[3] = sub_20C13C0D4();
  v9[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_20C13C0E4();
  sub_20C13D564();
  v6 = v8;

  return v6;
}

id UIView.withUserInteractionEnabled(_:)(char a1)
{
  [v1 setUserInteractionEnabled_];

  return v3;
}

id UIView.withCompositingFilter(_:)(uint64_t a1)
{
  v1 = sub_20BD54E84(a1);

  return v1;
}

id UIView.withFixedContentSizeCategory(_:)(uint64_t a1)
{
  [v1 setMinimumContentSizeCategory_];
  [v4 setMaximumContentSizeCategory_];

  return v4;
}

id UIView.withMaximumContentSizeCategory(_:)(uint64_t a1)
{
  [v1 setMaximumContentSizeCategory_];

  return v3;
}

id UIView.withIsOpaque(_:)(char a1)
{
  [v1 setOpaque_];

  return v3;
}

id UIView.withShouldRasterize(_:)(char a1)
{
  v3 = [v1 layer];
  [v3 setShouldRasterize_];

  return v5;
}

id UIView.tightlyHuggingContentForAxis(_:)(uint64_t a1, double a2)
{
  LODWORD(a2) = 1148846080;
  [v2 setContentHuggingPriority:a1 forAxis:a2];

  return v4;
}

void *sub_20BD54D68()
{
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setTintColor_];
  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v3 = [v0 layer];
    v4 = [objc_opt_self() kCAFilterPlusL];
    if (!v4)
    {
      sub_20C13C954();
      v4 = sub_20C13C914();
    }

    [v3 setCompositingFilter_];
  }

  return v0;
}

void *sub_20BD54E84(uint64_t a1)
{
  v3 = [v1 layer];
  sub_20B68E264(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_20C13DFD4();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter_];

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_20BD54FF0(void (*a1)(void), uint64_t *a2)
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000016, 0x800000020C1AFD40);
  a1(0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](32, 0xE100000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD55154()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000016, 0x800000020C1AFD40);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](32, 0xE100000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD552A0()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000016, 0x800000020C1AFD40);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](32, 0xE100000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD553F4()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000016, 0x800000020C1AFD40);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](32, 0xE100000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BD55564@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BD6CD98();
  *a1 = result;
  return result;
}

void sub_20BD55594(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7261426E727562;
  v5 = 0xE300000000000000;
  v6 = 7172210;
  if (v2 != 6)
  {
    v6 = 7172211;
    v5 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7363697274656DLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000020C191AD0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006B6C61;
  v10 = 0x57656E696C636E69;
  if (v2 != 2)
  {
    v10 = 0x7469736E65746E69;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = 0x52656E696C636E69;
    v3 = 0xEA00000000006E75;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_20BD556FC()
{
  sub_20BD69BC0();
  sub_20BD6A5E4();
  swift_getObjectType();
  sub_20C13A874();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20BD6B8AC();
  return sub_20BD6AD14();
}

uint64_t sub_20BD557E4(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t (*a10)(void, __n128), uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(char *, uint64_t))
{
  v15 = v14;
  v209 = a8;
  v211 = a7;
  v214 = a6;
  v216 = a5;
  v213 = a4;
  v215 = a3;
  v218 = a2;
  v235 = a1;
  v228 = a14;
  v210 = a13;
  v207 = a12;
  v208 = a9;
  v206 = a11;
  v233 = sub_20C13BB84();
  v16 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v236 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v203 = &v191 - v19;
  MEMORY[0x28223BE20](v20);
  v204 = &v191 - v21;
  MEMORY[0x28223BE20](v22);
  v200 = &v191 - v23;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E990);
  MEMORY[0x28223BE20](v225);
  v196 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v195 = (&v191 - v26);
  MEMORY[0x28223BE20](v27);
  v238 = &v191 - v28;
  MEMORY[0x28223BE20](v29);
  v224 = (&v191 - v30);
  MEMORY[0x28223BE20](v31);
  v193 = &v191 - v32;
  v34 = MEMORY[0x28223BE20](v33);
  v202 = (&v191 - v35);
  v237 = a10(0, v34);
  v36 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v194 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v221 = &v191 - v39;
  v205 = v40;
  MEMORY[0x28223BE20](v41);
  v234 = &v191 - v42;
  v43 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v44 = *(v43 - 1);
  MEMORY[0x28223BE20](v43);
  v227 = (&v191 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v48 = &v191 - v47;
  MEMORY[0x28223BE20](v49);
  v197 = &v191 - v50;
  MEMORY[0x28223BE20](v51);
  v212 = &v191 - v52;
  MEMORY[0x28223BE20](v53);
  v220 = &v191 - v54;
  result = swift_beginAccess();
  v56 = 0;
  v217 = v36;
  v57 = (v36 + 16);
  v232 = (v16 + 8);
  v199 = 0x800000020C191AD0;
  v239 = v44;
  v198 = (v44 + 48);
  LODWORD(v219) = 1;
  v58 = byte_28228E178;
  *&v59 = 141558786;
  v222 = v59;
  *&v59 = 141559042;
  v201 = v59;
  v223 = v15;
  v231 = (v36 + 16);
  v229 = v43;
  v230 = v48;
  while (2)
  {
    if (v56 <= 8)
    {
      v60 = 8;
    }

    else
    {
      v60 = v56;
    }

    v61 = v56;
    v226 = v60;
    while (1)
    {
      if (v60 == v61)
      {
        __break(1u);
        goto LABEL_78;
      }

      v62 = v15[7];
      if (*(v62 + 16))
      {
        break;
      }

LABEL_7:
      if (++v61 == 8)
      {
        goto LABEL_47;
      }
    }

    v63 = byte_28228E178[v61 + 32];

    v64 = sub_20B65B078(v63);
    if ((v65 & 1) == 0)
    {

      goto LABEL_7;
    }

    v66 = v15;
    v67 = v227;
    sub_20BA15784(*(v62 + 56) + *(v239 + 72) * v64, v227);

    sub_20BC49548(v67, v48);
    v68 = &v48[v43[5]];
    v69 = type metadata accessor for SessionEventPresentationCoordinator();
    v70 = *(v68 + 3);
    v71 = *(v68 + 4);
    v72 = __swift_project_boxed_opaque_existential_1(v68, v70);
    v73 = *(v71 + 8);
    v74 = v57;
    v75 = v235;
    v76 = v237;
    v77 = sub_20BFEABCC(v72, v235, v69, v70, v237, v73, v228);
    sub_20B51CC64(v68, &v241);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
    v78 = sub_20C13C9D4();
    v56 = v79;
    (*v74)(v234, v75, v76);
    v80 = sub_20C13C9D4();
    v82 = v81;
    if (!v77)
    {
      v83 = v236;
      sub_20C13B4A4();

      v84 = sub_20C13BB74();
      v85 = sub_20C13D1F4();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v241 = v87;
        *v86 = v222;
        *(v86 + 4) = 1752392040;
        *(v86 + 12) = 2080;
        v88 = sub_20B51E694(v78, v56, &v241);

        *(v86 + 14) = v88;
        *(v86 + 22) = 2160;
        *(v86 + 24) = 1752392040;
        v89 = v232;
        *(v86 + 32) = 2080;
        v56 = sub_20B51E694(v80, v82, &v241);

        *(v86 + 34) = v56;
        _os_log_impl(&dword_20B517000, v84, v85, "show both currentEvent: %{mask.hash}s and incomingEvent: %{mask.hash}s", v86, 0x2Au);
        swift_arrayDestroy();
        v15 = v223;
        MEMORY[0x20F2F6A40](v87, -1, -1);
        MEMORY[0x20F2F6A40](v86, -1, -1);

        (*v89)(v236, v233);
        v57 = v231;
        v43 = v229;
      }

      else
      {

        (*v232)(v83, v233);
        v57 = v231;
        v43 = v229;
        v15 = v66;
      }

      v48 = v230;
      result = sub_20BD6D070(v230, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v58 = byte_28228E178;
      v60 = v226;
      goto LABEL_7;
    }

    if (v77 != 1)
    {
      v90 = v203;
      sub_20C13B4A4();

      v91 = sub_20C13BB74();
      v92 = sub_20C13D1F4();

      LODWORD(v226) = v92;
      v93 = os_log_type_enabled(v91, v92);
      v43 = v229;
      if (v93)
      {
        v219 = v91;
        v94 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v241 = v192;
        *v94 = v201;
        *(v94 + 4) = 1752392040;
        *(v94 + 12) = 2080;
        v95 = sub_20B51E694(v80, v82, &v241);

        *(v94 + 14) = v95;
        *(v94 + 22) = 2160;
        *(v94 + 24) = 1752392040;
        *(v94 + 32) = 2080;
        v96 = sub_20B51E694(v78, v56, &v241);

        *(v94 + 34) = v96;
        *(v94 + 42) = 2082;
        v97 = 7172211;
        if (v218 == 6)
        {
          v97 = 7172210;
        }

        v98 = 0xE300000000000000;
        v99 = 0x7363697274656DLL;
        if (v218 != 4)
        {
          v99 = 0xD000000000000013;
        }

        v100 = v199;
        v101 = 0xE700000000000000;
        if (v218 == 4)
        {
          v100 = 0xE700000000000000;
        }

        if (v218 <= 5u)
        {
          v97 = v99;
          v98 = v100;
        }

        v102 = 0x57656E696C636E69;
        if (v218 != 2)
        {
          v102 = 0x7469736E65746E69;
        }

        v103 = 0xEB000000006B6C61;
        if (v218 != 2)
        {
          v103 = 0xE900000000000079;
        }

        v104 = 0x7261426E727562;
        if (v218)
        {
          v104 = 0x52656E696C636E69;
          v101 = 0xEA00000000006E75;
        }

        if (v218 <= 1u)
        {
          v102 = v104;
          v103 = v101;
        }

        if (v218 <= 3u)
        {
          v105 = v102;
        }

        else
        {
          v105 = v97;
        }

        if (v218 <= 3u)
        {
          v106 = v103;
        }

        else
        {
          v106 = v98;
        }

        v107 = sub_20B51E694(v105, v106, &v241);

        *(v94 + 44) = v107;
        v108 = v219;
        _os_log_impl(&dword_20B517000, v219, v226, "queue incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s queueType:%{public}s", v94, 0x34u);
        v109 = v192;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v109, -1, -1);
        MEMORY[0x20F2F6A40](v94, -1, -1);

        (*v232)(v203, v233);
      }

      else
      {

        (*v232)(v90, v233);
      }

      v57 = v231;
      v15 = v66;
      v48 = v230;
      v56 = v61 + 1;
      if ((sub_20B968530(v63, v218) & 1) == 0)
      {
        v110 = sub_20BD556AC();
        v111 = sub_20BC48284(&v240, v63);
        if (!(*v198)(v112, 1, v43))
        {
          sub_20B704C50(v242, v218);
        }

        (v111)(&v240, 0);
        (v110)(&v241, 0);
      }

      result = sub_20BD6D070(v48, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      LODWORD(v219) = 0;
      v58 = byte_28228E178;
      if (v61 == 7)
      {
LABEL_47:
        v113 = 1;
        v114 = v214;
        if (v213)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v176 = v204;
  sub_20C13B4A4();

  v177 = sub_20C13BB74();
  v178 = sub_20C13D1F4();

  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v241 = v180;
    *v179 = v222;
    *(v179 + 4) = 1752392040;
    *(v179 + 12) = 2080;
    v181 = sub_20B51E694(v80, v82, &v241);

    *(v179 + 14) = v181;
    *(v179 + 22) = 2160;
    *(v179 + 24) = 1752392040;
    v182 = v232;
    *(v179 + 32) = 2080;
    v66 = v223;
    v183 = sub_20B51E694(v78, v56, &v241);

    *(v179 + 34) = v183;
    _os_log_impl(&dword_20B517000, v177, v178, "suppress incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s", v179, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v180, -1, -1);
    MEMORY[0x20F2F6A40](v179, -1, -1);

    (*v182)(v204, v233);
  }

  else
  {

    (*v232)(v176, v233);
  }

  v43 = v229;
  v114 = v214;
  v184 = v213;
  result = sub_20BD6D070(v230, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
  LODWORD(v219) = 0;
  v113 = 0;
  v15 = v66;
  if (v184)
  {
LABEL_48:
    v215 = v15[2];
  }

LABEL_49:
  v115 = v237;
  v116 = v217;
  if (v114)
  {
    v216 = v15[3];
  }

  if (!v113)
  {
    goto LABEL_74;
  }

  v117 = v220;
  v118 = (v220 + v43[5]);
  v119 = v206;
  v118[3] = v237;
  v118[4] = v119;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v118);
  v121 = *(v116 + 16);
  v122 = v235;
  v121(boxed_opaque_existential_1, v235, v115);
  v123 = swift_allocObject();
  swift_weakInit();
  v124 = v234;
  v230 = v121;
  v121(v234, v122, v115);
  v125 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v126 = (v205 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v236 = ((v126 + 31) & 0xFFFFFFFFFFFFFFF8);
  v127 = swift_allocObject();
  (*(v116 + 32))(v127 + v125, v124, v237);
  *(v127 + v126) = v215;
  v128 = v127 + ((v126 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v128 = v209;
  *(v128 + 8) = v208 & 1;
  v129 = &v236[v127];
  *v129 = v123;
  v130 = v218;
  v129[8] = v218;
  *(v127 + ((v126 + 47) & 0xFFFFFFFFFFFFFFF8)) = v216;
  v131 = sub_20C132E94();
  (*(*(v131 - 8) + 16))(v117, v211, v131);
  *(v117 + v43[6]) = MEMORY[0x277D84FA0];
  v132 = (v117 + v43[7]);
  *v132 = v210;
  v132[1] = v127;
  v133 = v223[8];
  if (!*(v133 + 16))
  {
LABEL_81:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  v134 = sub_20B65B078(v130);
  v56 = v225;
  if ((v135 & 1) == 0)
  {

    goto LABEL_81;
  }

  v136 = *(*(v133 + 56) + 8 * v134);

  swift_beginAccess();
  v236 = v136;
  v58 = *(v136 + 2);
  v137 = v58[2];

  if (v137)
  {
    v138 = 0;
    while (v138 < v58[2])
    {
      v139 = v58 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v138;
      v140 = *(v56 + 48);
      v141 = v224;
      *v224 = v138;
      sub_20BA15784(v139, v141 + v140);
      v142 = v141;
      v143 = v238;
      sub_20B5DF134(v142, v238, &qword_27C76E990);
      v144 = v143 + *(v56 + 48);
      v145 = v43[5];
      sub_20B51CC64(v144 + v145, &v241);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&v240);
        sub_20B51CC64(v144 + v145, &v241);
        if (swift_dynamicCast())
        {
          v146 = *(v217 + 8);
          v147 = v237;
          v217 += 8;
          v228 = v146;
          v146(v221, v237);

          v148 = v193;
          sub_20B5DF134(v238, v193, &qword_27C76E990);
          v149 = v148;
          v150 = v202;
          sub_20B5DF134(v149, v202, &qword_27C76E990);
          v151 = v195;
          sub_20B52F9E8(v150, v195, &qword_27C76E990);
          v152 = v225;
          v153 = v151 + *(v225 + 48);
          sub_20B51CC64(v153 + v43[5], &v241);
          sub_20BD6D070(v153, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
          v229 = sub_20C13C9D4();
          v155 = v154;
          v156 = v200;
          sub_20C13B4A4();
          v157 = v150;
          v158 = v196;
          sub_20B52F9E8(v157, v196, &qword_27C76E990);
          v159 = v194;
          v160 = v147;
          v161 = v230;
          (v230)(v194, v235, v160);

          v162 = sub_20C13BB74();
          v163 = sub_20C13D1F4();

          LODWORD(v238) = v163;
          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            v227 = v162;
            v165 = v164;
            v235 = swift_slowAlloc();
            v241 = v235;
            *v165 = v201;
            *(v165 + 4) = 1752392040;
            *(v165 + 12) = 2080;
            v166 = sub_20B51E694(v229, v155, &v241);

            *(v165 + 14) = v166;
            *(v165 + 22) = 2050;
            sub_20B52F9E8(v158, v151, &qword_27C76E990);
            v167 = v161;
            v168 = *v151;
            sub_20BD6D070(v151 + *(v152 + 48), type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
            sub_20B520158(v158, &qword_27C76E990);
            *(v165 + 24) = v168;
            *(v165 + 32) = 2160;
            *(v165 + 34) = 1752392040;
            *(v165 + 42) = 2080;
            v169 = v237;
            v167(v234, v159, v237);
            v170 = sub_20C13C9D4();
            v172 = v171;
            v228(v159, v169);
            v173 = sub_20B51E694(v170, v172, &v241);

            *(v165 + 44) = v173;
            v174 = v227;
            _os_log_impl(&dword_20B517000, v227, v238, "Removing replaceable event: %{mask.hash}s at %{public}ld with: %{mask.hash}s", v165, 0x34u);
            v175 = v235;
            swift_arrayDestroy();
            MEMORY[0x20F2F6A40](v175, -1, -1);
            MEMORY[0x20F2F6A40](v165, -1, -1);

            (*v232)(v200, v233);
          }

          else
          {
            sub_20B520158(v158, &qword_27C76E990);

            v228(v159, v237);
            (*v232)(v156, v233);
          }

          v185 = v202;
          v186 = *v202;
          v56 = v236;
          swift_beginAccess();
          v187 = v197;
          sub_20B91F950(v186, v197);
          sub_20BD6D070(v187, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
          swift_endAccess();
          sub_20B520158(v185, &qword_27C76E990);
          goto LABEL_70;
        }
      }

      v56 = v225;
      ++v138;
      sub_20B520158(v238, &qword_27C76E990);
      if (v137 == v138)
      {
        goto LABEL_62;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    v58 = sub_20BC08284(0, v58[2] + 1, 1, v58);
    *(v56 + 16) = v58;
  }

  else
  {
LABEL_62:

    v56 = v236;
LABEL_70:
    sub_20BA15784(v220, v212);
    swift_beginAccess();
    v58 = *(v56 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 16) = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  v190 = v58[2];
  v189 = v58[3];
  if (v190 >= v189 >> 1)
  {
    v58 = sub_20BC08284(v189 > 1, v190 + 1, 1, v58);
  }

  v58[2] = v190 + 1;
  sub_20BC49548(v212, v58 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v190);
  *(v56 + 16) = v58;
  swift_endAccess();
  sub_20BD6D070(v220, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);

LABEL_74:
  if (v219)
  {
    return sub_20BD697BC(v218);
  }

  return result;
}

uint64_t sub_20BD57050(int a1, char a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v175 = a8;
  v177 = a7;
  v179 = a6;
  v176 = a5;
  v178 = a4;
  v180 = a3;
  v174 = a12;
  v173 = a11;
  v191 = sub_20C13BB84();
  v18 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v195 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v170 = &v159 - v21;
  MEMORY[0x28223BE20](v22);
  v171 = &v159 - v23;
  MEMORY[0x28223BE20](v24);
  v166 = &v159 - v25;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E990);
  MEMORY[0x28223BE20](v185);
  v163 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v159 - v28;
  MEMORY[0x28223BE20](v30);
  v196 = (&v159 - v31);
  MEMORY[0x28223BE20](v32);
  v184 = (&v159 - v33);
  MEMORY[0x28223BE20](v34);
  v161 = &v159 - v35;
  MEMORY[0x28223BE20](v36);
  v165 = (&v159 - v37);
  v38 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v39 = *(v38 - 1);
  MEMORY[0x28223BE20](v38);
  v187 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v159 - v42;
  MEMORY[0x28223BE20](v44);
  v164 = &v159 - v45;
  MEMORY[0x28223BE20](v46);
  v172 = &v159 - v47;
  MEMORY[0x28223BE20](v48);
  v182 = &v159 - v49;
  v194 = a1;
  v204[0] = a1;
  v205 = a9;
  v206 = a10;
  v193 = a2 & 1;
  v207 = a2;
  result = swift_beginAccess();
  v51 = 0;
  v190 = (v18 + 8);
  v168 = 0x800000020C191AD0;
  v197 = v39;
  v167 = (v39 + 48);
  v181 = 1;
  v52 = byte_28228E178;
  *&v53 = 141558786;
  v183 = v53;
  *&v53 = 141559042;
  v169 = v53;
  v192 = v13;
  v162 = v29;
  v189 = v38;
  v188 = v43;
  while (2)
  {
    if (v51 <= 8)
    {
      v54 = 8;
    }

    else
    {
      v54 = v51;
    }

    v55 = v51;
    v186 = v54;
    while (1)
    {
      if (v54 == v55)
      {
        __break(1u);
        goto LABEL_79;
      }

      v56 = v13[7];
      if (*(v56 + 16))
      {
        break;
      }

LABEL_7:
      if (++v55 == 8)
      {
        goto LABEL_47;
      }
    }

    v57 = byte_28228E178[v55 + 32];

    v58 = sub_20B65B078(v57);
    if ((v59 & 1) == 0)
    {

      goto LABEL_7;
    }

    v60 = v187;
    sub_20BA15784(*(v56 + 56) + *(v197 + 72) * v58, v187);

    sub_20BC49548(v60, v43);
    v61 = &v43[v38[5]];
    v62 = type metadata accessor for SessionEventPresentationCoordinator();
    v63 = *(v61 + 3);
    v64 = *(v61 + 4);
    v65 = __swift_project_boxed_opaque_existential_1(v61, v63);
    v66 = *(v64 + 8);
    v67 = sub_20B98EF4C();
    v68 = sub_20BFEABCC(v65, v204, v62, v63, &type metadata for SessionBurnBarEvent, v66, v67);
    sub_20B51CC64(v61, &v199);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
    v69 = sub_20C13C9D4();
    v71 = v70;
    LOBYTE(v199) = v194;
    v200 = a9;
    v201 = a10;
    v202 = v193;
    v72 = sub_20C13C9D4();
    v51 = v73;
    if (!v68)
    {
      v29 = v195;
      sub_20C13B4A4();

      v74 = sub_20C13BB74();
      v75 = sub_20C13D1F4();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v199 = v77;
        *v76 = v183;
        v29 = 1752392040;
        *(v76 + 4) = 1752392040;
        *(v76 + 12) = 2080;
        v78 = sub_20B51E694(v69, v71, &v199);

        *(v76 + 14) = v78;
        *(v76 + 22) = 2160;
        *(v76 + 24) = 1752392040;
        *(v76 + 32) = 2080;
        v79 = sub_20B51E694(v72, v51, &v199);

        *(v76 + 34) = v79;
        _os_log_impl(&dword_20B517000, v74, v75, "show both currentEvent: %{mask.hash}s and incomingEvent: %{mask.hash}s", v76, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v77, -1, -1);
        MEMORY[0x20F2F6A40](v76, -1, -1);

        (*v190)(v195, v191);
      }

      else
      {

        (*v190)(v29, v191);
      }

      v13 = v192;
      v38 = v189;
      v43 = v188;
      v52 = byte_28228E178;
      result = sub_20BD6D070(v188, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v54 = v186;
      goto LABEL_7;
    }

    if (v68 != 1)
    {
      v80 = v170;
      sub_20C13B4A4();

      v29 = sub_20C13BB74();
      v81 = sub_20C13D1F4();

      if (os_log_type_enabled(v29, v81))
      {
        v181 = v81;
        v186 = v29;
        v82 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v199 = v160;
        *v82 = v169;
        v29 = 1752392040;
        *(v82 + 4) = 1752392040;
        *(v82 + 12) = 2080;
        v83 = sub_20B51E694(v72, v51, &v199);

        *(v82 + 14) = v83;
        *(v82 + 22) = 2160;
        *(v82 + 24) = 1752392040;
        *(v82 + 32) = 2080;
        v84 = sub_20B51E694(v69, v71, &v199);

        *(v82 + 34) = v84;
        *(v82 + 42) = 2082;
        v85 = 7172211;
        if (v180 == 6)
        {
          v85 = 7172210;
        }

        v86 = 0xE300000000000000;
        v87 = 0x7363697274656DLL;
        if (v180 != 4)
        {
          v87 = 0xD000000000000013;
        }

        v88 = v168;
        v89 = 0xE700000000000000;
        if (v180 == 4)
        {
          v88 = 0xE700000000000000;
        }

        if (v180 <= 5u)
        {
          v85 = v87;
          v86 = v88;
        }

        v90 = 0x57656E696C636E69;
        if (v180 != 2)
        {
          v90 = 0x7469736E65746E69;
        }

        v91 = 0xEB000000006B6C61;
        if (v180 != 2)
        {
          v91 = 0xE900000000000079;
        }

        v92 = 0x7261426E727562;
        if (v180)
        {
          v92 = 0x52656E696C636E69;
          v89 = 0xEA00000000006E75;
        }

        if (v180 <= 1u)
        {
          v90 = v92;
          v91 = v89;
        }

        if (v180 <= 3u)
        {
          v93 = v90;
        }

        else
        {
          v93 = v85;
        }

        if (v180 <= 3u)
        {
          v94 = v91;
        }

        else
        {
          v94 = v86;
        }

        v95 = sub_20B51E694(v93, v94, &v199);

        *(v82 + 44) = v95;
        v96 = v186;
        _os_log_impl(&dword_20B517000, v186, v181, "queue incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s queueType:%{public}s", v82, 0x34u);
        v97 = v160;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v97, -1, -1);
        MEMORY[0x20F2F6A40](v82, -1, -1);

        (*v190)(v170, v191);
      }

      else
      {

        (*v190)(v80, v191);
      }

      v13 = v192;
      v38 = v189;
      v43 = v188;
      v51 = v55 + 1;
      if ((sub_20B968530(v57, v180) & 1) == 0)
      {
        v98 = sub_20BD556AC();
        v99 = sub_20BC48284(&v198, v57);
        if (!(*v167)(v100, 1, v38))
        {
          sub_20B704C50(v203, v180);
        }

        (v99)(&v198, 0);
        (v98)(&v199, 0);
      }

      result = sub_20BD6D070(v43, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v181 = 0;
      v52 = byte_28228E178;
      if (v55 == 7)
      {
LABEL_47:
        v101 = 1;
        v102 = v178;
        v103 = v177;
        if (v176)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v29 = v171;
  sub_20C13B4A4();

  v147 = sub_20C13BB74();
  v148 = sub_20C13D1F4();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v199 = v150;
    *v149 = v183;
    *(v149 + 4) = 1752392040;
    v29 = 2080;
    *(v149 + 12) = 2080;
    v151 = sub_20B51E694(v72, v51, &v199);

    *(v149 + 14) = v151;
    *(v149 + 22) = 2160;
    *(v149 + 24) = 1752392040;
    *(v149 + 32) = 2080;
    v152 = sub_20B51E694(v69, v71, &v199);

    *(v149 + 34) = v152;
    _os_log_impl(&dword_20B517000, v147, v148, "suppress incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s", v149, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v150, -1, -1);
    MEMORY[0x20F2F6A40](v149, -1, -1);

    (*v190)(v171, v191);
  }

  else
  {

    (*v190)(v29, v191);
  }

  v13 = v192;
  v38 = v189;
  v102 = v178;
  v103 = v177;
  v153 = v176;
  result = sub_20BD6D070(v188, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
  v181 = 0;
  v101 = 0;
  if (v153)
  {
LABEL_48:
    v102 = v13[2];
  }

LABEL_49:
  if (v103)
  {
    v179 = v13[3];
    if (!v101)
    {
      goto LABEL_75;
    }

LABEL_53:
    v104 = v182;
    v105 = (v182 + v38[5]);
    v105[3] = &type metadata for SessionBurnBarEvent;
    v105[4] = sub_20BD6D0D0();
    v106 = swift_allocObject();
    *v105 = v106;
    v107 = v194;
    *(v106 + 16) = v194;
    *(v106 + 24) = a9;
    *(v106 + 32) = a10;
    v108 = v193;
    *(v106 + 40) = v193;
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    *(v110 + 16) = v107;
    *(v110 + 24) = a9;
    *(v110 + 32) = a10;
    *(v110 + 40) = v108;
    v111 = v173;
    *(v110 + 48) = v102;
    *(v110 + 56) = v111;
    *(v110 + 64) = v174 & 1;
    *(v110 + 72) = v109;
    v112 = v180;
    *(v110 + 80) = v180;
    *(v110 + 88) = v179;
    v113 = sub_20C132E94();
    (*(*(v113 - 8) + 16))(v104, v175, v113);
    *(v104 + v38[6]) = MEMORY[0x277D84FA0];
    v114 = (v104 + v38[7]);
    *v114 = sub_20BD6D124;
    v114[1] = v110;
    v115 = v13[8];
    if (*(v115 + 16))
    {
      v116 = v38;

      v117 = sub_20B65B078(v112);
      v51 = v185;
      if (v118)
      {
        v119 = *(*(v115 + 56) + 8 * v117);

        swift_beginAccess();
        v195 = v119;
        v52 = *(v119 + 2);
        v120 = v52[2];

        if (!v120)
        {
LABEL_63:

          v51 = v172;
          v29 = v195;
LABEL_71:
          sub_20BA15784(v182, v51);
          swift_beginAccess();
          v52 = *(v29 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v29 + 16) = v52;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_72;
          }

          goto LABEL_80;
        }

        v121 = 0;
        while (v121 < v52[2])
        {
          v122 = v52 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v121;
          v123 = *(v51 + 48);
          v124 = v184;
          *v184 = v121;
          sub_20BA15784(v122, v124 + v123);
          v125 = v124;
          v126 = v196;
          sub_20B5DF134(v125, v196, &qword_27C76E990);
          v127 = v126 + *(v51 + 48);
          v128 = v116[5];
          sub_20B51CC64(&v127[v128], &v199);
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A8);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(&v198);
            sub_20B51CC64(&v127[v128], &v199);
            if (swift_dynamicCast())
            {

              v129 = v161;
              sub_20B5DF134(v196, v161, &qword_27C76E990);
              v130 = v165;
              sub_20B5DF134(v129, v165, &qword_27C76E990);
              v131 = v162;
              sub_20B52F9E8(v130, v162, &qword_27C76E990);
              v132 = v131 + *(v185 + 48);
              sub_20B51CC64(v132 + v116[5], &v199);
              sub_20BD6D070(v132, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
              v133 = sub_20C13C9D4();
              v135 = v134;
              v136 = v166;
              sub_20C13B4A4();
              v137 = v163;
              sub_20B52F9E8(v130, v163, &qword_27C76E990);

              v138 = sub_20C13BB74();
              v139 = sub_20C13D1F4();

              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                v196 = swift_slowAlloc();
                v198 = v196;
                *v140 = v169;
                *(v140 + 4) = 1752392040;
                *(v140 + 12) = 2080;
                v141 = sub_20B51E694(v133, v135, &v198);

                *(v140 + 14) = v141;
                *(v140 + 22) = 2050;
                sub_20B52F9E8(v137, v131, &qword_27C76E990);
                v142 = *v131;
                sub_20BD6D070(v131 + *(v185 + 48), type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
                sub_20B520158(v137, &qword_27C76E990);
                *(v140 + 24) = v142;
                *(v140 + 32) = 2160;
                *(v140 + 34) = 1752392040;
                *(v140 + 42) = 2080;
                LOBYTE(v199) = v194;
                v200 = a9;
                v201 = a10;
                v202 = v193;
                v143 = sub_20C13C9D4();
                v145 = sub_20B51E694(v143, v144, &v198);

                *(v140 + 44) = v145;
                _os_log_impl(&dword_20B517000, v138, v139, "Removing replaceable event: %{mask.hash}s at %{public}ld with: %{mask.hash}s", v140, 0x34u);
                v146 = v196;
                swift_arrayDestroy();
                MEMORY[0x20F2F6A40](v146, -1, -1);
                MEMORY[0x20F2F6A40](v140, -1, -1);
              }

              else
              {
                sub_20B520158(v137, &qword_27C76E990);
              }

              (*v190)(v136, v191);
              v51 = v172;
              v154 = *v130;
              v29 = v195;
              swift_beginAccess();
              v155 = v164;
              sub_20B91F950(v154, v164);
              sub_20BD6D070(v155, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
              swift_endAccess();
              sub_20B520158(v130, &qword_27C76E990);
              goto LABEL_71;
            }
          }

          v51 = v185;
          ++v121;
          sub_20B520158(v196, &qword_27C76E990);
          if (v120 == v121)
          {
            goto LABEL_63;
          }
        }

LABEL_79:
        __break(1u);
LABEL_80:
        v52 = sub_20BC08284(0, v52[2] + 1, 1, v52);
        *(v29 + 16) = v52;
LABEL_72:
        v158 = v52[2];
        v157 = v52[3];
        if (v158 >= v157 >> 1)
        {
          v52 = sub_20BC08284(v157 > 1, v158 + 1, 1, v52);
        }

        v52[2] = v158 + 1;
        sub_20BC49548(v51, v52 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v158);
        *(v29 + 16) = v52;
        swift_endAccess();
        sub_20BD6D070(v182, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);

        goto LABEL_75;
      }
    }

    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if (v101)
  {
    goto LABEL_53;
  }

LABEL_75:
  if (v181)
  {
    return sub_20BD697BC(v180);
  }

  return result;
}

uint64_t sub_20BD58654(int a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, double a10, unsigned __int8 a11)
{
  v12 = v11;
  v170 = a8;
  v171 = a7;
  v173 = a6;
  v175 = a5;
  v172 = a4;
  v174 = a3;
  v176 = a2;
  v169 = a11;
  v187 = sub_20C13BB84();
  v16 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v190 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v166 = &v155 - v19;
  MEMORY[0x28223BE20](v20);
  v167 = &v155 - v21;
  MEMORY[0x28223BE20](v22);
  v162 = &v155 - v23;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E990);
  MEMORY[0x28223BE20](v181);
  v159 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v155 - v26;
  MEMORY[0x28223BE20](v28);
  v191 = (&v155 - v29);
  MEMORY[0x28223BE20](v30);
  v180 = (&v155 - v31);
  MEMORY[0x28223BE20](v32);
  v157 = &v155 - v33;
  MEMORY[0x28223BE20](v34);
  v161 = (&v155 - v35);
  v36 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v37 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v183 = &v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v155 - v40;
  MEMORY[0x28223BE20](v42);
  v160 = &v155 - v43;
  MEMORY[0x28223BE20](v44);
  v168 = &v155 - v45;
  MEMORY[0x28223BE20](v46);
  v178 = &v155 - v47;
  v189 = a1;
  v198[0] = a1;
  v199 = a9;
  v200 = a10;
  result = swift_beginAccess();
  v49 = 0;
  v186 = (v16 + 8);
  v164 = 0x800000020C191AD0;
  v192 = v37;
  v163 = (v37 + 48);
  v177 = 1;
  v50 = byte_28228E178;
  *&v51 = 141558786;
  v179 = v51;
  *&v51 = 141559042;
  v165 = v51;
  v188 = v12;
  v158 = v27;
  v185 = v36;
  v184 = v41;
  while (2)
  {
    if (v49 <= 8)
    {
      v52 = 8;
    }

    else
    {
      v52 = v49;
    }

    v53 = v49;
    v182 = v52;
    while (1)
    {
      if (v52 == v53)
      {
        __break(1u);
        goto LABEL_79;
      }

      v54 = v12[7];
      if (*(v54 + 16))
      {
        break;
      }

LABEL_7:
      if (++v53 == 8)
      {
        goto LABEL_47;
      }
    }

    v55 = byte_28228E178[v53 + 32];

    v56 = sub_20B65B078(v55);
    if ((v57 & 1) == 0)
    {

      goto LABEL_7;
    }

    v58 = v183;
    sub_20BA15784(*(v54 + 56) + *(v192 + 72) * v56, v183);

    sub_20BC49548(v58, v41);
    v59 = &v41[v36[5]];
    v60 = type metadata accessor for SessionEventPresentationCoordinator();
    v61 = *(v59 + 3);
    v62 = *(v59 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v59, v61);
    v64 = *(v62 + 8);
    v65 = sub_20B98EED0();
    v66 = sub_20BFEABCC(v63, v198, v60, v61, &type metadata for SessionBurnBarReadyEvent, v64, v65);
    sub_20B51CC64(v59, &v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
    v67 = sub_20C13C9D4();
    v69 = v68;
    LOBYTE(v194) = v189;
    v195 = a9;
    v196 = a10;
    v70 = sub_20C13C9D4();
    v49 = v71;
    if (!v66)
    {
      v27 = v190;
      sub_20C13B4A4();

      v72 = sub_20C13BB74();
      v73 = sub_20C13D1F4();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v194 = v75;
        *v74 = v179;
        v27 = 1752392040;
        *(v74 + 4) = 1752392040;
        *(v74 + 12) = 2080;
        v76 = sub_20B51E694(v67, v69, &v194);

        *(v74 + 14) = v76;
        *(v74 + 22) = 2160;
        *(v74 + 24) = 1752392040;
        *(v74 + 32) = 2080;
        v77 = sub_20B51E694(v70, v49, &v194);

        *(v74 + 34) = v77;
        _os_log_impl(&dword_20B517000, v72, v73, "show both currentEvent: %{mask.hash}s and incomingEvent: %{mask.hash}s", v74, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v75, -1, -1);
        MEMORY[0x20F2F6A40](v74, -1, -1);

        (*v186)(v190, v187);
      }

      else
      {

        (*v186)(v27, v187);
      }

      v12 = v188;
      v36 = v185;
      v50 = byte_28228E178;
      v41 = v184;
      result = sub_20BD6D070(v184, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v52 = v182;
      goto LABEL_7;
    }

    if (v66 != 1)
    {
      v78 = v166;
      sub_20C13B4A4();

      v27 = sub_20C13BB74();
      v79 = sub_20C13D1F4();

      if (os_log_type_enabled(v27, v79))
      {
        v177 = v79;
        v182 = v27;
        v80 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v194 = v156;
        *v80 = v165;
        v27 = 1752392040;
        *(v80 + 4) = 1752392040;
        *(v80 + 12) = 2080;
        v81 = sub_20B51E694(v70, v49, &v194);

        *(v80 + 14) = v81;
        *(v80 + 22) = 2160;
        *(v80 + 24) = 1752392040;
        *(v80 + 32) = 2080;
        v82 = sub_20B51E694(v67, v69, &v194);

        *(v80 + 34) = v82;
        *(v80 + 42) = 2082;
        v83 = 7172211;
        if (v176 == 6)
        {
          v83 = 7172210;
        }

        v84 = 0xE300000000000000;
        v85 = 0x7363697274656DLL;
        if (v176 != 4)
        {
          v85 = 0xD000000000000013;
        }

        v86 = v164;
        v87 = 0xE700000000000000;
        if (v176 == 4)
        {
          v86 = 0xE700000000000000;
        }

        if (v176 <= 5u)
        {
          v83 = v85;
          v84 = v86;
        }

        v88 = 0x57656E696C636E69;
        if (v176 != 2)
        {
          v88 = 0x7469736E65746E69;
        }

        v89 = 0xEB000000006B6C61;
        if (v176 != 2)
        {
          v89 = 0xE900000000000079;
        }

        v90 = 0x7261426E727562;
        if (v176)
        {
          v90 = 0x52656E696C636E69;
          v87 = 0xEA00000000006E75;
        }

        if (v176 <= 1u)
        {
          v88 = v90;
          v89 = v87;
        }

        if (v176 <= 3u)
        {
          v91 = v88;
        }

        else
        {
          v91 = v83;
        }

        if (v176 <= 3u)
        {
          v92 = v89;
        }

        else
        {
          v92 = v84;
        }

        v93 = sub_20B51E694(v91, v92, &v194);

        *(v80 + 44) = v93;
        v94 = v182;
        _os_log_impl(&dword_20B517000, v182, v177, "queue incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s queueType:%{public}s", v80, 0x34u);
        v95 = v156;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v95, -1, -1);
        MEMORY[0x20F2F6A40](v80, -1, -1);

        (*v186)(v166, v187);
      }

      else
      {

        (*v186)(v78, v187);
      }

      v12 = v188;
      v36 = v185;
      v41 = v184;
      v49 = v53 + 1;
      if ((sub_20B968530(v55, v176) & 1) == 0)
      {
        v96 = sub_20BD556AC();
        v97 = sub_20BC48284(&v193, v55);
        if (!(*v163)(v98, 1, v36))
        {
          sub_20B704C50(v197, v176);
        }

        (v97)(&v193, 0);
        (v96)(&v194, 0);
      }

      result = sub_20BD6D070(v41, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v177 = 0;
      v50 = byte_28228E178;
      if (v53 == 7)
      {
LABEL_47:
        v99 = 1;
        v100 = v174;
        v101 = v173;
        if (v172)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v27 = v167;
  sub_20C13B4A4();

  v143 = sub_20C13BB74();
  v144 = sub_20C13D1F4();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v194 = v146;
    *v145 = v179;
    *(v145 + 4) = 1752392040;
    v27 = 2080;
    *(v145 + 12) = 2080;
    v147 = sub_20B51E694(v70, v49, &v194);

    *(v145 + 14) = v147;
    *(v145 + 22) = 2160;
    *(v145 + 24) = 1752392040;
    *(v145 + 32) = 2080;
    v148 = sub_20B51E694(v67, v69, &v194);

    *(v145 + 34) = v148;
    _os_log_impl(&dword_20B517000, v143, v144, "suppress incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s", v145, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v146, -1, -1);
    MEMORY[0x20F2F6A40](v145, -1, -1);

    (*v186)(v167, v187);
  }

  else
  {

    (*v186)(v27, v187);
  }

  v12 = v188;
  v36 = v185;
  v100 = v174;
  v101 = v173;
  v149 = v172;
  result = sub_20BD6D070(v184, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
  v177 = 0;
  v99 = 0;
  if (v149)
  {
LABEL_48:
    v100 = v12[2];
  }

LABEL_49:
  if (v101)
  {
    v175 = v12[3];
    if (!v99)
    {
      goto LABEL_75;
    }

LABEL_53:
    v102 = v178;
    v103 = v178 + v36[5];
    *(v103 + 24) = &type metadata for SessionBurnBarReadyEvent;
    *(v103 + 32) = sub_20BD6CE8C();
    v104 = v189;
    *v103 = v189;
    *(v103 + 8) = a9;
    *(v103 + 16) = a10;
    v105 = swift_allocObject();
    swift_weakInit();
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v106 + 24) = a9;
    *(v106 + 32) = a10;
    v107 = v170;
    *(v106 + 40) = v100;
    *(v106 + 48) = v107;
    *(v106 + 56) = v169 & 1;
    *(v106 + 64) = v105;
    v108 = v176;
    *(v106 + 72) = v176;
    *(v106 + 80) = v175;
    v109 = sub_20C132E94();
    (*(*(v109 - 8) + 16))(v102, v171, v109);
    *(v102 + v36[6]) = MEMORY[0x277D84FA0];
    v110 = (v102 + v36[7]);
    *v110 = sub_20BD6CEE0;
    v110[1] = v106;
    v111 = v12[8];
    if (*(v111 + 16))
    {
      v112 = v36;

      v113 = sub_20B65B078(v108);
      v49 = v181;
      if (v114)
      {
        v115 = *(*(v111 + 56) + 8 * v113);

        swift_beginAccess();
        v190 = v115;
        v50 = *(v115 + 2);
        v116 = v50[2];

        if (!v116)
        {
LABEL_63:

          v49 = v168;
          v27 = v190;
LABEL_71:
          sub_20BA15784(v178, v49);
          swift_beginAccess();
          v50 = *(v27 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v27 + 16) = v50;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_72;
          }

          goto LABEL_80;
        }

        v117 = 0;
        while (v117 < v50[2])
        {
          v118 = v50 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v117;
          v119 = *(v49 + 48);
          v120 = v180;
          *v180 = v117;
          sub_20BA15784(v118, v120 + v119);
          v121 = v120;
          v122 = v191;
          sub_20B5DF134(v121, v191, &qword_27C76E990);
          v123 = v122 + *(v49 + 48);
          v124 = v112[5];
          sub_20B51CC64(&v123[v124], &v194);
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A8);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(&v193);
            sub_20B51CC64(&v123[v124], &v194);
            if (swift_dynamicCast())
            {

              v125 = v157;
              sub_20B5DF134(v191, v157, &qword_27C76E990);
              v126 = v161;
              sub_20B5DF134(v125, v161, &qword_27C76E990);
              v127 = v158;
              sub_20B52F9E8(v126, v158, &qword_27C76E990);
              v128 = v127 + *(v181 + 48);
              sub_20B51CC64(v128 + v112[5], &v194);
              sub_20BD6D070(v128, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
              v129 = sub_20C13C9D4();
              v131 = v130;
              v132 = v162;
              sub_20C13B4A4();
              v133 = v159;
              sub_20B52F9E8(v126, v159, &qword_27C76E990);

              v134 = sub_20C13BB74();
              v135 = sub_20C13D1F4();

              if (os_log_type_enabled(v134, v135))
              {
                v136 = swift_slowAlloc();
                v191 = swift_slowAlloc();
                v193 = v191;
                *v136 = v165;
                *(v136 + 4) = 1752392040;
                *(v136 + 12) = 2080;
                v137 = sub_20B51E694(v129, v131, &v193);

                *(v136 + 14) = v137;
                *(v136 + 22) = 2050;
                sub_20B52F9E8(v133, v127, &qword_27C76E990);
                v138 = *v127;
                sub_20BD6D070(v127 + *(v181 + 48), type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
                sub_20B520158(v133, &qword_27C76E990);
                *(v136 + 24) = v138;
                *(v136 + 32) = 2160;
                *(v136 + 34) = 1752392040;
                *(v136 + 42) = 2080;
                LOBYTE(v194) = v189;
                v195 = a9;
                v196 = a10;
                v139 = sub_20C13C9D4();
                v141 = sub_20B51E694(v139, v140, &v193);

                *(v136 + 44) = v141;
                _os_log_impl(&dword_20B517000, v134, v135, "Removing replaceable event: %{mask.hash}s at %{public}ld with: %{mask.hash}s", v136, 0x34u);
                v142 = v191;
                swift_arrayDestroy();
                MEMORY[0x20F2F6A40](v142, -1, -1);
                MEMORY[0x20F2F6A40](v136, -1, -1);
              }

              else
              {
                sub_20B520158(v133, &qword_27C76E990);
              }

              (*v186)(v132, v187);
              v49 = v168;
              v150 = *v126;
              v27 = v190;
              swift_beginAccess();
              v151 = v160;
              sub_20B91F950(v150, v160);
              sub_20BD6D070(v151, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
              swift_endAccess();
              sub_20B520158(v126, &qword_27C76E990);
              goto LABEL_71;
            }
          }

          v49 = v181;
          ++v117;
          sub_20B520158(v191, &qword_27C76E990);
          if (v116 == v117)
          {
            goto LABEL_63;
          }
        }

LABEL_79:
        __break(1u);
LABEL_80:
        v50 = sub_20BC08284(0, v50[2] + 1, 1, v50);
        *(v27 + 16) = v50;
LABEL_72:
        v154 = v50[2];
        v153 = v50[3];
        if (v154 >= v153 >> 1)
        {
          v50 = sub_20BC08284(v153 > 1, v154 + 1, 1, v50);
        }

        v50[2] = v154 + 1;
        sub_20BC49548(v49, v50 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v154);
        *(v27 + 16) = v50;
        swift_endAccess();
        sub_20BD6D070(v178, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);

        goto LABEL_75;
      }
    }

    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if (v99)
  {
    goto LABEL_53;
  }

LABEL_75:
  if (v177)
  {
    return sub_20BD697BC(v176);
  }

  return result;
}

uint64_t sub_20BD59BFC(int a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, unsigned __int8 a10)
{
  v11 = v10;
  v168 = a8;
  v169 = a7;
  v171 = a6;
  v173 = a5;
  v170 = a4;
  v172 = a3;
  v174 = a2;
  v167 = a10;
  v185 = sub_20C13BB84();
  v14 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v188 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v164 = &v153 - v17;
  MEMORY[0x28223BE20](v18);
  v165 = &v153 - v19;
  MEMORY[0x28223BE20](v20);
  v160 = &v153 - v21;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E990);
  MEMORY[0x28223BE20](v179);
  v157 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v153 - v24;
  MEMORY[0x28223BE20](v26);
  v189 = (&v153 - v27);
  MEMORY[0x28223BE20](v28);
  v178 = (&v153 - v29);
  MEMORY[0x28223BE20](v30);
  v155 = &v153 - v31;
  MEMORY[0x28223BE20](v32);
  v159 = (&v153 - v33);
  v34 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v35 = *(v34 - 1);
  MEMORY[0x28223BE20](v34);
  v181 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v153 - v38;
  MEMORY[0x28223BE20](v40);
  v158 = &v153 - v41;
  MEMORY[0x28223BE20](v42);
  v166 = &v153 - v43;
  MEMORY[0x28223BE20](v44);
  v176 = &v153 - v45;
  v195 = a9;
  v187 = a1;
  v196 = a1;
  result = swift_beginAccess();
  v47 = 0;
  v184 = (v14 + 8);
  v162 = 0x800000020C191AD0;
  v190 = v35;
  v161 = (v35 + 48);
  v175 = 1;
  v48 = byte_28228E178;
  *&v49 = 141558786;
  v177 = v49;
  *&v49 = 141559042;
  v163 = v49;
  v186 = v11;
  v156 = v25;
  v183 = v34;
  v182 = v39;
  while (2)
  {
    if (v47 <= 8)
    {
      v50 = 8;
    }

    else
    {
      v50 = v47;
    }

    v51 = v47;
    v180 = v50;
    while (1)
    {
      if (v50 == v51)
      {
        __break(1u);
        goto LABEL_79;
      }

      v52 = v11[7];
      if (*(v52 + 16))
      {
        break;
      }

LABEL_7:
      if (++v51 == 8)
      {
        goto LABEL_47;
      }
    }

    v53 = byte_28228E178[v51 + 32];

    v54 = sub_20B65B078(v53);
    if ((v55 & 1) == 0)
    {

      goto LABEL_7;
    }

    v56 = v181;
    sub_20BA15784(*(v52 + 56) + *(v190 + 72) * v54, v181);

    sub_20BC49548(v56, v39);
    v57 = &v39[v34[5]];
    v58 = type metadata accessor for SessionEventPresentationCoordinator();
    v59 = *(v57 + 3);
    v60 = *(v57 + 4);
    v61 = __swift_project_boxed_opaque_existential_1(v57, v59);
    v62 = *(v60 + 8);
    v63 = sub_20B98EE54();
    v64 = sub_20BFEABCC(v61, &v195, v58, v59, &type metadata for SessionBurnBarUnavailableEvent, v62, v63);
    sub_20B51CC64(v57, &v192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
    v65 = sub_20C13C9D4();
    v67 = v66;
    v192 = a9;
    v193 = v187;
    v68 = sub_20C13C9D4();
    v47 = v69;
    if (!v64)
    {
      v25 = v188;
      sub_20C13B4A4();

      v70 = sub_20C13BB74();
      v71 = sub_20C13D1F4();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v192 = *&v73;
        *v72 = v177;
        v25 = 1752392040;
        *(v72 + 4) = 1752392040;
        *(v72 + 12) = 2080;
        v74 = sub_20B51E694(v65, v67, &v192);

        *(v72 + 14) = v74;
        *(v72 + 22) = 2160;
        *(v72 + 24) = 1752392040;
        *(v72 + 32) = 2080;
        v75 = sub_20B51E694(v68, v47, &v192);

        *(v72 + 34) = v75;
        _os_log_impl(&dword_20B517000, v70, v71, "show both currentEvent: %{mask.hash}s and incomingEvent: %{mask.hash}s", v72, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v73, -1, -1);
        MEMORY[0x20F2F6A40](v72, -1, -1);

        (*v184)(v188, v185);
      }

      else
      {

        (*v184)(v25, v185);
      }

      v11 = v186;
      v34 = v183;
      v48 = byte_28228E178;
      v39 = v182;
      result = sub_20BD6D070(v182, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v50 = v180;
      goto LABEL_7;
    }

    if (v64 != 1)
    {
      v76 = v164;
      sub_20C13B4A4();

      v25 = sub_20C13BB74();
      v77 = sub_20C13D1F4();

      if (os_log_type_enabled(v25, v77))
      {
        v175 = v77;
        v180 = v25;
        v78 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v192 = *&v154;
        *v78 = v163;
        v25 = 1752392040;
        *(v78 + 4) = 1752392040;
        *(v78 + 12) = 2080;
        v79 = sub_20B51E694(v68, v47, &v192);

        *(v78 + 14) = v79;
        *(v78 + 22) = 2160;
        *(v78 + 24) = 1752392040;
        *(v78 + 32) = 2080;
        v80 = sub_20B51E694(v65, v67, &v192);

        *(v78 + 34) = v80;
        *(v78 + 42) = 2082;
        v81 = 7172211;
        if (v174 == 6)
        {
          v81 = 7172210;
        }

        v82 = 0xE300000000000000;
        v83 = 0x7363697274656DLL;
        if (v174 != 4)
        {
          v83 = 0xD000000000000013;
        }

        v84 = v162;
        v85 = 0xE700000000000000;
        if (v174 == 4)
        {
          v84 = 0xE700000000000000;
        }

        if (v174 <= 5u)
        {
          v81 = v83;
          v82 = v84;
        }

        v86 = 0x57656E696C636E69;
        if (v174 != 2)
        {
          v86 = 0x7469736E65746E69;
        }

        v87 = 0xEB000000006B6C61;
        if (v174 != 2)
        {
          v87 = 0xE900000000000079;
        }

        v88 = 0x7261426E727562;
        if (v174)
        {
          v88 = 0x52656E696C636E69;
          v85 = 0xEA00000000006E75;
        }

        if (v174 <= 1u)
        {
          v86 = v88;
          v87 = v85;
        }

        if (v174 <= 3u)
        {
          v89 = v86;
        }

        else
        {
          v89 = v81;
        }

        if (v174 <= 3u)
        {
          v90 = v87;
        }

        else
        {
          v90 = v82;
        }

        v91 = sub_20B51E694(v89, v90, &v192);

        *(v78 + 44) = v91;
        v92 = v180;
        _os_log_impl(&dword_20B517000, v180, v175, "queue incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s queueType:%{public}s", v78, 0x34u);
        v93 = v154;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v93, -1, -1);
        MEMORY[0x20F2F6A40](v78, -1, -1);

        (*v184)(v164, v185);
      }

      else
      {

        (*v184)(v76, v185);
      }

      v11 = v186;
      v34 = v183;
      v39 = v182;
      v47 = v51 + 1;
      if ((sub_20B968530(v53, v174) & 1) == 0)
      {
        v94 = sub_20BD556AC();
        v95 = sub_20BC48284(&v191, v53);
        if (!(*v161)(v96, 1, v34))
        {
          sub_20B704C50(v194, v174);
        }

        (v95)(&v191, 0);
        (v94)(&v192, 0);
      }

      result = sub_20BD6D070(v39, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      v175 = 0;
      v48 = byte_28228E178;
      if (v51 == 7)
      {
LABEL_47:
        v97 = 1;
        v98 = v172;
        v99 = v171;
        if (v170)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v25 = v165;
  sub_20C13B4A4();

  v141 = sub_20C13BB74();
  v142 = sub_20C13D1F4();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v192 = *&v144;
    *v143 = v177;
    *(v143 + 4) = 1752392040;
    v25 = 2080;
    *(v143 + 12) = 2080;
    v145 = sub_20B51E694(v68, v47, &v192);

    *(v143 + 14) = v145;
    *(v143 + 22) = 2160;
    *(v143 + 24) = 1752392040;
    *(v143 + 32) = 2080;
    v146 = sub_20B51E694(v65, v67, &v192);

    *(v143 + 34) = v146;
    _os_log_impl(&dword_20B517000, v141, v142, "suppress incomingEvent: %{mask.hash}s currentEvent: %{mask.hash}s", v143, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v144, -1, -1);
    MEMORY[0x20F2F6A40](v143, -1, -1);

    (*v184)(v165, v185);
  }

  else
  {

    (*v184)(v25, v185);
  }

  v11 = v186;
  v34 = v183;
  v98 = v172;
  v99 = v171;
  v147 = v170;
  result = sub_20BD6D070(v182, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
  v175 = 0;
  v97 = 0;
  if (v147)
  {
LABEL_48:
    v98 = v11[2];
  }

LABEL_49:
  if (v99)
  {
    v173 = v11[3];
    if (!v97)
    {
      goto LABEL_75;
    }

LABEL_53:
    v100 = v176;
    v101 = v176 + v34[5];
    *(v101 + 24) = &type metadata for SessionBurnBarUnavailableEvent;
    *(v101 + 32) = sub_20BD6CDFC();
    *v101 = a9;
    v102 = v187;
    *(v101 + 8) = v187;
    v103 = swift_allocObject();
    swift_weakInit();
    v104 = swift_allocObject();
    *(v104 + 16) = a9;
    *(v104 + 24) = v102;
    v105 = v168;
    *(v104 + 32) = v98;
    *(v104 + 40) = v105;
    *(v104 + 48) = v167 & 1;
    *(v104 + 56) = v103;
    v106 = v174;
    *(v104 + 64) = v174;
    *(v104 + 72) = v173;
    v107 = sub_20C132E94();
    (*(*(v107 - 8) + 16))(v100, v169, v107);
    *(v100 + v34[6]) = MEMORY[0x277D84FA0];
    v108 = (v100 + v34[7]);
    *v108 = sub_20BD6CE50;
    v108[1] = v104;
    v109 = v11[8];
    if (*(v109 + 16))
    {
      v110 = v34;

      v111 = sub_20B65B078(v106);
      v47 = v179;
      if (v112)
      {
        v113 = *(*(v109 + 56) + 8 * v111);

        swift_beginAccess();
        v188 = v113;
        v48 = *(v113 + 2);
        v114 = v48[2];

        if (!v114)
        {
LABEL_63:

          v47 = v166;
          v25 = v188;
LABEL_71:
          sub_20BA15784(v176, v47);
          swift_beginAccess();
          v48 = *(v25 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v25 + 16) = v48;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_72;
          }

          goto LABEL_80;
        }

        v115 = 0;
        while (v115 < v48[2])
        {
          v116 = v48 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v115;
          v117 = *(v47 + 48);
          v118 = v178;
          *v178 = v115;
          sub_20BA15784(v116, v118 + v117);
          v119 = v118;
          v120 = v189;
          sub_20B5DF134(v119, v189, &qword_27C76E990);
          v121 = v120 + *(v47 + 48);
          v122 = v110[5];
          sub_20B51CC64(&v121[v122], &v192);
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A8);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(&v191);
            sub_20B51CC64(&v121[v122], &v192);
            if (swift_dynamicCast())
            {

              v123 = v155;
              sub_20B5DF134(v189, v155, &qword_27C76E990);
              v124 = v159;
              sub_20B5DF134(v123, v159, &qword_27C76E990);
              v125 = v156;
              sub_20B52F9E8(v124, v156, &qword_27C76E990);
              v126 = v125 + *(v179 + 48);
              sub_20B51CC64(v126 + v110[5], &v192);
              sub_20BD6D070(v126, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
              v127 = sub_20C13C9D4();
              v129 = v128;
              v130 = v160;
              sub_20C13B4A4();
              v131 = v157;
              sub_20B52F9E8(v124, v157, &qword_27C76E990);

              v132 = sub_20C13BB74();
              v133 = sub_20C13D1F4();

              if (os_log_type_enabled(v132, v133))
              {
                v134 = swift_slowAlloc();
                v189 = swift_slowAlloc();
                v191 = v189;
                *v134 = v163;
                *(v134 + 4) = 1752392040;
                *(v134 + 12) = 2080;
                v135 = sub_20B51E694(v127, v129, &v191);

                *(v134 + 14) = v135;
                *(v134 + 22) = 2050;
                sub_20B52F9E8(v131, v125, &qword_27C76E990);
                v136 = *v125;
                sub_20BD6D070(v125 + *(v179 + 48), type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
                sub_20B520158(v131, &qword_27C76E990);
                *(v134 + 24) = v136;
                *(v134 + 32) = 2160;
                *(v134 + 34) = 1752392040;
                *(v134 + 42) = 2080;
                v192 = a9;
                v193 = v187;
                v137 = sub_20C13C9D4();
                v139 = sub_20B51E694(v137, v138, &v191);

                *(v134 + 44) = v139;
                _os_log_impl(&dword_20B517000, v132, v133, "Removing replaceable event: %{mask.hash}s at %{public}ld with: %{mask.hash}s", v134, 0x34u);
                v140 = v189;
                swift_arrayDestroy();
                MEMORY[0x20F2F6A40](v140, -1, -1);
                MEMORY[0x20F2F6A40](v134, -1, -1);
              }

              else
              {
                sub_20B520158(v131, &qword_27C76E990);
              }

              (*v184)(v130, v185);
              v47 = v166;
              v148 = *v124;
              v25 = v188;
              swift_beginAccess();
              v149 = v158;
              sub_20B91F950(v148, v158);
              sub_20BD6D070(v149, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
              swift_endAccess();
              sub_20B520158(v124, &qword_27C76E990);
              goto LABEL_71;
            }
          }

          v47 = v179;
          ++v115;
          sub_20B520158(v189, &qword_27C76E990);
          if (v114 == v115)
          {
            goto LABEL_63;
          }
        }

LABEL_79:
        __break(1u);
LABEL_80:
        v48 = sub_20BC08284(0, v48[2] + 1, 1, v48);
        *(v25 + 16) = v48;
LABEL_72:
        v152 = v48[2];
        v151 = v48[3];
        if (v152 >= v151 >> 1)
        {
          v48 = sub_20BC08284(v151 > 1, v152 + 1, 1, v48);
        }

        v48[2] = v152 + 1;
        sub_20BC49548(v47, v48 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v152);
        *(v25 + 16) = v48;
        swift_endAccess();
        sub_20BD6D070(v176, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);

        goto LABEL_75;
      }
    }

    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if (v97)
  {
    goto LABEL_53;
  }

LABEL_75:
  if (v175)
  {
    return sub_20BD697BC(v174);
  }

  return result;
}

uint64_t sub_20BD5B190(uint64_t a1, void (*a2)(void, void), int a3, uint64_t a4, int a5, double a6, double a7)
{
  v69 = a5;
  v84 = a4;
  LODWORD(v82) = a3;
  v81 = a2;
  v71 = sub_20C13C4B4();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C13C4F4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13B224();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v14;
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C13C514();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  v18 = sub_20C13BB84();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767338);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - v29;
  v66 = v13;
  v31 = *(v13 + 16);
  v68 = a1;
  v67 = v12;
  v62 = v13 + 16;
  v61 = v31;
  (v31)(&v59 - v29, a1, v12, v28);
  v78 = v21;
  *&v30[*(v21 + 28)] = a6;
  sub_20C13B4A4();
  sub_20B52F9E8(v30, v26, &qword_27C767338);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v34 = 141558786;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2080;
    sub_20B52F9E8(v26, v23, &qword_27C767338);
    sub_20B520158(v26, &qword_27C767338);
    v35 = sub_20BD6C438(MEMORY[0x277D4F5D0], &qword_27C767338);
    v37 = v36;
    sub_20B520158(v23, &qword_27C767338);
    v38 = sub_20B51E694(v35, v37, &v91);

    *(v34 + 14) = v38;
    *(v34 + 22) = 1026;
    *(v34 + 24) = 1;
    *(v34 + 28) = 2082;
    aBlock = v81;
    v39 = v82;
    LOBYTE(v86) = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, &v91);

    *(v34 + 30) = v42;
    _os_log_impl(&dword_20B517000, v32, v33, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v34, 0x26u);
    v43 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    (*(v79 + 8))(v20, v80);
  }

  else
  {
    sub_20B520158(v26, &qword_27C767338);

    (*(v79 + 8))(v20, v80);
    v39 = v82;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C767340, &qword_27C767338);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  if ((v39 & 1) == 0)
  {
    sub_20B5E2E18();
    v80 = sub_20C13D374();
    v44 = v63;
    sub_20C13C504();
    v45 = v70;
    sub_20C13C574();
    v82 = v30;
    v81 = *(v72 + 8);
    v81(v44, v83);
    v46 = v65;
    v47 = v67;
    v61(v65, v68, v67);
    v48 = v66;
    v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v50 = v49 + v64;
    v51 = (v49 + v64) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    (*(v48 + 32))(v52 + v49, v46, v47);
    *(v52 + v50) = v69;
    *(v52 + v51 + 8) = a7;
    v89 = sub_20BD6D494;
    v90 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_20B7B548C;
    v88 = &block_descriptor_196;
    v53 = _Block_copy(&aBlock);

    v54 = v73;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v55 = v75;
    v56 = v71;
    sub_20C13DA94();
    v57 = v80;
    MEMORY[0x20F2F4A80](v45, v54, v55, v53);
    _Block_release(v53);

    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
    v81(v45, v83);
    v30 = v82;
  }

  return sub_20B520158(v30, &qword_27C767338);
}

uint64_t sub_20BD5BB34(uint64_t a1, void (*a2)(void, void), int a3, uint64_t a4, int a5, double a6, double a7)
{
  v69 = a5;
  v84 = a4;
  LODWORD(v82) = a3;
  v81 = a2;
  v71 = sub_20C13C4B4();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C13C4F4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13A854();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v14;
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C13C514();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  v18 = sub_20C13BB84();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769FF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - v29;
  v66 = v13;
  v31 = *(v13 + 16);
  v68 = a1;
  v67 = v12;
  v62 = v13 + 16;
  v61 = v31;
  (v31)(&v59 - v29, a1, v12, v28);
  v78 = v21;
  *&v30[*(v21 + 28)] = a6;
  sub_20C13B4A4();
  sub_20B52F9E8(v30, v26, &qword_27C769FF0);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v34 = 141558786;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2080;
    sub_20B52F9E8(v26, v23, &qword_27C769FF0);
    sub_20B520158(v26, &qword_27C769FF0);
    v35 = sub_20BD6C438(MEMORY[0x277D4F0C8], &qword_27C769FF0);
    v37 = v36;
    sub_20B520158(v23, &qword_27C769FF0);
    v38 = sub_20B51E694(v35, v37, &v91);

    *(v34 + 14) = v38;
    *(v34 + 22) = 1026;
    *(v34 + 24) = 1;
    *(v34 + 28) = 2082;
    aBlock = v81;
    v39 = v82;
    LOBYTE(v86) = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, &v91);

    *(v34 + 30) = v42;
    _os_log_impl(&dword_20B517000, v32, v33, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v34, 0x26u);
    v43 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    (*(v79 + 8))(v20, v80);
  }

  else
  {
    sub_20B520158(v26, &qword_27C769FF0);

    (*(v79 + 8))(v20, v80);
    v39 = v82;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C769FF8, &qword_27C769FF0);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  if ((v39 & 1) == 0)
  {
    sub_20B5E2E18();
    v80 = sub_20C13D374();
    v44 = v63;
    sub_20C13C504();
    v45 = v70;
    sub_20C13C574();
    v82 = v30;
    v81 = *(v72 + 8);
    v81(v44, v83);
    v46 = v65;
    v47 = v67;
    v61(v65, v68, v67);
    v48 = v66;
    v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v50 = v49 + v64;
    v51 = (v49 + v64) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    (*(v48 + 32))(v52 + v49, v46, v47);
    *(v52 + v50) = v69;
    *(v52 + v51 + 8) = a7;
    v89 = sub_20BD6D43C;
    v90 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_20B7B548C;
    v88 = &block_descriptor_179;
    v53 = _Block_copy(&aBlock);

    v54 = v73;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v55 = v75;
    v56 = v71;
    sub_20C13DA94();
    v57 = v80;
    MEMORY[0x20F2F4A80](v45, v54, v55, v53);
    _Block_release(v53);

    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
    v81(v45, v83);
    v30 = v82;
  }

  return sub_20B520158(v30, &qword_27C769FF0);
}

uint64_t sub_20BD5C4D8(uint64_t a1, void (*a2)(void, void), int a3, uint64_t a4, int a5, double a6, double a7)
{
  v69 = a5;
  v84 = a4;
  LODWORD(v82) = a3;
  v81 = a2;
  v71 = sub_20C13C4B4();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C13C4F4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13AD54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v14;
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C13C514();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  v18 = sub_20C13BB84();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A000);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - v29;
  v66 = v13;
  v31 = *(v13 + 16);
  v68 = a1;
  v67 = v12;
  v62 = v13 + 16;
  v61 = v31;
  (v31)(&v59 - v29, a1, v12, v28);
  v78 = v21;
  *&v30[*(v21 + 28)] = a6;
  sub_20C13B4A4();
  sub_20B52F9E8(v30, v26, &qword_27C76A000);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v34 = 141558786;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2080;
    sub_20B52F9E8(v26, v23, &qword_27C76A000);
    sub_20B520158(v26, &qword_27C76A000);
    v35 = sub_20BD6C438(MEMORY[0x277D4F378], &qword_27C76A000);
    v37 = v36;
    sub_20B520158(v23, &qword_27C76A000);
    v38 = sub_20B51E694(v35, v37, &v91);

    *(v34 + 14) = v38;
    *(v34 + 22) = 1026;
    *(v34 + 24) = 1;
    *(v34 + 28) = 2082;
    aBlock = v81;
    v39 = v82;
    LOBYTE(v86) = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, &v91);

    *(v34 + 30) = v42;
    _os_log_impl(&dword_20B517000, v32, v33, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v34, 0x26u);
    v43 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    (*(v79 + 8))(v20, v80);
  }

  else
  {
    sub_20B520158(v26, &qword_27C76A000);

    (*(v79 + 8))(v20, v80);
    v39 = v82;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C76A008, &qword_27C76A000);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  if ((v39 & 1) == 0)
  {
    sub_20B5E2E18();
    v80 = sub_20C13D374();
    v44 = v63;
    sub_20C13C504();
    v45 = v70;
    sub_20C13C574();
    v82 = v30;
    v81 = *(v72 + 8);
    v81(v44, v83);
    v46 = v65;
    v47 = v67;
    v61(v65, v68, v67);
    v48 = v66;
    v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v50 = v49 + v64;
    v51 = (v49 + v64) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    (*(v48 + 32))(v52 + v49, v46, v47);
    *(v52 + v50) = v69;
    *(v52 + v51 + 8) = a7;
    v89 = sub_20BD6D3E4;
    v90 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_20B7B548C;
    v88 = &block_descriptor_162;
    v53 = _Block_copy(&aBlock);

    v54 = v73;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v55 = v75;
    v56 = v71;
    sub_20C13DA94();
    v57 = v80;
    MEMORY[0x20F2F4A80](v45, v54, v55, v53);
    _Block_release(v53);

    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
    v81(v45, v83);
    v30 = v82;
  }

  return sub_20B520158(v30, &qword_27C76A000);
}

uint64_t sub_20BD5CE7C(uint64_t a1, void (*a2)(void, void), int a3, uint64_t a4, int a5, double a6, double a7)
{
  v69 = a5;
  v84 = a4;
  LODWORD(v82) = a3;
  v81 = a2;
  v71 = sub_20C13C4B4();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C13C4F4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13AA44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v14;
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C13C514();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  v18 = sub_20C13BB84();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A010);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - v29;
  v66 = v13;
  v31 = *(v13 + 16);
  v68 = a1;
  v67 = v12;
  v62 = v13 + 16;
  v61 = v31;
  (v31)(&v59 - v29, a1, v12, v28);
  v78 = v21;
  *&v30[*(v21 + 28)] = a6;
  sub_20C13B4A4();
  sub_20B52F9E8(v30, v26, &qword_27C76A010);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v34 = 141558786;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2080;
    sub_20B52F9E8(v26, v23, &qword_27C76A010);
    sub_20B520158(v26, &qword_27C76A010);
    v35 = sub_20BD6C438(MEMORY[0x277D4F198], &qword_27C76A010);
    v37 = v36;
    sub_20B520158(v23, &qword_27C76A010);
    v38 = sub_20B51E694(v35, v37, &v91);

    *(v34 + 14) = v38;
    *(v34 + 22) = 1026;
    *(v34 + 24) = 1;
    *(v34 + 28) = 2082;
    aBlock = v81;
    v39 = v82;
    LOBYTE(v86) = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, &v91);

    *(v34 + 30) = v42;
    _os_log_impl(&dword_20B517000, v32, v33, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v34, 0x26u);
    v43 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    (*(v79 + 8))(v20, v80);
  }

  else
  {
    sub_20B520158(v26, &qword_27C76A010);

    (*(v79 + 8))(v20, v80);
    v39 = v82;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C76A018, &qword_27C76A010);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  if ((v39 & 1) == 0)
  {
    sub_20B5E2E18();
    v80 = sub_20C13D374();
    v44 = v63;
    sub_20C13C504();
    v45 = v70;
    sub_20C13C574();
    v82 = v30;
    v81 = *(v72 + 8);
    v81(v44, v83);
    v46 = v65;
    v47 = v67;
    v61(v65, v68, v67);
    v48 = v66;
    v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v50 = v49 + v64;
    v51 = (v49 + v64) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    (*(v48 + 32))(v52 + v49, v46, v47);
    *(v52 + v50) = v69;
    *(v52 + v51 + 8) = a7;
    v89 = sub_20BD6D38C;
    v90 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_20B7B548C;
    v88 = &block_descriptor_145;
    v53 = _Block_copy(&aBlock);

    v54 = v73;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v55 = v75;
    v56 = v71;
    sub_20C13DA94();
    v57 = v80;
    MEMORY[0x20F2F4A80](v45, v54, v55, v53);
    _Block_release(v53);

    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
    v81(v45, v83);
    v30 = v82;
  }

  return sub_20B520158(v30, &qword_27C76A010);
}

uint64_t sub_20BD5D820(uint64_t a1, void (*a2)(void, void), int a3, uint64_t a4, int a5, double a6, double a7)
{
  v69 = a5;
  v84 = a4;
  LODWORD(v82) = a3;
  v81 = a2;
  v71 = sub_20C13C4B4();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C13C4F4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13AB54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v14;
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C13C514();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  v18 = sub_20C13BB84();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A020);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - v29;
  v66 = v13;
  v31 = *(v13 + 16);
  v68 = a1;
  v67 = v12;
  v62 = v13 + 16;
  v61 = v31;
  (v31)(&v59 - v29, a1, v12, v28);
  v78 = v21;
  *&v30[*(v21 + 28)] = a6;
  sub_20C13B4A4();
  sub_20B52F9E8(v30, v26, &qword_27C76A020);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v34 = 141558786;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2080;
    sub_20B52F9E8(v26, v23, &qword_27C76A020);
    sub_20B520158(v26, &qword_27C76A020);
    v35 = sub_20BD6C438(MEMORY[0x277D4F280], &qword_27C76A020);
    v37 = v36;
    sub_20B520158(v23, &qword_27C76A020);
    v38 = sub_20B51E694(v35, v37, &v91);

    *(v34 + 14) = v38;
    *(v34 + 22) = 1026;
    *(v34 + 24) = 1;
    *(v34 + 28) = 2082;
    aBlock = v81;
    v39 = v82;
    LOBYTE(v86) = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, &v91);

    *(v34 + 30) = v42;
    _os_log_impl(&dword_20B517000, v32, v33, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v34, 0x26u);
    v43 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    (*(v79 + 8))(v20, v80);
  }

  else
  {
    sub_20B520158(v26, &qword_27C76A020);

    (*(v79 + 8))(v20, v80);
    v39 = v82;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C76A028, &qword_27C76A020);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  if ((v39 & 1) == 0)
  {
    sub_20B5E2E18();
    v80 = sub_20C13D374();
    v44 = v63;
    sub_20C13C504();
    v45 = v70;
    sub_20C13C574();
    v82 = v30;
    v81 = *(v72 + 8);
    v81(v44, v83);
    v46 = v65;
    v47 = v67;
    v61(v65, v68, v67);
    v48 = v66;
    v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v50 = v49 + v64;
    v51 = (v49 + v64) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    (*(v48 + 32))(v52 + v49, v46, v47);
    *(v52 + v50) = v69;
    *(v52 + v51 + 8) = a7;
    v89 = sub_20BD6D334;
    v90 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_20B7B548C;
    v88 = &block_descriptor_128;
    v53 = _Block_copy(&aBlock);

    v54 = v73;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v55 = v75;
    v56 = v71;
    sub_20C13DA94();
    v57 = v80;
    MEMORY[0x20F2F4A80](v45, v54, v55, v53);
    _Block_release(v53);

    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
    v81(v45, v83);
    v30 = v82;
  }

  return sub_20B520158(v30, &qword_27C76A020);
}

uint64_t sub_20BD5E1C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, double a6, double a7)
{
  v101 = a5;
  v118 = a4;
  v115 = a3;
  v116 = a2;
  v109 = sub_20C13C4B4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20C13C4F4();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_20C13C514();
  v103 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v100 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v89 - v14;
  v15 = sub_20C133D14();
  v120 = *(v15 - 8);
  v121 = v15;
  MEMORY[0x28223BE20](v15);
  v113 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v89 - v18;
  v19 = sub_20C13AB74();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v99 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v89 - v23;
  v112 = sub_20C13BB84();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308);
  MEMORY[0x28223BE20](v27);
  v94 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v89 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v89 - v34;
  v36 = *(v20 + 16);
  v36(&v89 - v34, a1, v19, v33);
  v110 = v27;
  *&v35[*(v27 + 28)] = a6;
  sub_20C13B4A4();
  v122 = v35;
  sub_20B52F9E8(v35, v31, &qword_27C767308);
  v37 = v24;
  v117 = a1;
  v97 = v20 + 16;
  v96 = v36;
  (v36)(v24, a1, v19);
  v38 = sub_20C13BB74();
  v39 = sub_20C13D1F4();
  v40 = os_log_type_enabled(v38, v39);
  v114 = v20;
  if (v40)
  {
    v91 = v39;
    v92 = v38;
    v93 = v26;
    v41 = v111;
    v42 = v112;
    v43 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v129 = v90;
    *v43 = 141558786;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2080;
    v44 = v94;
    sub_20B52F9E8(v31, v94, &qword_27C767308);
    sub_20B520158(v31, &qword_27C767308);
    v45 = sub_20BD6C438(MEMORY[0x277D4F298], &qword_27C767308);
    v47 = v46;
    sub_20B520158(v44, &qword_27C767308);
    v48 = sub_20B51E694(v45, v47, &v129);

    *(v43 + 14) = v48;
    *(v43 + 22) = 1026;
    v49 = v95;
    sub_20C13AB64();
    v50 = sub_20C133CE4();
    v52 = v51;
    LOBYTE(v48) = v53;
    (*(v120 + 8))(v49, v121);
    if (v48)
    {
      v54 = v50 != 1;
    }

    else
    {
      sub_20B583F4C(v50, v52, 0);
      v54 = 1;
    }

    v55 = v115;
    v59 = v42;
    v56 = v19;
    (*(v114 + 8))(v37, v19);
    *(v43 + 24) = v54;
    *(v43 + 28) = 2082;
    aBlock = v116;
    LOBYTE(v124) = v55 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v60 = sub_20C13D8F4();
    v62 = sub_20B51E694(v60, v61, &v129);

    *(v43 + 30) = v62;
    v63 = v92;
    _os_log_impl(&dword_20B517000, v92, v91, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v43, 0x26u);
    v64 = v90;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v64, -1, -1);
    MEMORY[0x20F2F6A40](v43, -1, -1);

    (*(v41 + 8))(v93, v59);
    v58 = v118;
    v57 = v120;
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    sub_20B520158(v31, &qword_27C767308);

    (*(v111 + 8))(v26, v112);
    v55 = v115;
    v56 = v19;
    v57 = v120;
    v58 = v118;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v66 = v117;
  if (Strong)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C767310, &qword_27C767308);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  v67 = v113;
  sub_20C13AB64();
  v68 = sub_20C133CE4();
  v70 = v69;
  v72 = v71;
  (*(v57 + 8))(v67, v121);
  if ((v72 & 1) == 0)
  {
    sub_20B583F4C(v68, v70, 0);
    if (v55)
    {
      return sub_20B520158(v122, &qword_27C767308);
    }

LABEL_14:
    sub_20B5E2E18();
    v120 = sub_20C13D374();
    v73 = v100;
    sub_20C13C504();
    v74 = v102;
    sub_20C13C574();
    v75 = v58;
    v121 = *(v103 + 8);
    v121(v73, v119);
    v76 = v99;
    v77 = v56;
    v96(v99, v66, v56);
    v78 = v114;
    v79 = (*(v114 + 80) + 24) & ~*(v114 + 80);
    v80 = v79 + v98;
    v81 = (v79 + v98) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    *(v82 + 16) = v75;
    (*(v78 + 32))(v82 + v79, v76, v77);
    *(v82 + v80) = v101;
    *(v82 + v81 + 8) = a7;
    v127 = sub_20BD6D2B4;
    v128 = v82;
    aBlock = MEMORY[0x277D85DD0];
    v124 = 1107296256;
    v125 = sub_20B7B548C;
    v126 = &block_descriptor_106_0;
    v83 = _Block_copy(&aBlock);

    v84 = v104;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v85 = v106;
    v86 = v109;
    sub_20C13DA94();
    v87 = v120;
    MEMORY[0x20F2F4A80](v74, v84, v85, v83);
    _Block_release(v83);

    (*(v108 + 8))(v85, v86);
    (*(v105 + 8))(v84, v107);
    v121(v74, v119);
    return sub_20B520158(v122, &qword_27C767308);
  }

  if (v68 != 1 && (v55 & 1) == 0)
  {
    goto LABEL_14;
  }

  return sub_20B520158(v122, &qword_27C767308);
}

uint64_t sub_20BD5EDB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v63 = a4;
  v53 = a3;
  v52 = a2;
  v7 = sub_20C134054();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20C13AC54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_20C13BB84();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v49[-v20];
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v49[-v24];
  v55 = v10;
  v26 = *(v10 + 16);
  v26(&v49[-v24], a1, v9, v23);
  v54 = v16;
  v27 = *(v16 + 28);
  v28 = v9;
  *&v25[v27] = a5;
  sub_20C13B4A4();
  v59 = v25;
  sub_20B52F9E8(v25, v21, &qword_27C7673D8);
  v29 = v12;
  v64 = a1;
  (v26)(v12, a1, v9);
  v56 = v15;
  v30 = sub_20C13BB74();
  v31 = sub_20C13D1F4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65[0] = v51;
    *v32 = 141558786;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2080;
    v50 = v31;
    sub_20B52F9E8(v21, v18, &qword_27C7673D8);
    sub_20B520158(v21, &qword_27C7673D8);
    v33 = sub_20BD6C438(MEMORY[0x277D4F2E8], &qword_27C7673D8);
    v35 = v34;
    sub_20B520158(v18, &qword_27C7673D8);
    v36 = sub_20B51E694(v33, v35, v65);

    *(v32 + 14) = v36;
    *(v32 + 22) = 1026;
    v37 = v60;
    sub_20C13AC44();
    v39 = v61;
    v38 = v62;
    (*(v61 + 8))(v37, v62);
    (*(v55 + 8))(v29, v28);
    *(v32 + 24) = 0;
    *(v32 + 28) = 2082;
    v65[1] = v52;
    v66 = v53 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, v65);

    *(v32 + 30) = v42;
    _os_log_impl(&dword_20B517000, v30, v50, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v32, 0x26u);
    v43 = v51;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v32, -1, -1);

    (*(v57 + 8))(v56, v58);
    v44 = v39;
    v45 = v37;
  }

  else
  {
    (*(v55 + 8))(v29, v9);
    sub_20B520158(v21, &qword_27C7673D8);

    (*(v57 + 8))(v56, v58);
    v44 = v61;
    v38 = v62;
    v45 = v60;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v47 = v59;
  if (Strong)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C7673E0, &qword_27C7673D8);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  sub_20C13AC44();
  (*(v44 + 8))(v45, v38);
  return sub_20B520158(v47, &qword_27C7673D8);
}

uint64_t sub_20BD5F3F0(uint64_t a1, void (*a2)(void, void), int a3, uint64_t a4, int a5, double a6, double a7)
{
  v69 = a5;
  v84 = a4;
  LODWORD(v82) = a3;
  v81 = a2;
  v71 = sub_20C13C4B4();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C13C4F4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13A874();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = v14;
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C13C514();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  v18 = sub_20C13BB84();
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767358);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - v29;
  v66 = v13;
  v31 = *(v13 + 16);
  v68 = a1;
  v67 = v12;
  v62 = v13 + 16;
  v61 = v31;
  (v31)(&v59 - v29, a1, v12, v28);
  v78 = v21;
  *&v30[*(v21 + 28)] = a6;
  sub_20C13B4A4();
  sub_20B52F9E8(v30, v26, &qword_27C767358);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v34 = 141558786;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2080;
    sub_20B52F9E8(v26, v23, &qword_27C767358);
    sub_20B520158(v26, &qword_27C767358);
    v35 = sub_20BD6C438(MEMORY[0x277D4F0E8], &qword_27C767358);
    v37 = v36;
    sub_20B520158(v23, &qword_27C767358);
    v38 = sub_20B51E694(v35, v37, &v91);

    *(v34 + 14) = v38;
    *(v34 + 22) = 1026;
    *(v34 + 24) = 1;
    *(v34 + 28) = 2082;
    aBlock = v81;
    v39 = v82;
    LOBYTE(v86) = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v40 = sub_20C13D8F4();
    v42 = sub_20B51E694(v40, v41, &v91);

    *(v34 + 30) = v42;
    _os_log_impl(&dword_20B517000, v32, v33, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v34, 0x26u);
    v43 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    (*(v79 + 8))(v20, v80);
  }

  else
  {
    sub_20B520158(v26, &qword_27C767358);

    (*(v79 + 8))(v20, v80);
    v39 = v82;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B6D6ABC(&qword_27C767360, &qword_27C767358);
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  if ((v39 & 1) == 0)
  {
    sub_20B5E2E18();
    v80 = sub_20C13D374();
    v44 = v63;
    sub_20C13C504();
    v45 = v70;
    sub_20C13C574();
    v82 = v30;
    v81 = *(v72 + 8);
    v81(v44, v83);
    v46 = v65;
    v47 = v67;
    v61(v65, v68, v67);
    v48 = v66;
    v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v50 = v49 + v64;
    v51 = (v49 + v64) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    (*(v48 + 32))(v52 + v49, v46, v47);
    *(v52 + v50) = v69;
    *(v52 + v51 + 8) = a7;
    v89 = sub_20BD6D67C;
    v90 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_20B7B548C;
    v88 = &block_descriptor_214;
    v53 = _Block_copy(&aBlock);

    v54 = v73;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v55 = v75;
    v56 = v71;
    sub_20C13DA94();
    v57 = v80;
    MEMORY[0x20F2F4A80](v45, v54, v55, v53);
    _Block_release(v53);

    (*(v77 + 8))(v55, v56);
    (*(v74 + 8))(v54, v76);
    v81(v45, v83);
    v30 = v82;
  }

  return sub_20B520158(v30, &qword_27C767358);
}

uint64_t sub_20BD5FD94(int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, double a7, double a8, double a9, double a10)
{
  v55 = a6;
  v67 = a5;
  v58 = sub_20C13C4B4();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v64 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20C13C4F4();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20C13C514();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = &v52 - v22;
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  LOBYTE(v78) = a1;
  *(&v78 + 1) = a7;
  *&v79 = a8;
  v54 = a2;
  BYTE8(v79) = a2;
  v80 = a9;
  v75 = v78;
  v76 = v79;
  v77 = a9;
  sub_20C13B4A4();
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1F4();
  v29 = os_log_type_enabled(v27, v28);
  LODWORD(v66) = a4;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v23;
    v32 = v31;
    v74[0] = v31;
    *v30 = 141558786;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2080;
    v33 = sub_20BD6C58C();
    v35 = a3;
    v36 = sub_20B51E694(v33, v34, v74);

    *(v30 + 14) = v36;
    *(v30 + 22) = 1026;
    *(v30 + 24) = 1;
    *(v30 + 28) = 2082;
    aBlock = v35;
    LOBYTE(v69) = a4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v37 = sub_20C13D8F4();
    v39 = sub_20B51E694(v37, v38, v74);

    *(v30 + 30) = v39;
    _os_log_impl(&dword_20B517000, v27, v28, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v30, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v32, -1, -1);
    MEMORY[0x20F2F6A40](v30, -1, -1);

    (*(v24 + 8))(v26, v52);
  }

  else
  {

    (*(v24 + 8))(v26, v23);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767378);
    sub_20B6D6ABC(&qword_27C767380, &qword_27C767378);
    sub_20C13A764();
    result = swift_unknownObjectRelease();
  }

  if ((v66 & 1) == 0)
  {
    v41 = v54 & 1;
    sub_20B5E2E18();
    v42 = sub_20C13D374();
    v43 = v53;
    sub_20C13C504();
    v44 = v57;
    sub_20C13C574();
    v66 = *(v59 + 8);
    v45 = v67;
    v46 = v60;
    v66(v43, v60);
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v56;
    *(v47 + 32) = a7;
    *(v47 + 40) = a8;
    *(v47 + 48) = v41;
    *(v47 + 49) = v55;
    *(v47 + 56) = a10;
    v72 = sub_20BD6D14C;
    v73 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_20B7B548C;
    v71 = &block_descriptor_67_0;
    v48 = _Block_copy(&aBlock);

    v49 = v62;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v50 = v64;
    v51 = v58;
    sub_20C13DA94();
    MEMORY[0x20F2F4A80](v44, v49, v50, v48);
    _Block_release(v48);

    (*(v61 + 8))(v50, v51);
    (*(v63 + 8))(v49, v65);
    return (v66)(v44, v46);
  }

  return result;
}

uint64_t sub_20BD6054C(int a1, void (*a2)(char *, uint64_t), char a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9)
{
  v50 = a5;
  v62 = a4;
  v53 = sub_20C13C4B4();
  v56 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v59 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20C13C4F4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20C13C514();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v48 - v20;
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v71 = a6;
  v72 = a7;
  v73 = a8;
  sub_20C13B4A4();
  v25 = sub_20C13BB74();
  v26 = sub_20C13D1F4();
  v27 = os_log_type_enabled(v25, v26);
  v51 = a1;
  v61 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v48 = v21;
    v30 = v29;
    v69[0] = v29;
    *v28 = 141558786;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2080;
    v31 = sub_20BD6C6C8();
    v33 = sub_20B51E694(v31, v32, v69);

    *(v28 + 14) = v33;
    *(v28 + 22) = 1026;
    *(v28 + 24) = 1;
    *(v28 + 28) = 2082;
    aBlock = a2;
    LOBYTE(v64) = a3 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v34 = sub_20C13D8F4();
    v36 = sub_20B51E694(v34, v35, v69);

    *(v28 + 30) = v36;
    _os_log_impl(&dword_20B517000, v25, v26, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v28, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v30, -1, -1);
    MEMORY[0x20F2F6A40](v28, -1, -1);

    (*(v22 + 8))(v24, v48);
  }

  else
  {

    (*(v22 + 8))(v24, v21);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767398);
    sub_20B6D6ABC(&qword_27C7673A0, &qword_27C767398);
    sub_20C13A764();
    result = swift_unknownObjectRelease();
  }

  if ((a3 & 1) == 0)
  {
    sub_20B5E2E18();
    v38 = sub_20C13D374();
    v39 = v49;
    sub_20C13C504();
    v40 = v52;
    sub_20C13C574();
    v61 = *(v54 + 8);
    v41 = v62;
    v42 = v55;
    v61(v39, v55);
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v51;
    *(v43 + 32) = a6;
    *(v43 + 40) = a7;
    *(v43 + 48) = v50;
    *(v43 + 56) = a9;
    v67 = sub_20BD6CF04;
    v68 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_20B7B548C;
    v66 = &block_descriptor_44;
    v44 = _Block_copy(&aBlock);

    v45 = v57;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v46 = v59;
    v47 = v53;
    sub_20C13DA94();
    MEMORY[0x20F2F4A80](v40, v45, v46, v44);
    _Block_release(v44);

    (*(v56 + 8))(v46, v47);
    (*(v58 + 8))(v45, v60);
    return (v61)(v40, v42);
  }

  return result;
}

uint64_t sub_20BD60C98(int a1, void (*a2)(char *, uint64_t), char a3, uint64_t a4, int a5, double a6, double a7, double a8)
{
  v49 = a5;
  v61 = a4;
  v52 = sub_20C13C4B4();
  v55 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v58 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C13C4F4();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C13C514();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v18;
  v19 = sub_20C13BB84();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v68[3] = a6;
  v69 = a1;
  v70 = a7;
  sub_20C13B4A4();
  v23 = sub_20C13BB74();
  v24 = sub_20C13D1F4();
  v25 = os_log_type_enabled(v23, v24);
  v50 = a1;
  v60 = a2;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v19;
    v28 = v27;
    v68[0] = v27;
    *v26 = 141558786;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2080;
    v29 = sub_20BD6C80C();
    v31 = sub_20B51E694(v29, v30, v68);

    *(v26 + 14) = v31;
    *(v26 + 22) = 1026;
    *(v26 + 24) = 1;
    *(v26 + 28) = 2082;
    aBlock = a2;
    LOBYTE(v63) = a3 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9B0);
    v32 = sub_20C13D8F4();
    v34 = sub_20B51E694(v32, v33, v68);

    *(v26 + 30) = v34;
    _os_log_impl(&dword_20B517000, v23, v24, "publishing %{mask.hash}s, autoDismiss: %{BOOL,public}d dismissingAfter: %{public}s", v26, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v28, -1, -1);
    MEMORY[0x20F2F6A40](v26, -1, -1);

    (*(v20 + 8))(v22, v47);
  }

  else
  {

    (*(v20 + 8))(v22, v19);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673B8);
    sub_20B6D6ABC(&qword_27C7673C0, &qword_27C7673B8);
    sub_20C13A764();
    result = swift_unknownObjectRelease();
  }

  if ((a3 & 1) == 0)
  {
    sub_20B5E2E18();
    v36 = sub_20C13D374();
    v37 = v48;
    sub_20C13C504();
    v38 = v51;
    sub_20C13C574();
    v60 = *(v53 + 8);
    v39 = v61;
    v40 = v54;
    v60(v37, v54);
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = a6;
    *(v41 + 32) = v50;
    *(v41 + 33) = v49;
    *(v41 + 40) = a8;
    v66 = sub_20BD6CE74;
    v67 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_20B7B548C;
    v65 = &block_descriptor_126;
    v42 = _Block_copy(&aBlock);

    v43 = v56;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    v44 = v58;
    v45 = v52;
    sub_20C13DA94();
    MEMORY[0x20F2F4A80](v38, v43, v44, v42);
    _Block_release(v42);

    (*(v55 + 8))(v44, v45);
    (*(v57 + 8))(v43, v59);
    return (v60)(v38, v40);
  }

  return result;
}

uint64_t sub_20BD613D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, double))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a5(a3, a4, a1);
  }

  return result;
}

uint64_t sub_20BD61460(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767348);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13B224();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C767348);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C767348);
    sub_20B520158(v19, &qword_27C767348);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F5D0], &qword_27C767348);
    v48 = v47;
    sub_20B520158(v45, &qword_27C767348);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C767348);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C767350, &qword_27C767348);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C767348);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_203;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD61EE8(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EA00);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13A854();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C76EA00);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C76EA00);
    sub_20B520158(v19, &qword_27C76EA00);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F0C8], &qword_27C76EA00);
    v48 = v47;
    sub_20B520158(v45, &qword_27C76EA00);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C76EA00);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C76EA08, &qword_27C76EA00);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C76EA00);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_186;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD62970(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9F0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13AD54();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C76E9F0);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C76E9F0);
    sub_20B520158(v19, &qword_27C76E9F0);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F378], &qword_27C76E9F0);
    v48 = v47;
    sub_20B520158(v45, &qword_27C76E9F0);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C76E9F0);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C76E9F8, &qword_27C76E9F0);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C76E9F0);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_169;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD633F8(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9E0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13AA44();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C76E9E0);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C76E9E0);
    sub_20B520158(v19, &qword_27C76E9E0);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F198], &qword_27C76E9E0);
    v48 = v47;
    sub_20B520158(v45, &qword_27C76E9E0);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C76E9E0);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C76E9E8, &qword_27C76E9E0);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C76E9E0);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_152;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD63E80(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9D0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13AB54();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C76E9D0);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C76E9D0);
    sub_20B520158(v19, &qword_27C76E9D0);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F280], &qword_27C76E9D0);
    v48 = v47;
    sub_20B520158(v45, &qword_27C76E9D0);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C76E9D0);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C76E9D8, &qword_27C76E9D0);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C76E9D0);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_135;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD64908(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13AB74();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C767318);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C767318);
    sub_20B520158(v19, &qword_27C767318);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F298], &qword_27C767318);
    v48 = v47;
    sub_20B520158(v45, &qword_27C767318);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C767318);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C767320, &qword_27C767318);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C767318);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_113;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD65390(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767328);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13A944();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C767328);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C767328);
    sub_20B520158(v19, &qword_27C767328);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F118], &qword_27C767328);
    v48 = v47;
    sub_20B520158(v45, &qword_27C767328);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C767328);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C767330, &qword_27C767328);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C767328);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_96_1;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD65E18(void (*a1)(char *, uint64_t), int a2, double a3)
{
  v118 = a1;
  v111 = sub_20C13C4B4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_20C13C4F4();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_20C13C514();
  v105 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v103 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v92 - v10;
  v98 = sub_20C13BB84();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673E8);
  MEMORY[0x28223BE20](v114);
  v93 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v92 - v15;
  MEMORY[0x28223BE20](v16);
  v96 = &v92 - v17;
  v100 = sub_20C13A9B4();
  v18 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v117 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v92 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9C8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v99 = &v92 - v25;
  v116 = sub_20C134054();
  v26 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v92 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v101 = *(v32 - 8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v33;
  MEMORY[0x28223BE20](v35);
  v122 = &v92 - v36;
  swift_beginAccess();
  v121 = v3;
  v37 = *(v3 + 56);
  v38 = *(v37 + 16);
  v120 = a2;
  v113 = v12;
  if (v38)
  {

    v39 = sub_20B65B078(a2);
    if (v40)
    {
      sub_20BA15784(*(v37 + 56) + *(v117 + 72) * v39, v122);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }
  }

  else
  {
    v41 = 1;
  }

  v42 = *(v117 + 56);
  v43 = v41;
  v44 = v112;
  v42(v122, v43, 1, v112);
  v42(v34, 1, 1, v44);
  v45 = v121;
  swift_beginAccess();
  v115 = v34;
  sub_20C0C0FC4(v34, v120);
  swift_endAccess();
  sub_20C13A9A4();
  sub_20C134044();
  v47 = v46;
  v48 = *(v26 + 8);
  v49 = v116;
  v48(v31, v116);
  sub_20C13A9A4();
  sub_20C134034();
  v51 = v50;
  v48(v28, v49);
  v52 = *(v45 + 64);
  v53 = v100;
  v54 = v18;
  v55 = v23;
  if (*(v52 + 16))
  {

    v56 = sub_20B65B078(v120);
    if (v57)
    {
      v58 = *(*(v52 + 56) + 8 * v56);

      swift_beginAccess();
      v59 = *(v58 + 16);
      if (*(v59 + 16))
      {
        v60 = v92;
        sub_20BA15784(v59 + ((*(v117 + 80) + 32) & ~*(v117 + 80)), v92);

        sub_20B51CC64(v60 + *(v112 + 20), aBlock);
        sub_20BD6D070(v60, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E9A0);
        v61 = v99;
        v62 = swift_dynamicCast();
        (*(v54 + 56))(v61, v62 ^ 1u, 1, v53);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v61 = v99;
  (*(v54 + 56))(v99, 1, 1, v53);
LABEL_14:
  sub_20B52F9E8(v61, v55, &qword_27C76E9C8);
  v63 = (*(v54 + 48))(v55, 1, v53);
  v64 = v115;
  if (v63 == 1)
  {
    sub_20B520158(v55, &qword_27C76E9C8);
    sub_20B520158(v61, &qword_27C76E9C8);
  }

  else
  {
    v65 = v47 + v51;
    v66 = v94;
    (*(v54 + 32))(v94, v55, v53);
    sub_20C13A9A4();
    sub_20C134044();
    v68 = v67;
    v48(v31, v116);
    (*(v54 + 8))(v66, v53);
    sub_20B520158(v61, &qword_27C76E9C8);
    if (v68 == v65)
    {
      goto LABEL_21;
    }
  }

  v69 = v96;
  (*(v54 + 16))(v96, v118, v53);
  *(v69 + *(v114 + 28)) = a3;
  v70 = v113;
  sub_20C13B4A4();
  v71 = v95;
  sub_20B52F9E8(v69, v95, &qword_27C7673E8);
  v72 = sub_20C13BB74();
  v73 = sub_20C13D1F4();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v74 = 136446210;
    v76 = v93;
    sub_20B52F9E8(v71, v93, &qword_27C7673E8);
    sub_20B520158(v71, &qword_27C7673E8);
    v77 = sub_20BD54FF0(MEMORY[0x277D4F148], &qword_27C7673E8);
    v79 = v78;
    sub_20B520158(v76, &qword_27C7673E8);
    v80 = sub_20B51E694(v77, v79, aBlock);

    *(v74 + 4) = v80;
    _os_log_impl(&dword_20B517000, v72, v73, "publishing %{public}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v81 = v75;
    v64 = v115;
    MEMORY[0x20F2F6A40](v81, -1, -1);
    MEMORY[0x20F2F6A40](v74, -1, -1);

    (*(v97 + 8))(v113, v98);
  }

  else
  {
    sub_20B520158(v71, &qword_27C7673E8);

    (*(v97 + 8))(v70, v98);
  }

  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C7673F0, &qword_27C7673E8);
  sub_20C13A764();
  sub_20B520158(v69, &qword_27C7673E8);
LABEL_21:
  sub_20B5E2E18();
  v82 = sub_20C13D374();
  v83 = v103;
  sub_20C13C504();
  v84 = v104;
  sub_20C13C574();
  v118 = *(v105 + 8);
  v118(v83, v119);
  sub_20B52F9E8(v122, v64, &unk_27C772B50);
  v85 = (*(v101 + 80) + 25) & ~*(v101 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = v121;
  *(v86 + 24) = v120;
  sub_20B5DF134(v64, v86 + v85, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v86;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_83_0;
  v87 = _Block_copy(aBlock);

  v88 = v106;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v89 = v108;
  v90 = v111;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v84, v88, v89, v87);
  _Block_release(v87);

  (*(v110 + 8))(v89, v90);
  (*(v107 + 8))(v88, v109);
  v118(v84, v119);
  return sub_20B520158(v122, &unk_27C772B50);
}

uint64_t sub_20BD66D08(uint64_t a1, int a2, double a3)
{
  LODWORD(v5) = a2;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13C4F4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C13C514();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  v65 = sub_20C13BB84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767368);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  swift_beginAccess();
  v79 = v13;
  v80 = v3;
  v29 = *(v3 + 56);
  v30 = *(v29 + 16);
  v82 = v28;
  v77 = v14;
  v78 = v25;
  if (v30)
  {

    v31 = sub_20B65B078(v5);
    if (v32)
    {
      v33 = v31;
      v34 = v5;
      v5 = *(v29 + 56);
      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v36 = *(v35 - 8);
      v37 = v5 + *(v36 + 72) * v33;
      LODWORD(v5) = v34;
      v14 = v77;
      v38 = v82;
      sub_20BA15784(v37, v82);

      (*(v36 + 56))(v38, 0, 1, v35);
      v25 = v78;
    }

    else
    {

      v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
    }
  }

  else
  {
    v35 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  swift_beginAccess();
  sub_20C0C0FC4(v25, v5);
  swift_endAccess();
  v39 = sub_20C13A874();
  (*(*(v39 - 8) + 16))(v22, v63, v39);
  *&v22[*(v14 + 28)] = a3;
  v40 = v79;
  sub_20C13B4A4();
  sub_20B52F9E8(v22, v19, &qword_27C767368);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    LODWORD(v63) = v5;
    v5 = v43;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v5 = 136446210;
    v45 = v16;
    sub_20B52F9E8(v19, v16, &qword_27C767368);
    sub_20B520158(v19, &qword_27C767368);
    v46 = sub_20BD54FF0(MEMORY[0x277D4F0E8], &qword_27C767368);
    v48 = v47;
    sub_20B520158(v45, &qword_27C767368);
    v49 = sub_20B51E694(v46, v48, aBlock);

    *(v5 + 4) = v49;
    _os_log_impl(&dword_20B517000, v41, v42, "publishing %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    v50 = v5;
    LOBYTE(v5) = v63;
    MEMORY[0x20F2F6A40](v50, -1, -1);

    (*(v64 + 8))(v79, v65);
  }

  else
  {
    sub_20B520158(v19, &qword_27C767368);

    (*(v64 + 8))(v40, v65);
  }

  v51 = v80;
  swift_getObjectType();
  sub_20B6D6ABC(&qword_27C767370, &qword_27C767368);
  sub_20C13A764();
  sub_20B520158(v22, &qword_27C767368);
  sub_20B5E2E18();
  v52 = sub_20C13D374();
  v53 = v68;
  sub_20C13C504();
  v54 = v69;
  sub_20C13C574();
  v79 = *(v70 + 8);
  v79(v53, v81);
  v55 = v78;
  sub_20B52F9E8(v82, v78, &unk_27C772B50);
  v56 = (*(v66 + 80) + 25) & ~*(v66 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v5;
  sub_20B5DF134(v55, v57 + v56, &unk_27C772B50);
  aBlock[4] = sub_20BD6D810;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_221;
  v58 = _Block_copy(aBlock);

  v59 = v71;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v60 = v73;
  v61 = v76;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v54, v59, v60, v58);
  _Block_release(v58);

  (*(v75 + 8))(v60, v61);
  (*(v72 + 8))(v59, v74);
  v79(v54, v81);
  return sub_20B520158(v82, &unk_27C772B50);
}

uint64_t sub_20BD67790(int a1, int a2, int a3, double a4, double a5, double a6)
{
  v7 = v6;
  v57 = a1;
  v70 = sub_20C13C4B4();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_20C13C4F4();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C13C514();
  v64 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v55 - v17;
  v18 = sub_20C13BB84();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  swift_beginAccess();
  v27 = *(v6 + 56);
  if (*(v27 + 16))
  {
    v62 = a2;

    v28 = sub_20B65B078(a3);
    if (v29)
    {
      v30 = v28;
      v55 = v26;
      v31 = a3;
      v32 = *(v27 + 56);
      v33 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v34 = *(v33 - 8);
      v56 = v18;
      v35 = v34;
      v36 = v32 + *(v34 + 72) * v30;
      a3 = v31;
      v26 = v55;
      sub_20BA15784(v36, v55);

      (*(v35 + 56))(v26, 0, 1, v33);
      v18 = v56;
    }

    else
    {

      v33 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
    }

    LOBYTE(a2) = v62;
  }

  else
  {
    v33 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
    (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
  }

  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
  swift_beginAccess();
  v62 = a3;
  sub_20C0C0FC4(v23, a3);
  swift_endAccess();
  LOBYTE(v77) = v57;
  *(&v77 + 1) = a4;
  *&v78 = a5;
  BYTE8(v78) = a2 & 1;
  v79 = a6;
  aBlock = v77;
  v74 = v78;
  v75 = *&a6;
  sub_20C13B4A4();
  v37 = sub_20C13BB74();
  v38 = sub_20C13D1F4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v56 = v18;
    v41 = v40;
    v72 = v40;
    *v39 = 136446210;
    v42 = sub_20BD55154();
    v44 = sub_20B51E694(v42, v43, &v72);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_20B517000, v37, v38, "publishing %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x20F2F6A40](v41, -1, -1);
    MEMORY[0x20F2F6A40](v39, -1, -1);

    (*(v58 + 8))(v20, v56);
  }

  else
  {

    (*(v58 + 8))(v20, v18);
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767388);
  sub_20B6D6ABC(&qword_27C767390, &qword_27C767388);
  sub_20C13A764();
  sub_20B5E2E18();
  v58 = sub_20C13D374();
  v45 = v61;
  sub_20C13C504();
  v46 = v63;
  sub_20C13C574();
  v64 = *(v64 + 8);
  (v64)(v45, v71);
  sub_20B52F9E8(v26, v23, &unk_27C772B50);
  v47 = (*(v59 + 80) + 25) & ~*(v59 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v7;
  *(v48 + 24) = v62;
  sub_20B5DF134(v23, v48 + v47, &unk_27C772B50);
  v75 = sub_20BD6D810;
  v76 = v48;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v74 = sub_20B7B548C;
  *(&v74 + 1) = &block_descriptor_74_0;
  v49 = _Block_copy(&aBlock);

  v50 = v65;
  sub_20C13C4D4();
  *&aBlock = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v51 = v67;
  v52 = v70;
  sub_20C13DA94();
  v53 = v58;
  MEMORY[0x20F2F4A80](v46, v50, v51, v49);
  _Block_release(v49);

  (*(v69 + 8))(v51, v52);
  (*(v66 + 8))(v50, v68);
  (v64)(v46, v71);
  return sub_20B520158(v26, &unk_27C772B50);
}

uint64_t sub_20BD6813C(int a1, int a2, double a3, double a4, double a5)
{
  v6 = v5;
  LODWORD(v11) = a1;
  v12 = sub_20C13C4B4();
  v66 = *(v12 - 8);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = sub_20C13C4F4();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_20C13C514();
  v61 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v58 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v60 = &v52[-v17];
  v55 = sub_20C13BB84();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v56 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v52[-v24];
  swift_beginAccess();
  v26 = *(v5 + 56);
  if (*(v26 + 16))
  {

    v27 = sub_20B65B078(a2);
    if (v28)
    {
      v29 = v27;
      v59 = v25;
      v30 = a2;
      v31 = *(v26 + 56);
      v32 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v33 = *(v32 - 8);
      v53 = v11;
      v11 = v33;
      v34 = v31 + *(v33 + 72) * v29;
      a2 = v30;
      v25 = v59;
      sub_20BA15784(v34, v59);

      (*(v11 + 56))(v25, 0, 1, v32);
      LOBYTE(v11) = v53;
      goto LABEL_6;
    }
  }

  v32 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
LABEL_6:
  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v32 - 8) + 56))(v22, 1, 1, v32);
  swift_beginAccess();
  LODWORD(v59) = a2;
  sub_20C0C0FC4(v22, a2);
  swift_endAccess();
  LOBYTE(aBlock) = v11;
  v71 = *&a3;
  v72 = *&a4;
  v73 = a5;
  sub_20C13B4A4();
  v35 = sub_20C13BB74();
  v36 = sub_20C13D1F4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69 = v38;
    *v37 = 136446210;
    v39 = sub_20BD552A0();
    v41 = sub_20B51E694(v39, v40, &v69);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_20B517000, v35, v36, "publishing %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x20F2F6A40](v38, -1, -1);
    MEMORY[0x20F2F6A40](v37, -1, -1);
  }

  (*(v54 + 8))(v19, v55);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673A8);
  sub_20B6D6ABC(&qword_27C7673B0, &qword_27C7673A8);
  sub_20C13A764();
  sub_20B5E2E18();
  v55 = sub_20C13D374();
  v42 = v58;
  sub_20C13C504();
  v43 = v60;
  sub_20C13C574();
  v61 = *(v61 + 8);
  (v61)(v42, v68);
  sub_20B52F9E8(v25, v22, &unk_27C772B50);
  v44 = (*(v56 + 80) + 25) & ~*(v56 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v6;
  *(v45 + 24) = v59;
  sub_20B5DF134(v22, v45 + v44, &unk_27C772B50);
  v74 = sub_20BD6D810;
  v75 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_20B7B548C;
  v73 = COERCE_DOUBLE(&block_descriptor_51_1);
  v46 = _Block_copy(&aBlock);

  v47 = v62;
  sub_20C13C4D4();
  aBlock = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v48 = v64;
  v49 = v67;
  sub_20C13DA94();
  v50 = v55;
  MEMORY[0x20F2F4A80](v43, v47, v48, v46);
  _Block_release(v46);

  (*(v66 + 8))(v48, v49);
  (*(v63 + 8))(v47, v65);
  (v61)(v43, v68);
  return sub_20B520158(v25, &unk_27C772B50);
}

uint64_t sub_20BD68A1C(int a1, int a2, double a3, double a4)
{
  v5 = v4;
  LODWORD(v8) = a1;
  v10 = sub_20C13C4B4();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_20C13C4F4();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_20C13C514();
  v59 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v56 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v58 = &v50[-v15];
  v53 = sub_20C13BB84();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v17 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v50[-v22];
  swift_beginAccess();
  v24 = *(v4 + 56);
  if (*(v24 + 16))
  {

    v25 = sub_20B65B078(a2);
    if (v26)
    {
      v27 = v25;
      v57 = v23;
      v28 = a2;
      v29 = *(v24 + 56);
      v30 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
      v31 = *(v30 - 8);
      v51 = v8;
      v8 = v31;
      v32 = v29 + *(v31 + 72) * v27;
      a2 = v28;
      v23 = v57;
      sub_20BA15784(v32, v57);

      (*(v8 + 56))(v23, 0, 1, v30);
      LOBYTE(v8) = v51;
      goto LABEL_6;
    }
  }

  v30 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
LABEL_6:
  type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
  swift_beginAccess();
  LODWORD(v57) = a2;
  sub_20C0C0FC4(v20, a2);
  swift_endAccess();
  aBlock = a3;
  LOBYTE(v69) = v8;
  v70 = *&a4;
  sub_20C13B4A4();
  v33 = sub_20C13BB74();
  v34 = sub_20C13D1F4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v67 = v36;
    *v35 = 136446210;
    v37 = sub_20BD553F4();
    v39 = sub_20B51E694(v37, v38, &v67);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_20B517000, v33, v34, "publishing %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x20F2F6A40](v36, -1, -1);
    MEMORY[0x20F2F6A40](v35, -1, -1);
  }

  (*(v52 + 8))(v17, v53);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673C8);
  sub_20B6D6ABC(&qword_27C7673D0, &qword_27C7673C8);
  sub_20C13A764();
  sub_20B5E2E18();
  v53 = sub_20C13D374();
  v40 = v56;
  sub_20C13C504();
  v41 = v58;
  sub_20C13C574();
  v59 = *(v59 + 8);
  (v59)(v40, v66);
  sub_20B52F9E8(v23, v20, &unk_27C772B50);
  v42 = (*(v54 + 80) + 25) & ~*(v54 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v5;
  *(v43 + 24) = v57;
  sub_20B5DF134(v20, v43 + v42, &unk_27C772B50);
  v72 = sub_20BD6CE88;
  v73 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_20B7B548C;
  v71 = &block_descriptor_34_1;
  v44 = _Block_copy(&aBlock);

  v45 = v60;
  sub_20C13C4D4();
  aBlock = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v46 = v62;
  v47 = v65;
  sub_20C13DA94();
  v48 = v53;
  MEMORY[0x20F2F4A80](v41, v45, v46, v44);
  _Block_release(v44);

  (*(v64 + 8))(v46, v47);
  (*(v61 + 8))(v45, v63);
  (v59)(v41, v66);
  return sub_20B520158(v23, &unk_27C772B50);
}

uint64_t sub_20BD692D4(uint64_t a1, char a2, uint64_t a3)
{
  v44 = sub_20C13BB84();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BD697BC(a2);
  sub_20B52F9E8(a3, v10, &unk_27C772B50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_20B520158(v10, &unk_27C772B50);
  }

  sub_20BC49548(v10, v14);
  v16 = *(v11 + 24);
  v37 = v14;
  v17 = *&v14[v16];
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v43 = (v6 + 8);
  v36 = 0x800000020C191AD0;

  v23 = 0;
  *&v24 = 136446210;
  v38 = v24;
  v39 = v17;
  v40 = a1;
  v25 = v42;
  while (v21)
  {
LABEL_13:
    v27 = *(*(v17 + 48) + (__clz(__rbit64(v21)) | (v23 << 6)));
    sub_20C13B4A4();
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = v38;
      v41 = v31;
      if (v27 > 3)
      {
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            v32 = 0xE300000000000000;
            v33 = 7172210;
          }

          else
          {
            v33 = 7172211;
            v32 = 0xE300000000000000;
          }
        }

        else if (v27 == 4)
        {
          v32 = 0xE700000000000000;
          v33 = 0x7363697274656DLL;
        }

        else
        {
          v33 = 0xD000000000000013;
          v32 = v36;
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v33 = 0x57656E696C636E69;
          v32 = 0xEB000000006B6C61;
        }

        else
        {
          v32 = 0xE900000000000079;
          v33 = 0x7469736E65746E69;
        }
      }

      else if (v27)
      {
        v32 = 0xEA00000000006E75;
        v33 = 0x52656E696C636E69;
      }

      else
      {
        v32 = 0xE700000000000000;
        v33 = 0x7261426E727562;
      }

      v34 = sub_20B51E694(v33, v32, &v45);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_20B517000, v28, v29, "dequeueing other blocked queue: %{public}s", v30, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      MEMORY[0x20F2F6A40](v30, -1, -1);

      v25 = v42;
      (*v43)(v42, v44);
      v17 = v39;
    }

    else
    {

      (*v43)(v25, v44);
    }

    v21 &= v21 - 1;
    result = sub_20BD697BC(v27);
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      sub_20BD6D070(v37, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
    }

    v21 = *(v18 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BD697BC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  swift_beginAccess();
  v17 = *(v1 + 56);
  if (*(v17 + 16))
  {

    v18 = sub_20B65B078(a1);
    if (v19)
    {
      sub_20BA15784(*(v17 + 56) + *(v5 + 72) * v18, v16);

      (*(v5 + 56))(v16, 0, 1, v4);
      return sub_20B520158(v16, &unk_27C772B50);
    }
  }

  v33 = v7;
  v21 = *(v5 + 56);
  v21(v16, 1, 1, v4);
  sub_20B520158(v16, &unk_27C772B50);
  v22 = *(v2 + 64);
  if (!*(v22 + 16))
  {
    goto LABEL_16;
  }

  v23 = sub_20B65B078(a1);
  if ((v24 & 1) == 0)
  {

LABEL_16:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  swift_beginAccess();
  v26 = *(v25 + 16);
  if (*(v26 + 16))
  {
    swift_beginAccess();
    sub_20BA15784(v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v13);
    sub_20B7A371C(0, 1);
    swift_endAccess();
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v21(v13, v27, 1, v4);
  swift_beginAccess();
  sub_20C0C0FC4(v13, a1);
  result = swift_endAccess();
  v28 = *(v2 + 56);
  if (*(v28 + 16))
  {

    v29 = sub_20B65B078(a1);
    if (v30)
    {
      v31 = v33;
      sub_20BA15784(*(v28 + 56) + *(v5 + 72) * v29, v33);

      v32 = sub_20BC49548(v31, v10);
      (*&v10[*(v4 + 28)])(v32);
      return sub_20BD6D070(v10, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20BD69BC0()
{
  swift_getObjectType();
  sub_20C13B224();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A854();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AD54();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AA44();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AB54();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD69E78(uint64_t a1)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v5, 0x401F333333333333, 0, MEMORY[0x277D4F5D0], &off_2822BA218, &unk_2822E36C0, sub_20BD6D468, MEMORY[0x277D4F5C8]);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BD69FF4(uint64_t a1)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v5, 0x401F333333333333, 0, MEMORY[0x277D4F0C8], &off_2822BA230, &unk_2822E35F8, sub_20BD6D410, MEMORY[0x277D4F0C0]);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BD6A170(uint64_t a1)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v5, 0x401F333333333333, 0, MEMORY[0x277D4F378], &off_2822BA248, &unk_2822E3530, sub_20BD6D3B8, MEMORY[0x277D4F370]);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BD6A2EC(uint64_t a1)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v5, 0x401F333333333333, 0, MEMORY[0x277D4F198], &off_2822BA260, &unk_2822E3468, sub_20BD6D360, MEMORY[0x277D4F190]);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BD6A468(uint64_t a1)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C132E84();
    sub_20BD557E4(a1, 5u, 0, 1, 0, 1, v5, 0x401F333333333333, 0, MEMORY[0x277D4F280], &off_2822BA278, &unk_2822E33A0, sub_20BD6D308, MEMORY[0x277D4F278]);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BD6A5E4()
{
  swift_getObjectType();
  sub_20C13AB74();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A944();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD6A734(uint64_t a1)
{
  v2 = sub_20C132E94();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C133D14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = a1;
  sub_20C13AB64();
  v12 = sub_20C133CE4();
  v14 = v13;
  v16 = v15;
  v17 = *(v6 + 8);
  result = v17(v11, v5);
  if ((v16 & 1) == 0)
  {
    return sub_20B583F4C(v12, v14, 0);
  }

  if (v12 > 3u)
  {
    if (v12 == 4)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v22 = v25;
      sub_20C13AB64();
      sub_20C133CF4();
      v24 = v23;
      v17(v8, v5);
      sub_20C132E84();
      sub_20BD557E4(v22, 5u, 0x3FD999999999999ALL, 0, 0x3FE6666666666666, 0, v4, v24, 0, MEMORY[0x277D4F298], &off_282299340, &unk_2822E32D8, sub_20BD6D1AC, MEMORY[0x277D4F290]);
      goto LABEL_14;
    }

    if (v12 != 5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v12 - 2 < 2)
  {
LABEL_10:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = v25;
    sub_20C13AB64();
    sub_20C133CF4();
    v21 = v20;
    v17(v8, v5);
    sub_20C132E84();
    sub_20BD557E4(v19, 4u, 0, 1, 0, 1, v4, v21, 0, MEMORY[0x277D4F298], &off_282299340, &unk_2822E32D8, sub_20BD6D1AC, MEMORY[0x277D4F290]);
    goto LABEL_14;
  }

  if (v12)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20C132E84();
      sub_20BD557E4(v25, 4u, 0, 1, 0, 1, v4, 0, 1u, MEMORY[0x277D4F298], &off_282299340, &unk_2822E32D8, sub_20BD6D1AC, MEMORY[0x277D4F290]);
LABEL_14:

      return (*(v26 + 8))(v4, v27);
    }
  }

  return result;
}

uint64_t sub_20BD6AB88(uint64_t a1)
{
  v2 = sub_20C133D14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13A934();
  v6 = sub_20C133CE4();
  v8 = v7;
  v10 = v9;
  result = (*(v3 + 8))(v5, v2);
  if ((v10 & 1) == 0)
  {
    return sub_20B583F4C(v6, v8, 0);
  }

  if (v6 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + 24);
      }

      else
      {
        v13 = 0.0;
      }

      sub_20BD65390(a1, 4, v13);
    }
  }

  return result;
}

uint64_t sub_20BD6AD14()
{
  swift_getObjectType();
  sub_20C13AC54();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A9B4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD6AE64(uint64_t a1)
{
  v2 = sub_20C132E94();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134054();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = a1;
  sub_20C13AC44();
  v12 = sub_20C134024();
  v14 = v13;
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v10, v4);
  v18 = v16 >> 5;
  if (v18 <= 1)
  {
    if (v16 >> 5)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_20C13AC44();
      sub_20C134034();
      v30 = v29;
      v17(v7, v4);
      v22 = v31;
      sub_20C132E84();
      sub_20BD557E4(v11, 2u, 0, 1, 0, 1, v22, v30, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
    }

    else
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_20C13AC44();
      sub_20C134034();
      v24 = v23;
      v17(v7, v4);
      v22 = v31;
      sub_20C132E84();
      sub_20BD557E4(v11, 1u, 0, 1, 0, 1, v22, v24, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
    }
  }

  else if (v18 == 2)
  {
    sub_20B8C3888(v12, v14, v16);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C13AC44();
    sub_20C134034();
    v26 = v25;
    v17(v7, v4);
    v22 = v31;
    sub_20C132E84();
    sub_20BD557E4(v11, 3u, 0, 1, 0, 1, v22, v26, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
  }

  else if (v18 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C13AC44();
    sub_20C134034();
    v21 = v20;
    v17(v7, v4);
    v22 = v31;
    sub_20C132E84();
    sub_20BD557E4(v11, 6u, 0, 1, 0, 1, v22, v21, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C13AC44();
    sub_20C134034();
    v28 = v27;
    v17(v7, v4);
    v22 = v31;
    sub_20C132E84();
    sub_20BD557E4(v11, 7u, 0, 1, 0, 1, v22, v28, 0, MEMORY[0x277D4F2E8], &off_2822D4D00, &unk_2822E3260, sub_20BD6D170, MEMORY[0x277D4F2E0]);
  }

  return (*(v32 + 8))(v22, v33);
}

uint64_t sub_20BD6B3F0(void (*a1)(char *, uint64_t))
{
  v2 = sub_20C134054();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  sub_20C13A9A4();
  v9 = *(v3 + 8);
  v9(v8, v2);
  sub_20C13A9A4();
  v10 = sub_20C134024();
  v12 = v11;
  v14 = v13;
  v9(v5, v2);
  v15 = v14 >> 5;
  if (v15 <= 1)
  {
    if (v14 >> 5)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v18 = *(Strong + 24);
      }

      else
      {
        v18 = 0.0;
      }

      v23 = a1;
      v24 = 2;
    }

    else
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      if (v19)
      {
        v18 = *(v19 + 24);
      }

      else
      {
        v18 = 0.0;
      }

      v23 = a1;
      v24 = 1;
    }
  }

  else if (v15 == 2)
  {
    sub_20B8C3888(v10, v12, v14);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v18 = *(v20 + 24);
    }

    else
    {
      v18 = 0.0;
    }

    v23 = a1;
    v24 = 3;
  }

  else if (v15 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      v18 = *(v17 + 24);
    }

    else
    {
      v18 = 0.0;
    }

    v23 = a1;
    v24 = 6;
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v18 = *(v21 + 24);
    }

    else
    {
      v18 = 0.0;
    }

    v23 = a1;
    v24 = 7;
  }

  sub_20BD65E18(v23, v24, v18);
}