id sub_20B8E9518()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.2];
  qword_27C79AB18 = result;
  return result;
}

char *sub_20B8E9558(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = _UISolariumEnabled();
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout];
  *v13 = xmmword_20C161560;
  v14 = 20.0;
  *(v13 + 2) = 0x4024000000000000;
  if (v12)
  {
    v14 = 30.0;
  }

  *(v13 + 3) = v14;
  *(v13 + 2) = xmmword_20C15FDA0;
  *(v13 + 7) = 0;
  *(v13 + 8) = 0;
  *(v13 + 6) = 0;
  *(v13 + 72) = xmmword_20C161570;
  *(v13 + 88) = xmmword_20C161580;
  *(v13 + 104) = xmmword_20C161590;
  *(v13 + 120) = vdupq_n_s64(0x4046000000000000uLL);
  *(v13 + 136) = xmmword_20C1615A0;
  *(v13 + 152) = xmmword_20C1615A0;
  v15 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277D76938];
  v19 = [v17 preferredFontForTextStyle_];
  [v16 setFont_];

  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  [v16 setTextColor_];

  v22 = v16;
  LODWORD(v23) = 1148846080;
  [v22 setContentHuggingPriority:1 forAxis:v23];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  [v22 setAdjustsFontForContentSizeCategory_];
  *&v5[v15] = v22;
  v24 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView;
  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v26 = *MEMORY[0x277D76940];
  v27 = objc_opt_self();
  v28 = [v27 configurationWithTextStyle_];
  [v25 setPreferredSymbolConfiguration_];

  v29 = v25;
  v30 = [v20 &off_277D9A0B8 + 6];
  [v29 setTintColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v31) = v98;
  [v29 setContentHuggingPriority:0 forAxis:v31];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v24] = v29;
  v32 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView;
  v33 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v27 configurationWithTextStyle_];
  [v33 setPreferredSymbolConfiguration_];

  v35 = [v20 labelColor];
  [v33 setTintColor_];

  v96 = 1065353216;
  v97 = 1144750080;
  sub_20C13BB94();
  LODWORD(v36) = v98;
  [v33 setContentHuggingPriority:0 forAxis:v36];

  *&v5[v32] = v33;
  v5[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 1;
  v5[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 0;
  v95.receiver = v5;
  v95.super_class = type metadata accessor for TVFilterOptionsCell();
  v37 = objc_msgSendSuper2(&v95, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  v39 = *&v37[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView];
  v40 = objc_opt_self();
  v41 = v37;
  v42 = v39;
  v43 = [v40 configurationWithStyle_];
  [v42 setFocusAnimationConfiguration_];

  [*&v37[v38] setFocusedSizeIncrease_];
  v44 = *&v37[v38];
  v45 = [v20 clearColor];
  [v44 setBackgroundColor:v45 forState:4];

  result = [*&v37[v38] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v47 = result;
  v48 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel;
  [result addSubview_];

  v49 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView;
  [*&v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView] setContentMode_];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = result;
  [result addSubview_];

  v51 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView;
  [*&v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView] setContentMode_];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v52 = result;
  v94 = v51;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_20C1615B0;
  v54 = [*&v41[v49] leadingAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v55 = result;
  v56 = [result leadingAnchor];

  v57 = &v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout];
  v58 = [v54 constraintEqualToAnchor:v56 constant:*&v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout + 96]];

  *(v53 + 32) = v58;
  v59 = [*&v41[v49] widthAnchor];
  v60 = [v59 constraintEqualToConstant_];

  *(v53 + 40) = v60;
  v61 = [*&v41[v49] heightAnchor];
  v62 = [v61 constraintGreaterThanOrEqualToConstant_];

  *(v53 + 48) = v62;
  v63 = [*&v41[v49] centerYAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v64 = result;
  v65 = [result centerYAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  *(v53 + 56) = v66;
  v67 = [*&v41[v48] leadingAnchor];
  v68 = [*&v41[v49] trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:v57[18]];

  *(v53 + 64) = v69;
  v70 = [*&v41[v48] trailingAnchor];
  v71 = [*&v41[v94] leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-v57[20]];

  *(v53 + 72) = v72;
  v73 = [*&v41[v48] topAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v74 = result;
  v75 = [result topAnchor];

  v76 = [v73 constraintEqualToAnchor:v75 constant:v57[17]];
  *(v53 + 80) = v76;
  v77 = [*&v41[v48] bottomAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v78 = result;
  v79 = [result bottomAnchor];

  v80 = [v77 constraintEqualToAnchor:v79 constant:-v57[19]];
  *(v53 + 88) = v80;
  v81 = [*&v41[v94] leadingAnchor];
  v82 = [*&v41[v48] trailingAnchor];
  v83 = [v81 constraintGreaterThanOrEqualToAnchor:v82 constant:v57[7]];

  *(v53 + 96) = v83;
  v84 = [*&v41[v94] trailingAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v85 = result;
  v86 = [result trailingAnchor];

  v87 = [v84 constraintEqualToAnchor:v86 constant:-v57[9]];
  *(v53 + 104) = v87;
  v88 = [*&v41[v94] centerYAnchor];
  result = [*&v37[v38] contentView];
  if (result)
  {
    v89 = result;

    v90 = objc_opt_self();
    v91 = [v89 centerYAnchor];

    v92 = [v88 constraintEqualToAnchor_];
    *(v53 + 112) = v92;
    sub_20B51C88C(0, &qword_281100500);
    v93 = sub_20C13CC54();

    [v90 activateConstraints_];

    return v41;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_20B8EA1AC(void *a1, void *a2)
{
  v21.receiver = v2;
  v21.super_class = type metadata accessor for TVFilterOptionsCell();
  objc_msgSendSuper2(&v21, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb) == 1)
  {
    v5 = [a1 nextFocusedView];
    if (v5)
    {
      v6 = v5;
      v7 = [v2 superview];
      if (!v7)
      {

        return;
      }

      v8 = v7;
      sub_20B51C88C(0, &qword_27C7654B0);
      if (sub_20C13D5F4())
      {
        if (([v6 isDescendantOfView_] & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:

        return;
      }

      v9 = [v6 isDescendantOfView_];
      v10 = [v6 isDescendantOfView_];
      if (v9)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else if (v10)
      {
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = sub_20B8EC7BC;
        v20 = v11;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v12 = &block_descriptor_37;
LABEL_14:
        v17 = sub_20B7B548C;
        v18 = v12;
        v14 = _Block_copy(&v15);

        [a2 addCoordinatedAnimations:v14 completion:{0, v15, v16}];

        _Block_release(v14);
        return;
      }

LABEL_13:
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = sub_20B8EC79C;
      v20 = v13;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v12 = &block_descriptor_33;
      goto LABEL_14;
    }
  }
}

void sub_20B8EA42C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView);

    [v4 setAlpha_];
  }
}

void sub_20B8EA6DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v22[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v25, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v22[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v26 = v14;
    sub_20B6FFB30(v22, *&v3[*v7]);

    v15 = sub_20B8E9218(v26);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v22);
        v18 = *&v3[v6];
        v19 = v23;
        v20 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v20 + 16))(v18, a2 & 1, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v22);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[*v7] setControlState:v5 animated:a2 & 1];
  sub_20B8EAD08(v5);
}

void sub_20B8EA964(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = aBlock[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[*v7]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[*v7] setControlState:v5 withAnimationCoordinator:a2];
  if (a2)
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v5;
    v27 = sub_20B8EC794;
    v28 = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_44;
    v23 = _Block_copy(aBlock);

    [a2 addCoordinatedAnimations:v23 completion:0];
    _Block_release(v23);
  }
}

void sub_20B8EACAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_20B8EAD08(a2);
  }
}

void sub_20B8EAD08(uint64_t a1)
{
  v3 = objc_opt_self();
  if ((a1 & 8) != 0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = &selRef_whiteColor;
  if ((a1 & 8) != 0)
  {
    v5 = &selRef_blackColor;
  }

  v6 = [v3 *v5];
  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
  v8 = v6;
  [v7 setTextColor_];
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView];
  [v9 setTintColor_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView] setAlpha_];
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView];
  [v10 setTintColor_];

  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  v11 = [objc_opt_self() configurationWithTextStyle_];
  v23 = v11;
  if (a1)
  {
    if (a1 == 4)
    {
      v16 = v11;
      v17 = sub_20C13C914();
      v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

      [v9 setImage_];
      [v9 &selRef:1.0 traitCollectionWithPreferredContentSizeCategory:?];
      [v10 &selRef:1.0 traitCollectionWithPreferredContentSizeCategory:?];
      [v7 &selRef:1.0 traitCollectionWithPreferredContentSizeCategory:?];
    }

    else if (a1 == 2)
    {
      if (v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] == 1)
      {
        v12 = v11;
        v13 = sub_20C13C914();
        v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

        if (v14)
        {
          v15 = [v14 imageFlippedForRightToLeftLayoutDirection];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      [v9 setImage_];

      [v9 setAlpha_];
      [v7 setAlpha_];
      [v10 setAlpha_];
      [v7 setNumberOfLines_];
      [v7 setLineBreakMode_];
    }
  }

  else
  {
    if (v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] == 1)
    {
      v19 = v11;
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

      if (v21)
      {
        v22 = [v21 imageFlippedForRightToLeftLayoutDirection];
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

    [v9 setImage_];

    [v9 setAlpha_];
    [v10 setAlpha_];
    [v7 setAlpha_];
  }

  [v1 layoutIfNeeded];
}

void sub_20B8EB17C()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView);
}

id sub_20B8EB1FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterOptionsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFilterOptionsCell()
{
  result = qword_27C767840;
  if (!qword_27C767840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8EB314()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8EB3D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B8EB3F8(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *result = (a2 - 1);
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

  *(result + 168) = v3;
  return result;
}

uint64_t sub_20B8EB45C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B8EB4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8EB500(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B8EB578(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v10 <= 37)
  {
    if (v10 > 16)
    {
      if (v10 != 17)
      {
        if (v10 != 21)
        {
          if (v10 != 26)
          {
            goto LABEL_62;
          }

          goto LABEL_37;
        }

        v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 0;
        if (v46)
        {
          v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 1;
          v15 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
          if (!*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState])
          {

LABEL_117:
            [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:0 animated:0];
            sub_20B8EAD08(0);
            v106 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
            v107 = sub_20C13C914();
            [v106 setText_];

            v108 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView];
            v109 = [objc_opt_self() configurationWithTextStyle_];
            v110 = sub_20C13C914();
            v111 = [objc_opt_self() smm:v110 systemImageNamed:v109 withConfiguration:?];

            [v108 setImage_];
            sub_20B8EC750(v45, v46);

            return;
          }

          *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 0;

          v48 = [v2 contentView];
          v49 = [v48 subviews];

          sub_20B51C88C(0, &qword_27C762910);
          v18 = sub_20C13CC74();

          v122[0] = MEMORY[0x277D84FA0];
          if (v18 >> 62)
          {
            v50 = sub_20C13DB34();
            v120 = v45;
            i = v14;
            if (v50)
            {
LABEL_53:
              v119 = v47;
              v51 = 0;
              v21 = v18 & 0xC000000000000001;
              v14 = v18 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v21)
                {
                  v52 = MEMORY[0x20F2F5430](v51, v18);
                }

                else
                {
                  if (v51 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_84;
                  }

                  v52 = *(v18 + 8 * v51 + 32);
                }

                v53 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  goto LABEL_83;
                }

                sub_20B6FFB30(&v125, v52);

                ++v51;
              }

              while (v53 != v50);
              v70 = v122[0];
              v45 = v120;
              goto LABEL_112;
            }
          }

          else
          {
            v50 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v120 = v45;
            i = v14;
            if (v50)
            {
              goto LABEL_53;
            }
          }

          v70 = MEMORY[0x277D84FA0];
LABEL_112:

          v126 = v70;
          sub_20B6FFB30(v122, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

          v100 = sub_20B8E9218(v126);

          v101 = *(v100 + 16);
          if (v101)
          {
            v102 = v100 + 32;
            do
            {
              sub_20B51CC64(v102, v122);
              v103 = *&v2[v15];
              v104 = v123;
              v105 = v124;
              __swift_project_boxed_opaque_existential_1(v122, v123);
              (*(v105 + 16))(v103, 0, v104, v105);
              __swift_destroy_boxed_opaque_existential_1(v122);
              v102 += 40;
              --v101;
            }

            while (v101);

            v45 = v120;
          }

          else
          {
          }

          goto LABEL_117;
        }

        v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
        v15 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
        if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] == 2)
        {
LABEL_124:
          [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:2 animated:0];
          sub_20B8EAD08(2);
          [*&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel] setText_];
          [*&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView] setImage_];
          sub_20B8EC750(v45, 0);
          return;
        }

        *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 2;
        v63 = [v2 contentView];
        v64 = [v63 subviews];

        sub_20B51C88C(0, &qword_27C762910);
        v18 = sub_20C13CC74();

        v122[0] = MEMORY[0x277D84FA0];
        if (v18 >> 62)
        {
          v65 = sub_20C13DB34();
          i = v14;
          if (v65)
          {
LABEL_68:
            v119 = v47;
            v120 = v45;
            v66 = 0;
            v21 = v18 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v67 = MEMORY[0x20F2F5430](v66, v18);
              }

              else
              {
                if (v66 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_86;
                }

                v67 = *(v18 + 8 * v66 + 32);
              }

              v68 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_85;
              }

              sub_20B6FFB30(&v125, v67);

              ++v66;
            }

            while (v68 != v65);
            v71 = v122[0];
            v45 = v120;
            goto LABEL_120;
          }
        }

        else
        {
          v65 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          i = v14;
          if (v65)
          {
            goto LABEL_68;
          }
        }

        v71 = MEMORY[0x277D84FA0];
LABEL_120:

        v126 = v71;
        sub_20B6FFB30(v122, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

        v112 = sub_20B8E9218(v126);

        v113 = *(v112 + 16);
        if (v113)
        {
          v114 = v112 + 32;
          do
          {
            sub_20B51CC64(v114, v122);
            v115 = *&v2[v15];
            v116 = v123;
            v117 = v124;
            __swift_project_boxed_opaque_existential_1(v122, v123);
            (*(v117 + 16))(v115, 0, v116, v117);
            __swift_destroy_boxed_opaque_existential_1(v122);
            v114 += 40;
            --v113;
          }

          while (v113);
        }

        goto LABEL_124;
      }

LABEL_37:
      v34 = ((a1 & 0xFFFFFFFFFFFFFF8) + 16);
      v35 = ((a1 & 0xFFFFFFFFFFFFFF8) + 24);
      v36 = ((a1 & 0xFFFFFFFFFFFFFF8) + 32);
LABEL_38:
      v37 = *v35;
      v38 = *v34;
      v15 = *v36;

      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 1;
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
      v14 = qword_20C161678[v38];
      v21 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != v14)
      {
        v120 = v37;
        *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v14;
        v39 = [v2 contentView];
        v40 = [v39 subviews];

        sub_20B51C88C(0, &qword_27C762910);
        v18 = sub_20C13CC74();

        v122[0] = MEMORY[0x277D84FA0];
        if (v18 >> 62)
        {
          goto LABEL_87;
        }

        v41 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        for (i = v15; v41; i = v15)
        {
          v42 = 0;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x20F2F5430](v42, v18);
            }

            else
            {
              if (v42 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_78;
              }

              v43 = *(v18 + 8 * v42 + 32);
            }

            v15 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            sub_20B6FFB30(&v125, v43);

            ++v42;
            if (v15 == v41)
            {
              v44 = v122[0];
              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          v41 = sub_20C13DB34();
        }

        v44 = MEMORY[0x277D84FA0];
LABEL_89:

        v126 = v44;
        sub_20B6FFB30(v122, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

        v72 = sub_20B8E9218(v126);

        v73 = *(v72 + 16);
        if (v73)
        {
          v74 = v72 + 32;
          do
          {
            sub_20B51CC64(v74, v122);
            v75 = *&v2[v21];
            v76 = v123;
            v77 = v124;
            __swift_project_boxed_opaque_existential_1(v122, v123);
            (*(v77 + 16))(v75, 0, v76, v77);
            __swift_destroy_boxed_opaque_existential_1(v122);
            v74 += 40;
            --v73;
          }

          while (v73);
        }
      }

      [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:v14 animated:0];
      sub_20B8EAD08(v14);
      v78 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
      v79 = sub_20C13C914();

      [v78 setText_];

      goto LABEL_94;
    }

    if (v10 == 6)
    {
      goto LABEL_37;
    }

    if (v10 == 13)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 1;
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
      v27 = qword_20C161678[v23];
      v28 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] == v27)
      {
LABEL_109:
        [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:v27 animated:0];
        sub_20B8EAD08(v27);
        v98 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
        v122[0] = v25;
        v122[1] = v24;

        MEMORY[0x20F2F4230](v26, v14);
        v99 = sub_20C13C914();

        [v98 setText_];

LABEL_94:
        [*&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView] setImage_];
        return;
      }

      v118 = v24;
      v119 = v14;
      *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v27;
      v29 = [v2 contentView];
      v30 = [v29 subviews];

      sub_20B51C88C(0, &qword_27C762910);
      v18 = sub_20C13CC74();

      v122[0] = MEMORY[0x277D84FA0];
      if (v18 >> 62)
      {
        v31 = sub_20C13DB34();
        v120 = v26;
        i = v25;
        if (v31)
        {
LABEL_27:
          v32 = 0;
          v21 = v18 & 0xC000000000000001;
          v15 = v18 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v21)
            {
              v33 = MEMORY[0x20F2F5430](v32, v18);
            }

            else
            {
              if (v32 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v33 = *(v18 + 8 * v32 + 32);
            }

            v14 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_81;
            }

            sub_20B6FFB30(&v125, v33);

            ++v32;
          }

          while (v14 != v31);
          v25 = i;
          v69 = v122[0];
          goto LABEL_104;
        }
      }

      else
      {
        v31 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v120 = v26;
        i = v25;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v69 = MEMORY[0x277D84FA0];
LABEL_104:

      v126 = v69;
      sub_20B6FFB30(v122, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

      v92 = sub_20B8E9218(v126);

      v93 = *(v92 + 16);
      if (v93)
      {
        v94 = v92 + 32;
        do
        {
          sub_20B51CC64(v94, v122);
          v95 = *&v2[v28];
          v96 = v123;
          v97 = v124;
          __swift_project_boxed_opaque_existential_1(v122, v123);
          (*(v97 + 16))(v95, 0, v96, v97);
          __swift_destroy_boxed_opaque_existential_1(v122);
          v94 += 40;
          --v93;
        }

        while (v93);

        v14 = v119;
        v26 = v120;
        v24 = v118;
        v25 = i;
      }

      else
      {

        v14 = v119;
        v26 = v120;
        v24 = v118;
      }

      goto LABEL_109;
    }

    goto LABEL_62;
  }

  if (v10 <= 57)
  {
    if (v10 == 38 || v10 == 55)
    {
      goto LABEL_37;
    }

    goto LABEL_62;
  }

  switch(v10)
  {
    case ':':
      goto LABEL_37;
    case '<':
      v34 = swift_projectBox();
      v35 = (v34 + 8);
      v36 = (v34 + 16);
      goto LABEL_38;
    case 'C':
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v14 = *(v11 + 40);
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 1;
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
      v15 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      if (!*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState])
      {
LABEL_101:
        [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:0 animated:{0, v7}];
        sub_20B8EAD08(0);
        v86 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
        v87 = sub_20C13C914();
        [v86 setText_];

        v88 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView];
        v89 = [objc_opt_self() configurationWithTextStyle_];
        v90 = sub_20C13C914();
        v91 = [objc_opt_self() smm:v90 systemImageNamed:v89 withConfiguration:?];

        [v88 setImage_];
        return;
      }

      v119 = v12;
      *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 0;
      v16 = [v2 contentView];
      v17 = [v16 subviews];

      sub_20B51C88C(0, &qword_27C762910);
      v18 = sub_20C13CC74();

      i = v14;
      v122[0] = MEMORY[0x277D84FA0];
      v120 = v13;
      if (v18 >> 62)
      {
        v19 = sub_20C13DB34();
        if (v19)
        {
LABEL_14:
          v20 = 0;
          v21 = v18 & 0xC000000000000001;
          do
          {
            if (v21)
            {
              v22 = MEMORY[0x20F2F5430](v20, v18);
            }

            else
            {
              if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_80;
              }

              v22 = *(v18 + 8 * v20 + 32);
            }

            v14 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_79;
            }

            sub_20B6FFB30(&v125, v22);

            ++v20;
          }

          while (v14 != v19);
          v62 = v122[0];
          goto LABEL_97;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_14;
        }
      }

      v62 = MEMORY[0x277D84FA0];
LABEL_97:

      v126 = v62;
      sub_20B6FFB30(v122, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

      v80 = sub_20B8E9218(v126);

      v81 = *(v80 + 16);
      if (v81)
      {
        v82 = v80 + 32;
        do
        {
          sub_20B51CC64(v82, v122);
          v83 = *&v2[v15];
          v84 = v123;
          v85 = v124;
          __swift_project_boxed_opaque_existential_1(v122, v123);
          (*(v85 + 16))(v83, 0, v84, v85);
          __swift_destroy_boxed_opaque_existential_1(v122);
          v82 += 40;
          --v81;
        }

        while (v81);
      }

      goto LABEL_101;
  }

LABEL_62:
  v54 = v6;
  sub_20C13B534();

  v55 = sub_20C13BB74();
  v56 = sub_20C13D1D4();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v122[0] = v58;
    *v57 = 141558274;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2080;
    v126 = a1;

    v59 = sub_20C13C9D4();
    v61 = sub_20B51E694(v59, v60, v122);

    *(v57 + 14) = v61;
    _os_log_impl(&dword_20B517000, v55, v56, "Trying to configure filter options cell with: %{mask.hash}s", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x20F2F6A40](v58, -1, -1);
    MEMORY[0x20F2F6A40](v57, -1, -1);
  }

  (*(v5 + 8))(v9, v54);
}

uint64_t sub_20B8EC750(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_20B8EC7DC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = _UISolariumEnabled();
  v5 = v1 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout;
  *v5 = xmmword_20C161560;
  v6 = 20.0;
  *(v5 + 16) = 0x4024000000000000;
  if (v4)
  {
    v6 = 30.0;
  }

  *(v5 + 24) = v6;
  *(v5 + 32) = xmmword_20C15FDA0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = xmmword_20C161570;
  *(v5 + 88) = xmmword_20C161580;
  *(v5 + 104) = xmmword_20C161590;
  *(v5 + 120) = vdupq_n_s64(0x4046000000000000uLL);
  *(v5 + 136) = xmmword_20C1615A0;
  *(v5 + 152) = xmmword_20C1615A0;
  v7 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D76938];
  v11 = [v9 preferredFontForTextStyle_];
  [v8 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v8 setTextColor_];

  v14 = v8;
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  [v14 setAdjustsFontForContentSizeCategory_];
  *(v1 + v7) = v14;
  v16 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView;
  v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v18 = *MEMORY[0x277D76940];
  v19 = objc_opt_self();
  v20 = [v19 configurationWithTextStyle_];
  [v17 setPreferredSymbolConfiguration_];

  v21 = v17;
  v22 = [v12 &off_277D9A0B8 + 6];
  [v21 setTintColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v23) = v29;
  [v21 setContentHuggingPriority:0 forAxis:v23];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v16) = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView;
  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v19 configurationWithTextStyle_];
  [v25 setPreferredSymbolConfiguration_];

  v27 = [v12 labelColor];
  [v25 setTintColor_];

  sub_20C13BB94();
  LODWORD(v28) = v29;
  [v25 setContentHuggingPriority:0 forAxis:v28];

  *(v1 + v24) = v25;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell) = 1;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8ECC8C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v55 = sub_20C13C5F4();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v52 = sub_20C13C5A4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1352E4();
  v16 = *(v15 - 8);
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 title];
  if (v20)
  {
    v21 = v20;
    v44 = sub_20C13C954();
    v23 = v22;
  }

  else
  {
    v44 = 0;
    v23 = 0xE000000000000000;
  }

  (*(v16 + 104))(v19, *MEMORY[0x277D517A0], v15);
  v24 = sub_20BEF4B50(a2, a3);
  v25 = sub_20C1349B4();
  v46 = v19;
  v27 = v26;
  sub_20C13C594();
  sub_20C13C5C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10);
  inited = swift_initStackObject();
  v45 = v14;
  v48 = v15;
  v29 = v10;
  v43 = v10;
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_20C152DF0;
  v47 = v16;
  v30 = MEMORY[0x277D837D0];
  v31 = v44;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v31;
  *(inited + 56) = v23;
  *(inited + 72) = v30;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = sub_20C1352D4();
  *(inited + 104) = v32;
  *(inited + 120) = v30;
  *(inited + 128) = 0x6973736572706D69;
  v33 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = -1;
  *(inited + 168) = v33;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v30;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v25;
  *(inited + 200) = v27;
  v34 = sub_20B6B1778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v34;
  sub_20BEF5D68(v24, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, &v56);

  v36 = v53;
  v37 = v55;
  (*(v53 + 16))(v51, v29, v55);
  v38 = v50;
  v39 = v45;
  v40 = v52;
  (*(v50 + 16))(v49, v45, v52);
  v41 = MEMORY[0x277D84F90];
  sub_20C0B8920(MEMORY[0x277D84F90]);
  sub_20C0B8920(v41);
  sub_20C13C604();
  (*(v36 + 8))(v43, v37);
  (*(v38 + 8))(v39, v40);
  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_20B8ED200()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context;
  v2 = sub_20C13C654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MarketingOverlayImpressionsTracker()
{
  result = qword_27C767868;
  if (!qword_27C767868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8ED2F8()
{
  result = sub_20C13C654();
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

unint64_t sub_20B8ED39C(uint64_t a1)
{
  result = sub_20B8ED3C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20B8ED3C4()
{
  result = qword_27C76FD30;
  if (!qword_27C76FD30)
  {
    type metadata accessor for MarketingOverlayImpressionsTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76FD30);
  }

  return result;
}

void *sub_20B8ED41C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20B8ED44C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
  v12 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v13 = *&qword_27C79ACA0;
  v14 = [v12 config];
  [v14 setCornerRadius_];

  *&v4[v11] = v12;
  v15 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v20 = &v4[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout];
  sub_20B8F1610(v70);
  v21 = v70[5];
  *(v20 + 4) = v70[4];
  *(v20 + 5) = v21;
  *(v20 + 12) = v71;
  v22 = v70[1];
  *v20 = v70[0];
  *(v20 + 1) = v22;
  v23 = v70[3];
  *(v20 + 2) = v70[2];
  *(v20 + 3) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide;
  *&v4[v24] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v25 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v26 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView;
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView] = v25;
  [v25 setCornerRadius_];
  [*&v4[v26] setContinuousCornerEnabled_];
  [*&v4[v26] setRoundContentWhenDeselected_];
  [*&v4[v26] setFocusedSizeIncrease_];
  [*&v4[v26] setContentMotionRotation:0.0 translation:{0.0, *(v20 + 3), *(v20 + 4)}];
  v27 = *&v4[v26];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 configurationWithStyle_];
  [v29 setFocusAnimationConfiguration_];

  [*&v4[v26] setShadowVerticalOffset_];
  [*&v4[v26] setShadowOpacity:0 forUserInterfaceStyle:*(v20 + 6)];
  [*&v4[v26] setShadowOpacity:2 forUserInterfaceStyle:*(v20 + 6)];
  [*&v4[v26] setShadowOpacity:1 forUserInterfaceStyle:*(v20 + 6)];
  [*&v4[v26] setShadowRadius_];
  v69.receiver = v4;
  v69.super_class = type metadata accessor for TVDynamicBrickItemCell();
  v31 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = [v31 contentView];
  v33 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView;
  [v32 addSubview_];

  v34 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
  v35 = [*&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView] config];
  v66 = &v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout];
  [v35 setScaleSizeIncrease_];

  v67 = v33;
  result = [*&v31[v33] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v37 = result;
  [result addSubview_];

  v38 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer;
  v39 = *&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C151490;
  sub_20B51C88C(0, &qword_27C765490);
  v41 = v39;
  *(v40 + 32) = sub_20C13D5D4();
  *(v40 + 40) = sub_20C13D5D4();
  v42 = sub_20C13CC54();

  [v41 setLocations_];

  [*&v31[v38] setStartPoint_];
  [*&v31[v38] setEndPoint_];
  v43 = *&v31[v38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C14F320;
  v45 = objc_opt_self();
  v46 = v43;
  v47 = [v45 blackColor];
  v48 = [v47 colorWithAlphaComponent_];

  v49 = [v48 CGColor];
  type metadata accessor for CGColor(0);
  v51 = v50;
  *(v44 + 56) = v50;
  *(v44 + 32) = v49;
  v52 = [v45 blackColor];
  v53 = [v52 colorWithAlphaComponent_];

  v54 = [v53 CGColor];
  *(v44 + 88) = v51;
  *(v44 + 64) = v54;
  v55 = sub_20C13CC54();

  [v46 setColors_];

  result = [*&v31[v67] contentView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v56 = result;
  v57 = [result layer];

  [v57 addSublayer_];
  v58 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel;
  [*&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel] setFont_];
  v59 = *&v31[v58];
  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
  v60 = v59;
  sub_20C13BBA4();
  LODWORD(v61) = v68;
  [v60 setContentCompressionResistancePriority:1 forAxis:v61];

  v62 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel;
  [*&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel] setFont_];
  result = [*&v31[v67] contentView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v63 = result;
  [result addSubview_];

  result = [*&v31[v67] contentView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v64 = result;
  [result addSubview_];

  result = [*&v31[v67] contentView];
  if (result)
  {
    v65 = result;
    [result addLayoutGuide_];

    sub_20B8EE6E8();
    return v31;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_20B8EDDDC()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for TVDynamicBrickItemCell();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
  v11 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [v11 setFrame_];
}

id sub_20B8EE0AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = v24[0];
          v7 = 0x27C767000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v14;
    sub_20B6FFB30(v24, *&v3[*(v7 + 2192)]);

    v15 = sub_20B8E9218(v28);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v7;
      v18 = v15 + 32;
      do
      {
        sub_20B51CC64(v18, v24);
        v19 = *&v3[v6];
        v20 = v25;
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 16))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v18 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = v17;
    }

    else
    {

      v5 = a1;
    }
  }

  return [*&v3[*(v7 + 2192)] setControlState:v5 animated:a2 & 1];
}

void sub_20B8EE334(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = aBlock[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[v7[274]]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[v7[274]] setControlState:v5 withAnimationCoordinator:a2];
  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v5;
    *(v21 + 24) = v3;
    v27 = sub_20B8F15DC;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_45;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20B8EE6E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView];
  v5 = [v4 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v3[4] = v8;
  v9 = [v4 trailingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 &selRef:v11 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v13) = v79;
  [v12 setPriority_];
  v3[5] = v12;
  v14 = [v4 topAnchor];
  v15 = [v1 contentView];
  v16 = [v15 &selRef_setLineBreakMode_];

  v17 = [v14 &selRef:v16 alertControllerReleasedDictationButton:? + 5];
  v3[6] = v17;
  v18 = [v4 bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 &selRef_secondaryLabel + 5];

  v21 = [v18 &selRef:v20 alertControllerReleasedDictationButton:? + 5];
  v3[7] = v21;
  v22 = [v4 widthAnchor];
  v23 = [v1 contentView];
  v24 = [v23 &selRef_traitCollection + 6];

  v25 = [v22 &selRef:v24 alertControllerReleasedDictationButton:? + 5];
  v3[8] = v25;
  v26 = v3;
  v77 = v4;
  v78 = v3;
  v27 = [v4 heightAnchor];
  v28 = [v4 &selRef_traitCollection + 6];
  v29 = &v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout];
  v30 = [v27 constraintEqualToAnchor:v28 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout]];

  sub_20C13BBA4();
  LODWORD(v31) = v79;
  [v30 setPriority_];
  v26[9] = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151490;
  v33 = *&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide];
  v34 = [v33 centerXAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerXAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v32 + 32) = v37;
  v76 = v32;
  v38 = [v33 &selRef_traitCollection + 6];
  v39 = [v1 contentView];
  v40 = [v39 &selRef_traitCollection + 6];

  v41 = [v38 constraintEqualToAnchor:v40 multiplier:v29[12]];
  *(v32 + 40) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150050;
  v43 = *&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel];
  v44 = [v43 leadingAnchor];
  v45 = [v33 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v42 + 32) = v46;
  v47 = [v43 trailingAnchor];
  v48 = [v33 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v42 + 40) = v49;
  v50 = [v43 centerYAnchor];
  v51 = [v1 contentView];
  v52 = [v51 centerYAnchor];

  v53 = [v50 &selRef:v52 alertControllerReleasedDictationButton:? + 5];
  *(v42 + 48) = v53;
  v54 = [v43 topAnchor];
  v55 = [v1 contentView];
  v56 = [v55 topAnchor];

  v57 = v29[11];
  v58 = [v54 constraintGreaterThanOrEqualToAnchor:v56 constant:v57];

  *(v42 + 56) = v58;
  v59 = [v43 bottomAnchor];
  v60 = *&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel];
  v61 = [v60 topAnchor];
  v62 = [v59 constraintLessThanOrEqualToAnchor_];

  *(v42 + 64) = v62;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_20C150040;
  v64 = [v60 leadingAnchor];
  v65 = [v33 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v63 + 32) = v66;
  v67 = [v60 trailingAnchor];
  v68 = [v33 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v63 + 40) = v69;
  v70 = [v60 bottomAnchor];
  v71 = [v77 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-v57];

  *(v63 + 48) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 32) = v78;
  *(inited + 40) = v76;
  *(inited + 48) = v42;
  *(inited + 56) = v63;
  v74 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v75 = sub_20C13CC54();

  [v74 activateConstraints_];
}

void sub_20B8EF098()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout + 72);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide);
}

id sub_20B8EF168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVDynamicBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVDynamicBrickItemCell()
{
  result = qword_27C7678B0;
  if (!qword_27C7678B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8EF2C8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B8EF3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B8EF3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B8EF460(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B8EF4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B8EF514(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

id sub_20B8EF5B8(uint64_t a1, void *a2)
{
  sub_20B51C88C(0, &qword_27C762070);
  sub_20C1341D4();
  v3 = sub_20C13D5A4();
  [a2 setTextColor_];

  v4 = sub_20C1341C4();
  if (v6)
  {
    v7 = qword_20C161888[v4];
  }

  else
  {
    sub_20B583F4C(v4, v5, 0);
    v7 = 4;
  }

  return [a2 setTextAlignment_];
}

uint64_t sub_20B8EF674(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20B8EFB60(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v226 = *(v2 - 8);
  v227 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v209 = v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v210 = v192 - v9;
  v208 = v10;
  MEMORY[0x28223BE20](v11);
  v211 = v192 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v13 - 8);
  v216 = v192 - v14;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v16 = v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v15;
  MEMORY[0x28223BE20](v17);
  v218 = v192 - v18;
  v19 = sub_20C1391C4();
  v215 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_20C138A64();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v219 = v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v23 - 8);
  v214 = v192 - v24;
  v228 = sub_20C13C554();
  v232 = *(v228 - 1);
  MEMORY[0x28223BE20](v228);
  v231 = (v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20C137C24();
  v237 = *(v26 - 8);
  v238 = v26;
  MEMORY[0x28223BE20](v26);
  v221 = v192 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = v27;
  MEMORY[0x28223BE20](v28);
  v236 = v192 - v29;
  v225 = sub_20C136CD4();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v233 = v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v234 = v192 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7678C0);
  MEMORY[0x28223BE20](v33 - 8);
  v229 = v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v192 - v36;
  v230 = sub_20C1341E4();
  v235 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v222 = v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = v192 - v40;
  v42 = sub_20C134014();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = v192 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v47 == 33)
  {
    v64 = v239;
    v65 = *&v239[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel];
    v66 = sub_20C13C914();
    [v65 setText_];

    v67 = *&v64[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel];
    v68 = sub_20C13C914();
    [v67 setText_];

    return sub_20BA1DA1C();
  }

  else if (v47 == 32)
  {
    v198 = v19;
    v199 = v21;
    v195 = v16;
    v196 = v6;
    v197 = v5;
    v227 = v46;
    v48 = v44;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v50 = swift_projectBox();
    v51 = v50 + *(v49 + 64);
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = *(v51 + 24);
    v56 = *(v51 + 32);
    v57 = *(v51 + 40);
    v203 = v43;
    v58 = *(v43 + 16);
    v204 = v48;
    v59 = v227;
    v58(v227, v50, v48);
    v60 = v52;
    v226 = v53;
    v200 = v54;
    v206 = v55;

    v202 = v56;

    v201 = v57;

    sub_20C133F44();
    v61 = v235;
    v62 = *(v235 + 48);
    v63 = v230;
    if (v62(v37, 1, v230) == 1)
    {
      sub_20B520158(v37, &qword_27C7678C0);
    }

    else
    {
      (*(v61 + 32))(v41, v37, v63);
      v81 = *&v239[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel];
      v82 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v83 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v83 setLineBreakMode_];
      v84 = v82;
      v85 = [v84 length];
      [v84 addAttribute:*MEMORY[0x277D74118] value:v83 range:{0, v85}];

      [v81 setAttributedText_];
      sub_20B8EF5B8(v41, v81);
      (*(v61 + 8))(v41, v63);
    }

    v86 = v233;
    v88 = v228;
    v87 = v229;
    sub_20C133F64();
    v89 = v62(v87, 1, v63);
    v205 = v60;
    if (v89 == 1)
    {
      sub_20B520158(v87, &qword_27C7678C0);
      v90 = v239;
    }

    else
    {
      v91 = v235;
      v92 = v222;
      (*(v235 + 32))(v222, v87, v63);
      v90 = v239;
      v93 = *&v239[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel];
      v94 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v95 = [v94 initWithAttributedString_];
      v96 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v96 setLineBreakMode_];
      v97 = v95;
      v98 = [v97 length];
      [v97 addAttribute:*MEMORY[0x277D74118] value:v96 range:{0, v98}];

      [v93 setAttributedText_];
      sub_20B8EF5B8(v92, v93);
      (*(v91 + 8))(v92, v63);
    }

    v99 = v234;
    sub_20C133F04();
    v230 = sub_20C138054();
    v101 = v100;
    sub_20C134E34();
    v102 = v236;
    sub_20C136CB4();
    v229 = sub_20C136CC4();
    v235 = v103;
    sub_20B51C88C(0, &qword_281100530);
    v104 = sub_20C13D374();
    v106 = v231;
    v105 = v232;
    *v231 = v104;
    (*(v105 + 13))(v106, *MEMORY[0x277D85200], v88);
    v107 = sub_20C13C584();
    result = (*(v105 + 1))(v106, v88);
    if (v107)
    {
      v108 = *&v90[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView];
      [v108 setContentMode_];
      if (sub_20B8EF674(v102, v108, 0))
      {
        v109 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v110 = v237;
        v111 = v238;
        v112 = *(v237 + 16);
        v113 = v221;
        v194 = v237 + 16;
        v193 = v112;
        v112(v221, v102, v238);
        v114 = *(v110 + 80);
        v115 = (v114 + 24) & ~v114;
        v192[0] = v223 + 7;
        v231 = v101;
        v232 = v108;
        v116 = (v223 + 7 + v115) & 0xFFFFFFFFFFFFFFF8;
        v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
        v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
        v228 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
        v222 = v114;
        v119 = swift_allocObject();
        *(v119 + 16) = v109;
        v120 = v110;
        v121 = v113;
        v122 = *(v120 + 32);
        v192[1] = v120 + 32;
        v122(v119 + v115, v121, v111);
        v123 = (v119 + v116);
        v124 = v230;
        v125 = v235;
        *v123 = v229;
        v123[1] = v125;
        v126 = (v119 + v117);
        v127 = v231;
        *v126 = v124;
        v126[1] = v127;
        *(v119 + v118) = 2;
        v128 = v228 + v119;
        *v128 = MEMORY[0x277D84F90];
        v128[8] = 0;
        v129 = (v119 + ((v118 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v129 = 0;
        v129[1] = 0;
        v130 = &v232[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v131 = *&v232[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v130 = sub_20B8F1394;
        v130[1] = v119;

        v132 = v232;
        sub_20B583ECC(v131);

        [v132 bounds];
        if (v133 <= 0.0 || (v135 = v134, v134 <= 0.0))
        {

          v155 = v238;
          v156 = v225;
          v102 = v236;
        }

        else
        {
          v136 = v133;
          v137 = ~v222;
          [v132 setStackImage_];
          v138 = v214;
          v102 = v236;
          v139 = v238;
          v228 = v122;
          v140 = v193;
          v193(v214, v236, v238);
          (*(v237 + 56))(v138, 0, 1, v139);
          v141 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v138, &v132[v141], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v142 = sub_20C13D5A4();
          [v132 setBackgroundColor_];

          v143 = &v132[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v143 = v136;
          v143[1] = v135;
          *(v143 + 16) = 0;
          v144 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v140(v121, v102, v139);
          v214 = v137;
          v145 = (v222 + 16) & v137;
          v146 = (v192[0] + v145) & 0xFFFFFFFFFFFFFFF8;
          v147 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
          v148 = swift_allocObject();
          (v228)(v148 + v145, v121, v139);
          *(v148 + v146) = v144;
          v149 = (v148 + v147);
          *v149 = v136;
          v149[1] = v135;
          v232 = v148;
          v150 = (v148 + ((v147 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v150 = 0;
          v150[1] = 0;
          v193(v121, v102, v139);
          (*(v215 + 104))(v199, *MEMORY[0x277D542A8], v198);

          v151 = v219;
          sub_20C138A54();
          v152 = v216;
          sub_20B5F1A50(v151, v216);
          v153 = v217;
          v154 = v220;
          if ((*(v217 + 48))(v152, 1) == 1)
          {
            sub_20B520158(v152, &unk_27C766670);
            sub_20BA1DA1C();

            (*(v212 + 8))(v151, v213);
          }

          else
          {
            v158 = v153;
            v235 = *(v153 + 32);
            (v235)(v218, v152, v154);
            v159 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v160 = v102;
            v161 = v238;
            v193(v121, v160, v238);
            v162 = (v222 + 40) & v214;
            v163 = v162 + v223;
            v164 = (v162 + v223) & 0xFFFFFFFFFFFFFFF8;
            v165 = swift_allocObject();
            *(v165 + 2) = v159;
            v165[3] = v136;
            v165[4] = v135;
            (v228)(v165 + v162, v121, v161);
            *(v165 + v163) = 0;
            v166 = v165 + v164;
            *(v166 + 1) = 0;
            *(v166 + 2) = 0;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_20B8F1528;
            *(v167 + 24) = v165;
            v168 = v195;
            v169 = v154;
            (*(v158 + 16))(v195, v218, v154);
            v170 = v158;
            v171 = (*(v158 + 80) + 16) & ~*(v158 + 80);
            v172 = (v207 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
            v173 = swift_allocObject();
            (v235)(v173 + v171, v168, v169);
            v174 = (v173 + v172);
            *v174 = sub_20B5F67A4;
            v174[1] = v167;
            v175 = v210;
            sub_20C137C94();
            v176 = swift_allocObject();
            v177 = v232;
            *(v176 + 16) = sub_20B8F146C;
            *(v176 + 24) = v177;
            v178 = swift_allocObject();
            *(v178 + 16) = sub_20B5F67D4;
            *(v178 + 24) = v176;
            v179 = v196;
            v180 = v209;
            v181 = v197;
            (*(v196 + 16))(v209, v175, v197);
            v182 = (*(v179 + 80) + 16) & ~*(v179 + 80);
            v183 = (v208 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
            v184 = swift_allocObject();
            v185 = v180;
            v102 = v236;
            (*(v179 + 32))(v184 + v182, v185, v181);
            v186 = (v184 + v183);
            *v186 = sub_20B5DF204;
            v186[1] = v178;

            v187 = v211;
            sub_20C137C94();
            v188 = *(v179 + 8);
            v188(v175, v181);
            v189 = sub_20C137CB4();
            v190 = swift_allocObject();
            *(v190 + 16) = 0;
            *(v190 + 24) = 0;
            v189(sub_20B52347C, v190);

            v188(v187, v181);
            (*(v170 + 8))(v218, v220);
            (*(v212 + 8))(v219, v213);
          }

          v155 = v238;
          v156 = v225;
        }

        v86 = v233;
        v99 = v234;
        v157 = v224;
        v59 = v227;
      }

      else
      {

        v155 = v238;
        v156 = v225;
        v157 = v224;
      }

      v191 = v205;
      (*(v237 + 8))(v102, v155);
      (*(v157 + 8))(v86, v156);

      sub_20B62A2AC(v99);
      return (*(v203 + 8))(v59, v204);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v70 = v239;
    v71 = sub_20C13BB74();
    v72 = sub_20C13D1D4();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v240[0] = v75;
      *v73 = 138543618;
      *(v73 + 4) = v70;
      *v74 = v70;
      *(v73 + 12) = 2082;
      v240[3] = a1;
      v76 = sub_20B5F66D0();
      v77 = v70;
      v78 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v76);
      v80 = sub_20B51E694(v78, v79, v240);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_20B517000, v71, v72, "Attempted to configure %{public}@ with item: %{public}s", v73, 0x16u);
      sub_20B520158(v74, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x20F2F6A40](v75, -1, -1);
      MEMORY[0x20F2F6A40](v73, -1, -1);
    }

    return (*(v226 + 1))(v4, v227);
  }

  return result;
}

void sub_20B8F1394()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA41D9C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B8F146C(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA630E0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B8F1528(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F27E8(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20B8F15DC(double a1)
{
  LODWORD(a1) = 1060320051;
  if ((*(v1 + 16) & 8) != 0)
  {
    *&a1 = 1.0;
  }

  return [*(*(v1 + 24) + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer) setOpacity_];
}

double sub_20B8F1610@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:256 variant:?];
  v4 = [v2 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1280 variant:?];
  *a1 = xmmword_20C161750;
  *(a1 + 16) = xmmword_20C161760;
  *(a1 + 32) = xmmword_20C161770;
  *(a1 + 48) = xmmword_20C161780;
  *(a1 + 64) = 0x4039000000000000;
  *(a1 + 72) = v3;
  *(a1 + 80) = v4;
  result = 35.0;
  *(a1 + 88) = xmmword_20C161790;
  return result;
}

void sub_20B8F16D4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
  v4 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v5 = *&qword_27C79ACA0;
  v6 = [v4 config];
  [v6 setCornerRadius_];

  *(v0 + v3) = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12 = v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout;
  sub_20B8F1610(v17);
  v13 = v17[5];
  *(v12 + 64) = v17[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v18;
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 16) = v14;
  v15 = v17[3];
  *(v12 + 32) = v17[2];
  *(v12 + 48) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8F1A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B8F1AC4@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t (*a3)(uint64_t)@<X3>, const char *a4@<X4>, const char *a5@<X5>, uint64_t a6@<X8>)
{
  v67 = a5;
  v65 = a4;
  v66 = a2;
  v69 = a6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  v72 = v8;
  v73 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v65 - v12;
  v13 = sub_20C137254();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v70 = &v65 - v21;
  v77 = *a1;
  v22 = a3(v20);
  v23 = v17;
  v24 = v22;
  v25 = v22 + 56;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v22 + 56);
  v29 = (v26 + 63) >> 6;
  v78 = (v14 + 32);
  v79 = v14;
  v74 = (v14 + 8);
  v75 = v14 + 16;

  v31 = 0;
  v32 = v76;
  if (v28)
  {
    while (1)
    {
      v33 = v31;
LABEL_8:
      v34 = v24;
      v35 = *(v24 + 48);
      v36 = v79;
      (*(v79 + 16))(v32, v35 + *(v79 + 72) * (__clz(__rbit64(v28)) | (v33 << 6)), v13);
      v37 = *(v36 + 32);
      v37(v23, v32, v13);
      if (sub_20C1371C4() == v77)
      {
        break;
      }

      v28 &= v28 - 1;
      result = (*v74)(v23, v13);
      v31 = v33;
      v24 = v34;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    v39 = v70;
    v37(v70, v23, v13);
    v38 = 0;
LABEL_12:
    v40 = v79;
    v41 = *(v79 + 56);
    v41(v39, v38, 1, v13);

    v42 = (*(v40 + 48))(v39, 1, v13);
    v44 = v72;
    v43 = v73;
    v45 = v71;
    if (v42 == 1)
    {
      v79 = v13;
      sub_20B8F1A20(v39);
      sub_20C13B534();
      v46 = sub_20C13BB74();
      v47 = sub_20C13D1D4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 141558274;
        *(v48 + 4) = 1752392040;
        *(v48 + 12) = 2048;
        *(v48 + 14) = v77;
        _os_log_impl(&dword_20B517000, v46, v47, v65, v48, 0x16u);
        MEMORY[0x20F2F6A40](v48, -1, -1);
      }

      v51 = *(v43 + 8);
      v49 = v43 + 8;
      v50 = v51;
      v51(v68, v44);
      sub_20C13B534();
      v52 = sub_20C13BB74();
      v53 = sub_20C13D1D4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v73 = v49;
        v56 = v55;
        v80 = v55;
        *v54 = 141558274;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2080;
        v57 = sub_20C134B94();
        v59 = v50;
        v60 = v41;
        v61 = sub_20B51E694(v57, v58, &v80);

        *(v54 + 14) = v61;
        v41 = v60;
        _os_log_impl(&dword_20B517000, v52, v53, v67, v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x20F2F6A40](v56, -1, -1);
        MEMORY[0x20F2F6A40](v54, -1, -1);

        v59(v71, v72);
      }

      else
      {

        v50(v45, v44);
      }

      v64 = 1;
      v63 = v69;
      v13 = v79;
    }

    else
    {
      v62 = v39;
      v63 = v69;
      (*v78)(v69, v62, v13);
      v64 = 0;
    }

    return (v41)(v63, v64, 1, v13);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v29)
      {

        v38 = 1;
        v39 = v70;
        goto LABEL_12;
      }

      v28 = *(v25 + 8 * v33);
      ++v31;
      if (v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for SkillLevelFilterUpdated()
{
  result = qword_27C7678C8;
  if (!qword_27C7678C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_20B8F2124()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 176) = 0;
  sub_20C13CEC4();
  *(v0 + 184) = v2;
  sub_20C13CEC4();
  *(v0 + 192) = v3;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v4 = *(&v20[0] + 1);
  *(v0 + 32) = *&v20[0];
  *(v0 + 40) = v4;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 48) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689E0);
  sub_20C133AA4();
  sub_20B51C710(v20, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920);
  sub_20C133AA4();
  sub_20B51C710(v20, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v20, v0 + 136);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_20C132964();
  v10 = v9;

  v1[28] = v8;
  v1[29] = v10;
  v11 = [v6 bundleForClass_];
  v12 = sub_20C132964();
  v14 = v13;

  v1[30] = v12;
  v1[31] = v14;
  v15 = [v6 bundleForClass_];
  v16 = sub_20C132964();
  v18 = v17;

  v1[32] = v16;
  v1[33] = v18;
  swift_getObjectType();
  sub_20C13B404();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v20);
  swift_getObjectType();
  sub_20C13B5A4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v20);
  swift_getObjectType();
  sub_20C13B414();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v20);

  return v1;
}

uint64_t sub_20B8F25F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void *sub_20B8F271C()
{
  if (v0[22])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  sub_20B8F2CBC();
  sub_20B583E6C((v0 + 2));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  swift_unknownObjectRelease();
  sub_20B583ECC(v0[26]);

  return v0;
}

uint64_t sub_20B8F27E8()
{
  sub_20B8F271C();

  return swift_deallocClassInstance();
}

uint64_t sub_20B8F2840()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v36 = &v36 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - v12;
  MEMORY[0x28223BE20](v13);
  v40 = &v36 - v14;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C139C54();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 1;
  v38 = v10;
  sub_20C137C94();
  v21 = *(v3 + 16);
  v22 = v7;
  v23 = v2;
  v21(v22, v10, v2);
  v24 = *(v3 + 80);
  v37 = v3;
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  v27 = *(v3 + 32);
  v27(v26 + v25, v36, v23);
  v28 = v39;
  v21(v39, v41, v23);
  v29 = swift_allocObject();
  v27(v29 + v25, v28, v23);
  v30 = (v29 + ((v25 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20B8F5774;
  v30[1] = v26;
  v31 = v40;
  sub_20C137C94();
  v32 = *(v37 + 8);
  v32(v38, v23);
  v32(v41, v23);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B5DF6DC, v34);

  return (v32)(v31, v23);
}

uint64_t sub_20B8F2CBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  sub_20C137C94();
  sub_20B51CC64(v1 + 56, v28);
  v18 = swift_allocObject();
  sub_20B51C710(v28, v18 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B8F5700;
  *(v19 + 24) = v18;
  (*(v3 + 16))(v5, v8, v2);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v5, v2);
  v22 = (v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_20B683080;
  v22[1] = v19;
  sub_20C137C94();
  v23 = *(v3 + 8);
  v23(v8, v2);
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_20B5DF6DC, v25);

  return (v23)(v11, v2);
}

uint64_t sub_20B8F309C()
{
  v1 = v0;
  v2 = sub_20C13C4A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[22])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  *v5 = 10;
  (*(v3 + 104))(v5, *MEMORY[0x277D85178], v2);
  sub_20B5E2E18();
  v6 = sub_20C13D374();
  swift_allocObject();
  swift_weakInit();

  v7 = sub_20C13AE04();

  (*(v3 + 8))(v5, v2);

  v1[22] = v7;
  swift_unknownObjectRelease();
  return sub_20B8F32FC();
}

uint64_t sub_20B8F329C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20B8F32FC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView;
  [*(Strong + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView) stopAnimating];
  v5 = *(v3 + v4);
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  result = sub_20C13DB34();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2F5430](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_7:
    v9 = v8;
LABEL_10:
    [v5 setImage_];
    swift_unknownObjectRelease();

LABEL_11:
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    sub_20B5E2E18();
    v11 = sub_20C13D374();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;

    v14 = sub_20C13AE34();

    swift_beginAccess();
    *(v10 + 16) = v14;

    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8F3518(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = sub_20BF10FF8();
      sub_20B71D310(v4, v5);
      swift_unknownObjectRelease();
    }
  }

  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20B51CC64(result + 136, v7);
      swift_unknownObjectRetain();

      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_20C13AE44();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_20B8F3650()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_20C13B484();
  sub_20C13BB64();
  v17 = *(v11 + 8);
  result = v17(v16, v10);
  if (*(v1 + 200) == 1)
  {
    v37 = v6;
    v38 = v9;
    sub_20C13B484();
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20B517000, v19, v20, "State was waiting, refreshing advertisement", v21, 2u);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    v17(v13, v10);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    v24 = v37;
    sub_20C137C94();
    sub_20B51CC64(v1 + 56, v42);
    v25 = swift_allocObject();
    sub_20B51C710(v42, v25 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20B8F56B0;
    *(v26 + 24) = v25;
    v28 = v39;
    v27 = v40;
    v29 = v41;
    (*(v39 + 16))(v41, v24, v40);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v31 = swift_allocObject();
    (*(v28 + 32))(v31 + v30, v29, v27);
    v32 = (v31 + ((v3 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_20B64B960;
    v32[1] = v26;
    v33 = v38;
    sub_20C137C94();
    v34 = *(v28 + 8);
    v34(v24, v27);
    v35 = sub_20C137CB4();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v35(sub_20B52347C, v36);

    return (v34)(v33, v27);
  }

  return result;
}

uint64_t sub_20B8F3AFC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  result = (*(v3 + 8))(v5, v2);
  if (*(v1 + 200) == 1)
  {
    sub_20C137904();
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_20C132964();
    v11 = v10;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BF133BC(v9, v11);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B8F3D2C(uint64_t a1)
{
  v35 = a1;
  v34 = sub_20C137724();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x28223BE20](v8);
  v37 = &v33 - v10;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 2;
  sub_20C137C94();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v34;
  (*(v1 + 16))(&v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v34);
  v19 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v1 + 32))(v20 + v19, &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B8F4E50;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B5D9CB0;
  *(v22 + 24) = v21;
  v23 = v36;
  v24 = v38;
  (*(v3 + 16))(v36, v7, v38);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  (*(v3 + 32))(v26 + v25, v23, v24);
  v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B5D9CCC;
  v27[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v28 = v37;
  sub_20C137C94();
  (*(v3 + 8))(v7, v24);
  v29 = v39;
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B52347C, v31);

  return (*(v40 + 8))(v28, v29);
}

uint64_t sub_20B8F429C()
{
  v0 = sub_20C136C64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C135174();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v9 = *(Strong + 208);
  sub_20B584050(v9);

  if (!v9)
  {
    return 1;
  }

  sub_20C137714();
  sub_20C137704();
  v9(v7, v3);
  sub_20B583ECC(v9);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return 0;
}

void sub_20B8F4484(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_retain_n();
  sub_20C13B484();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;

      sub_20B8F4ECC(a4, v12, a1, a2);
    }
  }

  else
  {

    v13 = sub_20C133C44();
    sub_20B526794(&qword_27C7662C8, MEMORY[0x277D50320]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D50318], v13);
    v16 = v14;
    v17 = 1;
    a1(&v16);
  }
}

uint64_t sub_20B8F46F8(uint64_t a1)
{
  v45 = a1;
  v1 = sub_20C1391E4();
  v2 = *(v1 - 8);
  v49 = v1;
  v50 = v2;
  MEMORY[0x28223BE20](v1);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134C44();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_20C135D24();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20C134F74();
  v23 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  v29 = *MEMORY[0x277D52E00];
  v30 = sub_20C136904();
  (*(*(v30 - 8) + 104))(v22, v29, v30);
  (*(v20 + 104))(v22, *MEMORY[0x277D52118], v19);
  v31 = sub_20C1333A4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v18, v45, v31);
  (*(v32 + 56))(v18, 0, 1, v31);
  v33 = sub_20C135664();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  v34 = sub_20C135674();
  (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
  sub_20C134F94();
  v35 = sub_20C134FB4();
  (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v37 = sub_20C135F14();
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  sub_20C134F54();
  v38 = v44;
  (*(v23 + 16))(v25, v28, v44);
  v39 = v48;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B526794(&qword_281103B30, MEMORY[0x277D542C0]);
  v40 = v49;
  sub_20C13A764();
  (*(v50 + 8))(v39, v40);
  return (*(v23 + 8))(v28, v38);
}

unint64_t sub_20B8F4DF0()
{
  result = qword_27C7678E0;
  if (!qword_27C7678E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7678E0);
  }

  return result;
}

uint64_t sub_20B8F4E50()
{
  sub_20C137724();

  return sub_20B8F429C();
}

uint64_t sub_20B8F4ECC(int a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v66 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v55 - v17;
  v18 = sub_20C1333A4();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x28223BE20](v18);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a1 != 1)
  {
    if (*(a2 + 200) != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v65 = a1;
    v58 = v15;
    v59 = v12;

    sub_20C13B484();

    v27 = sub_20C13BB74();
    v28 = sub_20C13D1F4();

    v29 = os_log_type_enabled(v27, v28);
    v60 = v9;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v57 = a4;
      v31 = v30;
      v55 = swift_slowAlloc();
      v69 = v55;
      *v31 = 136446466;
      LOBYTE(v67) = *(a2 + 200);
      v32 = sub_20B8F565C();
      v56 = a2;
      v33 = v32;
      v34 = MEMORY[0x20F2EFA40](&type metadata for RemoteBrowsingGuestPairingPresenter.State, v32);
      v36 = sub_20B51E694(v34, v35, &v69);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      v37 = v65;
      LOBYTE(v67) = v65;
      v38 = v33;
      a2 = v56;
      v39 = MEMORY[0x20F2EFA40](&type metadata for RemoteBrowsingGuestPairingPresenter.State, v38);
      v41 = sub_20B51E694(v39, v40, &v69);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_20B517000, v27, v28, "Guest Pairing Presenter State %{public}s -> %{public}s", v31, 0x16u);
      v42 = v55;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v42, -1, -1);
      MEMORY[0x20F2F6A40](v31, -1, -1);

      (*(v21 + 8))(v23, v20);
    }

    else
    {

      (*(v21 + 8))(v23, v20);
      v37 = v65;
    }

    *(a2 + 200) = v37;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      if (v37 != 1)
      {
        if (Strong)
        {
          sub_20BF138C8(*(a2 + 224), *(a2 + 232));
          swift_unknownObjectRelease();
        }

        v44 = *MEMORY[0x277D51818];
        v45 = sub_20C1352F4();
        v46 = *(v45 - 8);
        v47 = v62;
        (*(v46 + 104))(v62, v44, v45);
        (*(v46 + 56))(v47, 0, 1, v45);
        v48 = sub_20C132C14();
        (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
        v49 = sub_20C135ED4();
        (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
        v50 = sub_20C136914();
        (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
        v51 = v61;
        sub_20C133384();
        sub_20B8F46F8(v51);
        (*(v63 + 8))(v51, v64);
        goto LABEL_19;
      }

      if (Strong)
      {
        sub_20BF12D34(*(a2 + 224), *(a2 + 232));
LABEL_15:
        swift_unknownObjectRelease();
      }
    }

    else if (Strong)
    {
      sub_20BF11AA0();
      goto LABEL_15;
    }

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13E1D4();
    v52 = v69;
    v53 = v70;
    v67 = v69;
    v68 = v70;
    v66(&v67);
    sub_20B583FB8(v52, v53);
  }

  if (!*(a2 + 200))
  {
    goto LABEL_6;
  }

LABEL_4:
  v24 = sub_20C136094();
  sub_20B526794(&qword_27C767910, MEMORY[0x277D52688]);
  v25 = swift_allocError();
  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D52658], v24);
  v69 = v25;
  v70 = 1;

  v66(&v69);
}

unint64_t sub_20B8F565C()
{
  result = qword_27C767908;
  if (!qword_27C767908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767908);
  }

  return result;
}

uint64_t sub_20B8F5718(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return a1(v3, v4);
}

uint64_t sub_20B8F5774@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20BE700C0(v4, a1);
}

uint64_t sub_20B8F5800(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

id sub_20B8F59B8(double a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  [v4 setCornerRadius_];
  [v4 setContinuousCornerEnabled_];
  [v4 setRoundContentWhenDeselected_];
  v5 = 0.0;
  [v4 setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  v6 = [objc_opt_self() configurationWithStyle_];
  [v4 setFocusAnimationConfiguration_];

  [v4 setFocusedSizeIncrease_];
  [v4 setShadowRadius_];
  [v4 setShadowOpacity_];
  [v4 setShadowVerticalOffset_];
  [v4 setClipsContentToBounds_];
  if (_UISolariumEnabled())
  {
    v7 = objc_opt_self();
    v8 = [v7 configurationWithRotationOnAxis_];
    v9 = 0.0;
    if (v8)
    {
      v10 = v8;
      [v8 rotation];
      v5 = v11;
      v9 = v12;
    }

    v13 = [v7 configurationWithLargeTranslationOnAxis_];
    if (v13)
    {
      v14 = v13;
      [v13 translation];
      v16 = v15;
      v18 = v17;
    }

    else
    {
      v18 = 4.0;
      v16 = 0.0;
    }

    [v4 setContentMotionRotation:v5 translation:{v9, v16, v18}];
  }

  return v4;
}

uint64_t sub_20B8F5C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    v8 = sub_20C1356F4();
    sub_20B8F686C(&qword_27C769680, MEMORY[0x277D51BF0]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136A44();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20B8F5F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767928);
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v63 = sub_20C13B0C4();
  v55 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20C134B14();
  v54 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_20C1351C4();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_20C135174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = v2[10];
  v64 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v19);
  sub_20C13B184();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C76BC00);
    v20 = sub_20C1356F4();
    sub_20B8F686C(&qword_27C769680, MEMORY[0x277D51BF0]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D51B88], v20);
    *(swift_allocObject() + 16) = v21;
    return sub_20C137CA4();
  }

  else
  {
    v45 = v5;
    v46 = v3;
    v43 = v14;
    v24 = *(v14 + 32);
    v42 = v18;
    v44 = v13;
    v24(v18, v12, v13);
    v25 = *(v52 + 16);
    v27 = v48;
    v26 = v49;
    if (v25)
    {
      v28 = v52 + ((v65[80] + 32) & ~v65[80]);
      v29 = *(v65 + 9);
      v59 = (v54 + 32);
      v60 = v29;
      v58 = (v54 + 16);
      v57 = *MEMORY[0x277D4F610];
      v56 = *MEMORY[0x277D4F528];
      v65 = (v55 + 13);
      ++v55;
      v30 = (v54 + 8);
      LODWORD(v54) = *MEMORY[0x277D4F520];
      v53 = *MEMORY[0x277D4F518];
      do
      {
        v31 = v61;
        sub_20B8F66D8(v28, v61);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        (*v59)(v27, v31, v26);
        __swift_project_boxed_opaque_existential_1(v64 + 7, v64[10]);
        (*v58)(v7, v27, v26);
        v33 = sub_20C13B254();
        (*(*(v33 - 8) + 104))(v7, v57, v33);
        v34 = v56;
        if (EnumCaseMultiPayload == 1)
        {
          v34 = v54;
        }

        if (EnumCaseMultiPayload)
        {
          v35 = v34;
        }

        else
        {
          v35 = v53;
        }

        v36 = v63;
        (*v65)(v7, v35, v63);
        sub_20C13B2A4();
        (*v55)(v7, v36);
        (*v30)(v27, v26);
        v28 += v60;
        --v25;
      }

      while (v25);
    }

    v37 = v43;
    v38 = v42;
    v39 = v44;
    (*(v43 + 16))(v47, v42, v44);
    v66 = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767930);
    sub_20B8F673C();
    sub_20B8F67B8();
    v40 = v45;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v64 + 2, v64[5]);
    sub_20C139A14();
    (*(v50 + 8))(v40, v46);
    return (*(v37 + 8))(v38, v39);
  }
}

uint64_t sub_20B8F66D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1351C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B8F673C()
{
  result = qword_27C767938;
  if (!qword_27C767938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767938);
  }

  return result;
}

unint64_t sub_20B8F67B8()
{
  result = qword_27C767940;
  if (!qword_27C767940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767930);
    sub_20B8F686C(&qword_27C767948, MEMORY[0x277D51638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767940);
  }

  return result;
}

uint64_t sub_20B8F686C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20B8F6998(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView;
  type metadata accessor for RoundedIconView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  *&v4[v13] = v14;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v15 = qword_27C760710;
  v92 = qword_27C79A1B0;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27C79A1B8;
  v17 = objc_opt_self();
  v90 = v16;
  v88 = [v17 secondaryLabelColor];
  v18 = *MEMORY[0x277D769D0];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v20 size:0.0];

  v25 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];
  if (v26)
  {
    v27 = v26;

    v25 = v27;
  }

  v28 = &v4[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider];
  v29 = [v23 fontWithDescriptor:v25 size:0.0];

  v30 = [v17 secondaryLabelColor];
  *v28 = v92;
  *(v28 + 1) = v90;
  *(v28 + 2) = 1937075312;
  *(v28 + 3) = 0xE400000000000000;
  *(v28 + 4) = v88;
  *(v28 + 5) = v24;
  *(v28 + 6) = v29;
  *(v28 + 7) = v30;
  *(v28 + 4) = xmmword_20C15E8F0;
  *(v28 + 5) = xmmword_20C15DC30;
  *(v28 + 12) = 0;
  v95.receiver = v4;
  v95.super_class = type metadata accessor for WeekdayPlannerAddCell();
  v31 = objc_msgSendSuper2(&v95, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = &v31[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider];
  v33 = *&v31[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider];
  v34 = v31;
  [v34 setBackgroundColor_];
  v35 = [v34 layer];
  [v35 setCornerRadius_];

  v36 = [objc_opt_self() configurationWithFont_];
  v37 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView;
  v38 = *&v34[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView];

  v93 = v36;
  v39 = sub_20C13C914();

  v40 = [objc_opt_self() systemImageNamed:v39 withConfiguration:v93];

  [*&v38[OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView] setImage_];
  [*&v34[v37] setTintColor_];
  v41 = [v34 contentView];
  [v41 addSubview_];

  v42 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel] setFont_];
  [*&v34[v42] setTextColor_];
  v43 = v42;
  v89 = v42;
  LODWORD(v44) = 1148846080;
  [*&v34[v42] setContentCompressionResistancePriority:1 forAxis:v44];
  v45 = [v34 &selRef_setMaximumFractionDigits_];
  [v45 addSubview_];

  v91 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C1615B0;
  v47 = [*&v34[v37] leadingAnchor];
  v48 = [v34 &selRef_setMaximumFractionDigits_];
  v49 = [v48 leadingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:*(v32 + 8)];
  *(v46 + 32) = v50;
  v51 = [*&v34[v37] widthAnchor];
  v52 = [*&v34[v37] heightAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v46 + 40) = v53;
  v54 = [*&v34[v37] topAnchor];
  v55 = [v34 &selRef_setMaximumFractionDigits_];
  v56 = [v55 &selRef_setLineBreakMode_];

  v57 = [v54 constraintEqualToAnchor:v56 constant:*(v32 + 12)];
  *(v46 + 48) = v57;
  v58 = [*&v34[v37] bottomAnchor];
  v59 = [v34 &selRef_setMaximumFractionDigits_];
  v60 = [v59 &selRef_secondaryLabel + 5];

  v61 = [v58 constraintLessThanOrEqualToAnchor:v60 constant:-*(v32 + 12)];
  *(v46 + 56) = v61;
  v62 = [*&v34[v37] centerYAnchor];
  v63 = [*&v34[v89] &selRef_setNumberOfTapsRequired_];
  v64 = [v62 &selRef:v63 alertControllerReleasedDictationButton:? + 5];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v65) = v94;
  [v64 setPriority_];
  *(v46 + 64) = v64;
  v66 = [*&v34[v37] heightAnchor];
  v67 = [v66 constraintEqualToConstant_];

  *(v46 + 72) = v67;
  v68 = [*&v34[v89] leadingAnchor];
  v69 = [*&v34[v37] trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:*(v32 + 10)];

  *(v46 + 80) = v70;
  v71 = [*&v34[v89] trailingAnchor];
  v72 = [v34 contentView];
  v73 = [v72 trailingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73 constant:-*(v32 + 8)];
  *(v46 + 88) = v74;
  v75 = [*&v34[v89] topAnchor];
  v76 = [v34 contentView];
  v77 = [v76 topAnchor];

  v78 = [v75 &selRef_passwordEntryCancelledHandler + 6];
  *(v46 + 96) = v78;
  v79 = [*&v34[v89] bottomAnchor];
  v80 = [v34 contentView];

  v81 = [v80 bottomAnchor];
  v82 = [v79 &selRef_passwordEntryCancelledHandler + 6];

  *(v46 + 104) = v82;
  v83 = [*&v34[v89] centerYAnchor];
  v84 = [*&v34[v37] centerYAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v46 + 112) = v85;
  sub_20B5E29D0();
  v86 = sub_20C13CC54();

  [v91 activateConstraints_];

  return v34;
}

id sub_20B8F76A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekdayPlannerAddCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeekdayPlannerAddCell()
{
  result = qword_2811027D0;
  if (!qword_2811027D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8F7808()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8F78BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B8F7904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B8F796C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B8F79B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8F7A10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B8F7A74(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  return v3 + -48.0;
}

void sub_20B8F7AD8(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v45 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x42)
  {
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v15 = *(v11 + 40);
    if (v15)
    {
      v48 = v4;
      sub_20C13B534();
      sub_20B7C3220(v13, v12, v14, v15);
      v16 = v1;
      v17 = sub_20C13BB74();
      v18 = sub_20C13D1D4();

      sub_20B7C3288(v13, v12, v14, v15);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v49 = v3;
        v20 = v19;
        v21 = swift_slowAlloc();
        v46 = v21;
        v47 = swift_slowAlloc();
        v52 = v47;
        *v20 = 138543874;
        *(v20 + 4) = v16;
        *v21 = v16;
        *(v20 + 12) = 2160;
        *(v20 + 14) = 1752392040;
        *(v20 + 22) = 2080;
        v50[0] = v13;
        v50[1] = v12;
        v50[2] = v14;
        v51 = v15;
        v22 = sub_20B879DC0();
        v23 = v16;
        v24 = MEMORY[0x20F2EFA40](&type metadata for WeekdayPlannerItem, v22);
        v26 = sub_20B51E694(v24, v25, &v52);

        *(v20 + 24) = v26;
        _os_log_impl(&dword_20B517000, v17, v18, "Attempted to configure %{public}@ with weekday planner item: %{mask.hash}s", v20, 0x20u);
        v27 = v46;
        sub_20B520158(v46, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v27, -1, -1);
        v28 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x20F2F6A40](v28, -1, -1);
        MEMORY[0x20F2F6A40](v20, -1, -1);

        (*(v48 + 8))(v10, v49);
      }

      else
      {

        (*(v48 + 8))(v10, v3);
      }
    }

    else
    {
      v43 = *(v11 + 41);
      [*&v1[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel] setAttributedText_];
      v44 = [v1 layer];
      [v44 setMaskedCorners_];

      sub_20B7C3288(v13, v12, v14, 0);
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel] setAttributedText_];
    v29 = [v1 layer];
    [v29 setMaskedCorners_];

    sub_20C13B534();

    v30 = v1;
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v4;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v3;
      v50[0] = v36;
      v37 = v36;
      *v33 = 138543874;
      *(v33 + 4) = v30;
      *v35 = v30;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2080;
      v52 = a1;
      v38 = sub_20B5F66D0();
      v39 = v30;
      v40 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v38);
      v42 = sub_20B51E694(v40, v41, v50);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_20B517000, v31, v32, "Attempted to configure %{public}@ with item: %{mask.hash}s", v33, 0x20u);
      sub_20B520158(v35, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v37, -1, -1);
      MEMORY[0x20F2F6A40](v33, -1, -1);

      (*(v34 + 8))(v6, v49);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_20B8F8038()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView;
  type metadata accessor for RoundedIconView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *(v0 + v5) = v6;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v7 = qword_27C760710;
  v25 = qword_27C79A1B0;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_27C79A1B8;
  v9 = objc_opt_self();
  v24 = v8;
  v23 = [v9 secondaryLabelColor];
  v10 = *MEMORY[0x277D769D0];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v12 size:0.0];

  v17 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
  v18 = [v17 fontDescriptorWithSymbolicTraits_];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  v20 = v0 + OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider;
  v21 = [v15 fontWithDescriptor:v17 size:0.0];

  v22 = [v9 secondaryLabelColor];
  *v20 = v25;
  *(v20 + 8) = v24;
  *(v20 + 16) = 1937075312;
  *(v20 + 24) = 0xE400000000000000;
  *(v20 + 32) = v23;
  *(v20 + 40) = v16;
  *(v20 + 48) = v21;
  *(v20 + 56) = v22;
  *(v20 + 64) = xmmword_20C15E8F0;
  *(v20 + 80) = xmmword_20C15DC30;
  *(v20 + 96) = 0;
  sub_20C13DE24();
  __break(1u);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20B8F83B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B8F83F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B8F84BC()
{
  v0 = sub_20C132E94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20B5E2E18();
    *v7 = sub_20C13D374();
    (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
    v10 = sub_20C13C584();
    result = (*(v5 + 8))(v7, v4);
    if (v10)
    {
      sub_20C132E84();
      sub_20C132C74();
      v12 = v11;
      (*(v1 + 8))(v3, v0);
      v13 = v9 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_lastBackgroundTimestamp;
      *v13 = v12;
      *(v13 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_20B8F86E0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20B8F8740()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[RootPageDataProvider] StorefrontLanguageUpdated; refreshing content", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 432, v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_20C13B004();
    sub_20C138CF4();

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8F956C();
  }

  return result;
}

uint64_t sub_20B8F8948(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20B517000, v8, v9, a3, v10, 2u);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8F956C();
  }

  return result;
}

uint64_t sub_20B8F8AD4(void **a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v21 = v10;
    v22 = v6;
    v13 = v9;
    sub_20C13B534();
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20B517000, v14, v15, "[RootPageDataProvider] Avatar settings changed; informing delegate", v16, 2u);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v12 + 40);
      ObjectType = swift_getObjectType();
      v24[3] = type metadata accessor for RootPageDataProvider();
      v24[4] = &off_2822B4F10;
      v18 = v22;
      v23[0] = v22;
      v23[1] = v7;
      v23[2] = v8;
      v23[3] = v13;
      v23[4] = v21;
      v24[0] = v12;
      v19 = *(v17 + 8);

      sub_20B8FD908(v18);
      v19(v24, v23, ObjectType, v17);

      swift_unknownObjectRelease();
      sub_20B8FD958(v23[0]);
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B8F8D20(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, a2, v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8F956C();
  }

  return result;
}

uint64_t sub_20B8F8E94()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_20C13C554();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v16 = sub_20C13D374();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = sub_20C13C584();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    if (*(v1 + 56) == 1)
    {
      __swift_project_boxed_opaque_existential_1((v1 + 280), *(v1 + 304));
      sub_20C139D54();
      v19 = swift_allocObject();
      v33 = v1;
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_20B8FD7F4;
      *(v20 + 24) = v19;
      v21 = v34;
      (*(v4 + 16))(v6, v9, v34);
      v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v23 = swift_allocObject();
      (*(v4 + 32))(v23 + v22, v6, v21);
      v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v24 = sub_20B8FD810;
      v24[1] = v20;
      sub_20C137C94();
      (*(v4 + 8))(v9, v21);
      v25 = v36;
      v26 = sub_20C137CB4();
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      v26(sub_20B5DF6DC, v27);

      (*(v35 + 8))(v12, v25);
      v28 = v37;
      sub_20C13B534();
      v29 = sub_20C13BB74();
      v30 = sub_20C13D1F4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20B517000, v29, v30, "[RootPageDataProvider] Activating, refreshing content", v31, 2u);
        MEMORY[0x20F2F6A40](v31, -1, -1);
      }

      (*(v38 + 8))(v28, v39);
      *(v33 + 56) = 0;
      return sub_20B8F956C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8F93C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 432, v11);

    __swift_project_boxed_opaque_existential_1(v11, v12);
    v4 = sub_20C138CE4();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v2 == v4 && v1 == v6)
    {
    }

    v8 = sub_20C13DFF4();

    if (v8)
    {
      return result;
    }
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    sub_20B51CC64(v10 + 432, v11);

    __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_20C138CF4();
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8F956C();
  }

  return result;
}

uint64_t sub_20B8F956C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_20C13C554();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v12 = sub_20C13D374();
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v13 = sub_20C13C584();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (*(v1 + 56) == 1)
    {
      sub_20C13B534();
      v15 = sub_20C13BB74();
      v16 = sub_20C13D1F4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_20B517000, v15, v16, "[RootPageDataProvider] Page has not been activated yet, not refreshing content", v17, 2u);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      *(v1 + 56) = 8;
      __swift_project_boxed_opaque_existential_1((v1 + 344), *(v1 + 368));
      v18 = sub_20C13A884();
      sub_20C13B534();
      v19 = sub_20C13BB74();
      v20 = sub_20C13D1F4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136446210;
        v23 = sub_20C1350A4();
        v26 = v2;
        v25 = sub_20B51E694(v23, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_20B517000, v19, v20, "[RootPageDataProvider] Refreshing content with current network conditions: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x20F2F6A40](v22, -1, -1);
        MEMORY[0x20F2F6A40](v21, -1, -1);

        (*(v3 + 8))(v8, v26);
      }

      else
      {

        (*(v3 + 8))(v8, v2);
      }

      if (v18 == 1)
      {
        return sub_20B8F9B60();
      }

      else
      {
        return sub_20B8FACFC();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8F9914()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5E2E18();
  *v5 = sub_20C13D374();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_20C13C584();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(v1 + 56) != 3)
    {
      *(v1 + 56) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      type metadata accessor for LoadingShelf();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v10 = v9 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row;
      sub_20B5D8060(v18);
      v11 = v18[7];
      v12 = v18[9];
      *(v10 + 128) = v18[8];
      *(v10 + 144) = v12;
      v13 = v18[5];
      v14 = v18[6];
      *(v10 + 64) = v18[4];
      *(v10 + 80) = v13;
      *(v10 + 160) = v19;
      *(v10 + 96) = v14;
      *(v10 + 112) = v11;
      v15 = v18[1];
      *v10 = v18[0];
      *(v10 + 16) = v15;
      v16 = v18[3];
      *(v10 + 32) = v18[2];
      *(v10 + 48) = v16;
      sub_20C133AA4();
      *(v9 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_platform) = v17[7];
      *(inited + 32) = v9;
      *(inited + 40) = &off_2822D32B0;
      sub_20B8FBD98(inited);
      swift_setDeallocating();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8F9B60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v41 - v11;
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v45 = &v41 - v14;
  v15 = sub_20C13C554();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v18 = sub_20C13D374();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_20C13C584();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v21 = *(v1 + 56);
    if (v21 <= 8 && ((1 << v21) & 0x186) != 0)
    {
      *(v1 + 56) = 4;
      __swift_project_boxed_opaque_existential_1((v1 + 120), *(v1 + 144));
      sub_20C139DF4();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_20B8FD7BC;
      *(v22 + 24) = v1;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_20B7F1390;
      *(v23 + 24) = v22;
      (*(v3 + 16))(v5, v8, v2);
      v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v25 = swift_allocObject();
      (*(v3 + 32))(v25 + v24, v5, v2);
      v26 = (v25 + ((v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v26 = sub_20B8FD7C0;
      v26[1] = v23;

      v27 = v41;
      sub_20C137C94();
      (*(v3 + 8))(v8, v2);
      v28 = swift_allocObject();
      *(v28 + 16) = sub_20B8FD7F0;
      *(v28 + 24) = v1;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_20B5F7790;
      *(v29 + 24) = v28;
      v31 = v43;
      v30 = v44;
      v32 = v46;
      (*(v43 + 16))(v44, v27, v46);
      v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v34 = (v42 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      (*(v31 + 32))(v35 + v33, v30, v32);
      v36 = (v35 + v34);
      *v36 = sub_20B5F7764;
      v36[1] = v29;

      v37 = v45;
      sub_20C137C94();
      v38 = *(v31 + 8);
      v38(v27, v32);
      v39 = sub_20C137CB4();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      v39(sub_20B5DF6DC, v40);

      return (v38)(v37, v32);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FA130(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_20C13B534();
    v14 = a1;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v19 = MEMORY[0x20F2F5850](v24[2], v24[3]);
      v21 = sub_20B51E694(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_20B517000, v15, v16, "[RootPageDataProvider] Failed to fetch offline lockups: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    type metadata accessor for OfflineWorkoutsEmptyShelf();
    swift_allocObject();

    v23 = sub_20BB0BED8();

    *(inited + 32) = v23;
    *(inited + 40) = &off_2822CCD00;
    sub_20B8FBD98(inited);
    swift_setDeallocating();
    result = swift_unknownObjectRelease();
    if (*(v2 + 56) == 4)
    {
      *(v2 + 56) = 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FA47C(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v65 = *MEMORY[0x277D85DE8];
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C133524();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v13 = sub_20C13D374();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_20C13C584();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  result = v16(v13, v10);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v2 + 56) == 4)
  {
    *(v2 + 56) = 6;
    v15 = v60;
    v18 = *(v60 + 32);
    v19 = v18 & 0x3F;
    v55 = ((1 << v18) + 63) >> 6;
    v10 = 8 * v55;

    if (v19 > 0xD)
    {
      goto LABEL_29;
    }

    do
    {
      v52 = v4;
      v53 = v3;
      v54 = v2;
      v51 = &v51;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v56 = &v51 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v56, v10);
      v57 = 0;
      v3 = 0;
      v22 = *(v15 + 56);
      v15 += 56;
      v21 = v22;
      v23 = 1 << *(v15 - 24);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v2 = v24 & v21;
      v10 = (v23 + 63) >> 6;
      v59 = v7 + 16;
      v4 = v7 + 8;
      while (v2)
      {
        v25 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
LABEL_14:
        v28 = v25 | (v3 << 6);
        (*(v7 + 16))(v9, *(v60 + 48) + *(v7 + 72) * v28, v6);
        *&v63[0] = sub_20C1334E4();
        BYTE8(v63[0]) = v29 & 1;
        LOBYTE(v62) = 5;
        sub_20B68CCB0();
        sub_20B68CD04();
        v30 = sub_20C133C04();
        (*(v7 + 8))(v9, v6);
        if (v30)
        {
          *&v56[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
          if (__OFADD__(v57++, 1))
          {
            __break(1u);
LABEL_18:
            v32 = sub_20BC0DC84(v56, v55, v57, v60);
            v3 = v53;
            v4 = v52;
            goto LABEL_19;
          }
        }
      }

      v26 = v3;
      while (1)
      {
        v3 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v3 >= v10)
        {
          goto LABEL_18;
        }

        v27 = *(v15 + 8 * v3);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v2 = (v27 - 1) & v27;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    }

    while ((isStackAllocationSafe & 1) != 0);
    v50 = swift_slowAlloc();
    v32 = sub_20BEE1E6C(v50, v55, v15, sub_20B8FAC88, 0);
    MEMORY[0x20F2F6A40](v50, -1, -1);
LABEL_19:
    v33 = v58;
    sub_20C13B534();

    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = *(v32 + 16);

      _os_log_impl(&dword_20B517000, v34, v35, "[RootPageDataProvider] Found %{public}ld completed asset bundles", v36, 0xCu);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v33, v3);
    v37 = *(v32 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
    v38 = swift_allocObject();
    if (v37)
    {
      *(v38 + 16) = xmmword_20C14F320;
      type metadata accessor for OfflineWorkoutsBannerShelf();
      v39 = swift_allocObject();
      *(v39 + 24) = 0;
      swift_unknownObjectWeakInit();

      sub_20C132ED4();
      v40 = v39 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row;
      sub_20B5D8060(v63);
      v41 = v63[7];
      v42 = v63[9];
      *(v40 + 128) = v63[8];
      *(v40 + 144) = v42;
      v43 = v63[5];
      v44 = v63[6];
      *(v40 + 64) = v63[4];
      *(v40 + 80) = v43;
      *(v40 + 160) = v64;
      *(v40 + 96) = v44;
      *(v40 + 112) = v41;
      v45 = v63[1];
      *v40 = v63[0];
      *(v40 + 16) = v45;
      v46 = v63[3];
      *(v40 + 32) = v63[2];
      *(v40 + 48) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
      sub_20C133AA4();
      sub_20C133AA4();
      LOBYTE(v40) = v61;
      v47 = v39 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder;
      sub_20B52E424(&v62, v39 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder);
      *(v47 + 40) = v40;
      *(v38 + 32) = v39;
      *(v38 + 40) = &off_2822B22A8;
      type metadata accessor for OfflineWorkoutsGalleryShelf();
      swift_allocObject();
      v48 = sub_20BEB80EC();

      *(v38 + 48) = v48;
      *(v38 + 56) = &off_2822F2788;
    }

    else
    {
      *(v38 + 16) = xmmword_20C14F980;
      type metadata accessor for OfflineWorkoutsEmptyShelf();
      swift_allocObject();

      v49 = sub_20BB0BED8();

      *(v38 + 32) = v49;
      *(v38 + 40) = &off_2822CCD00;
    }

    sub_20B8FBD98(v38);
  }

  return result;
}

uint64_t sub_20B8FAC88()
{
  sub_20C1334E4();
  sub_20B68CCB0();
  sub_20B68CD04();
  return sub_20C133C04() & 1;
}

uint64_t sub_20B8FACFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764368);
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644E8);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = v9;
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v64 - v15;
  v77 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v23 = sub_20C13D374();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_20C13C584();
  result = (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v26 = *(v1 + 56);
    if (v26 <= 8 && ((1 << v26) & 0x146) != 0)
    {
      sub_20B8F9914();
      *(v1 + 56) = 5;
      __swift_project_boxed_opaque_existential_1((v1 + 520), *(v1 + 544));
      sub_20C139DB4();
      __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
      v67 = v19;
      sub_20C139FB4();
      v66 = v12;
      v27 = sub_20C137CB4();
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v27(sub_20B5DF6DC, v28);

      v29 = *(v81 + 8);
      v68 = v81 + 8;
      v69 = v29;
      v29(v19, v12);
      __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
      sub_20C13A094();
      v82[3] = sub_20C13B3A4();
      v82[4] = MEMORY[0x277D4F7C0];
      __swift_allocate_boxed_opaque_existential_1(v82);
      sub_20C13B394();
      v30 = sub_20C13D374();
      v31 = v71;
      sub_20C137C34();

      v32 = v72;
      v65 = *(v72 + 8);
      v65(v5, v31);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_20B8FD6F8;
      *(v33 + 24) = v1;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_20B8FD6FC;
      *(v34 + 24) = v33;
      (*(v32 + 16))(v5, v8, v31);
      v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v36 = (v70 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v32 + 32))(v37 + v35, v5, v31);
      v38 = (v37 + v36);
      *v38 = sub_20B8FD734;
      v38[1] = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0);
      v39 = v75;
      sub_20C137C94();
      v65(v8, v31);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_20B8FD764;
      *(v40 + 24) = v1;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_20B8FD76C;
      *(v41 + 24) = v40;
      v42 = v76;
      v43 = v74;
      v44 = v78;
      (*(v76 + 16))(v74, v39, v78);
      v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v46 = (v73 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      (*(v42 + 32))(v47 + v45, v43, v44);
      v48 = (v47 + v46);
      *v48 = sub_20B8FD788;
      v48[1] = v41;

      v49 = v80;
      sub_20C137C94();
      (*(v42 + 8))(v39, v44);
      v50 = swift_allocObject();
      *(v50 + 16) = sub_20B8FD7B8;
      *(v50 + 24) = v1;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_20B5F67D4;
      *(v51 + 24) = v50;
      v52 = v81;
      v53 = v79;
      v54 = v66;
      (*(v81 + 16))(v79, v49, v66);
      v55 = v52;
      v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v57 = (v77 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      (*(v55 + 32))(v58 + v56, v53, v54);
      v59 = (v58 + v57);
      *v59 = sub_20B5DF204;
      v59[1] = v51;

      v60 = v67;
      sub_20C137C94();
      v61 = v69;
      v69(v49, v54);
      v62 = sub_20C137CB4();
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      v62(sub_20B5DF6DC, v63);

      return v61(v60, v54);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FB644(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v7 = sub_20C13D374();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20C13C584();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (*(a2 + 56) == 5)
    {
      *(a2 + 56) = 7;
      return sub_20B8FBD98(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FB77C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_20C13B534();
    v14 = a1;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v19 = MEMORY[0x20F2F5850](v25[2], v25[3]);
      v21 = sub_20B51E694(v19, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_20B517000, v15, v16, "[RootPageDataProvider] failed to fetch remote content with %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    result = (*(v5 + 8))(v7, v4);
    if (*(v2 + 56) == 5)
    {
      *(v2 + 56) = 2;
      type metadata accessor for LoadingErrorShelf();
      swift_allocObject();

      v23 = sub_20BEFE8F4(v22, 0, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      *(inited + 32) = v23;
      *(inited + 40) = &off_2822F4EF0;

      sub_20B8FBD98(inited);

      swift_setDeallocating();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FBAE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C135E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = *(a1 + 16);
    if (!v14)
    {
      return MEMORY[0x277D84F90];
    }

    v15 = *(v2 + 320);
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v28 = v17;
    v29 = v15;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v27 = *(v16 + 56);
    v30 = v16;
    v19 = (v16 - 8);
    v20 = MEMORY[0x277D84F90];
    v17(v7, v18, v4);
    while (1)
    {
      v22 = sub_20BE533E4(v29);
      v24 = v23;
      (*v19)(v7, v4);
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20BC0577C(0, v20[2] + 1, 1, v20);
        }

        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          v20 = sub_20BC0577C((v25 > 1), v26 + 1, 1, v20);
        }

        v20[2] = v26 + 1;
        v21 = &v20[2 * v26];
        v21[4] = v22;
        v21[5] = v24;
      }

      v18 += v27;
      if (!--v14)
      {
        break;
      }

      v28(v7, v18, v4);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FBD98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v7 = sub_20C13D374();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20C13C584();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v66 = *(v2 + 384);
    v10 = *(v2 + 48);
    v67 = *(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    sub_20B51CC64(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v79);
    v11 = type metadata accessor for MetricLocationStore();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F98];
    *(v12 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = v14;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v65 = &v62;
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v21 = type metadata accessor for CatalogPageImpressionTracker();
    v78[3] = v21;
    v22 = sub_20B63EE48();
    v23 = v22;
    v78[4] = v22;
    v78[0] = v20;
    v77[3] = v11;
    v77[4] = &off_2822B6968;
    v77[0] = v12;
    v24 = *(a1 + 16);
    if (v24)
    {
      v63 = v22;
      v64 = v21;
      v76[0] = v13;
      v25 = v67;
      sub_20BB5D394(0, v24, 0);
      v26 = v76[0];
      v27 = (a1 + 32);
      do
      {
        v28 = *v27;
        v76[0] = v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 24);
        v68 = v28;
        swift_unknownObjectRetain();
        if (v29 >= v30 >> 1)
        {
          sub_20BB5D394((v30 > 1), v29 + 1, 1);
          v26 = v76[0];
        }

        *(v26 + 16) = v29 + 1;
        v31 = v26 + 24 * v29;
        *(v31 + 32) = v68;
        *(v31 + 48) = 0;
        ++v27;
        --v24;
      }

      while (v24);
      v23 = v63;
      v21 = v64;
    }

    else
    {
      v32 = v67;
      v26 = MEMORY[0x277D84F90];
    }

    sub_20B51CC64(v78, v76);
    sub_20B51CC64(v77, v75);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
    *&v68 = &v62;
    v34 = MEMORY[0x28223BE20](v33);
    v36 = (&v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36, v34);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v75, v75[3]);
    v39 = MEMORY[0x28223BE20](v38);
    v41 = (&v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41, v39);
    v43 = *v36;
    v44 = *v41;
    v73 = v21;
    v74 = v23;
    v72[0] = v43;
    v70 = v11;
    v71 = &off_2822B6968;
    v69[0] = v44;
    v45 = objc_allocWithZone(type metadata accessor for CatalogPage());
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v47 = MEMORY[0x28223BE20](v46);
    v49 = (&v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49, v47);
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v52 = MEMORY[0x28223BE20](v51);
    v54 = (&v62 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54, v52);
    v56 = sub_20BE3AA74(1701670760, 0xE400000000000000, v26, v66, v67, *v49, *v54, 2, v45);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v76);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v57 = *(v2 + 48);
    *(v2 + 48) = v56;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v58 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      v80 = type metadata accessor for RootPageDataProvider();
      v81 = &off_2822B4F10;
      v79[0] = v2;
      v60 = *(v2 + 48);

      v61 = v60;
      sub_20B76FFF8(v79, v61, ObjectType, v58);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FC47C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20B517000, v10, v11, "[RootPageDataProvider] sign out button long pressed, reset sync requested", v12, 2u);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  sub_20C139FB4();
  v13 = sub_20C137CB4();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v13(sub_20B52347C, v14);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20B8FC6E4()
{
  v2 = v0;
  v3 = sub_20C13BB84();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = sub_20C13C554();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v18 = sub_20C13D374();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_20C13C584();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_lastBackgroundTimestamp + 8))
  {
    return result;
  }

  v21 = v2;
  sub_20C132C64();
  sub_20C132E84();
  sub_20C132DC4();
  v1 = v22;
  v2 = v8;
  v35 = *(v9 + 1);
  v35(v11, v8);
  if (*(v21 + 56) == 2)
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = sub_20C13C914();
    [v23 doubleForKey_];
    v26 = v25;

    if (v26 <= 0.0)
    {
      if (qword_27C760670 != -1)
      {
        swift_once();
      }

      v26 = *&qword_27C799C08;
    }

    if (v26 <= v1)
    {
      sub_20C13B534();
      v31 = sub_20C13BB74();
      v34 = sub_20C13D1F4();
      if (!os_log_type_enabled(v31, v34))
      {
LABEL_19:

        (*(v36 + 8))(v7, v37);
        sub_20B8F956C();
        return (v35)(v14, v2);
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v34, "[RootPageDataProvider] Currently in a load error state, refreshing content", v33, 2u);
LABEL_17:
      MEMORY[0x20F2F6A40](v33, -1, -1);
      goto LABEL_19;
    }
  }

  v27 = [objc_opt_self() standardUserDefaults];
  v28 = sub_20C13C914();
  [v27 doubleForKey_];
  v30 = v29;

  v9 = v38;
  if (v30 <= 0.0)
  {
    if (qword_27C760678 == -1)
    {
LABEL_11:
      v30 = *&qword_27C799C10;
      goto LABEL_12;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

LABEL_12:
  if (v30 <= v1)
  {
    sub_20C13B534();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (!os_log_type_enabled(v31, v32))
    {
      v7 = v9;
      goto LABEL_19;
    }

    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v1;
    _os_log_impl(&dword_20B517000, v31, v32, "[RootPageDataProvider] %{public}f seconds have passed since app was last active, refreshing content", v33, 0xCu);
    v7 = v9;
    goto LABEL_17;
  }

  return (v35)(v14, v2);
}

uint64_t sub_20B8FCC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v9 = sub_20C13D374();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_20C13C584();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 472), *(v1 + 496));
    sub_20C1392E4();
    v12 = sub_20C137CB4();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v12(sub_20B52F238, v13);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FCE70()
{

  sub_20B583E6C(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1(v0 + 392);
  __swift_destroy_boxed_opaque_existential_1(v0 + 432);
  __swift_destroy_boxed_opaque_existential_1(v0 + 472);

  __swift_destroy_boxed_opaque_existential_1(v0 + 520);
  __swift_destroy_boxed_opaque_existential_1(v0 + 560);

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_configuration);
  return v0;
}

uint64_t sub_20B8FCF58()
{
  sub_20B8FCE70();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RootPageDataProvider()
{
  result = qword_27C767960;
  if (!qword_27C767960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8FD004()
{
  sub_20B524ACC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20B8FD12C()
{
  result = qword_27C767970;
  if (!qword_27C767970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767970);
  }

  return result;
}

uint64_t sub_20B8FD180()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = *MEMORY[0x277D517F0];
  v11 = sub_20C1352F4();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);

  sub_20C132C04();
  v13 = sub_20C135ED4();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_20C136914();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  return sub_20C133384();
}

uint64_t sub_20B8FD5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20B8FD648(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0);

  return sub_20C137C94();
}

uint64_t sub_20B8FD6FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20B8FD840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B8FD908(uint64_t result)
{
  if (result != 1)
  {
    v2 = result;

    v3 = v2;
  }

  return result;
}

void *sub_20B8FD958(void *result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_20B8FD9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CDA130];
  *(v0 + 16) = xmmword_20C161F40;
  v2 = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = 0;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 blackColor];
  v6 = [v5 CGColor];

  *(v0 + 48) = v6;
  *(v0 + 56) = 1;
  v7 = *MEMORY[0x277CDA778];
  *(v0 + 64) = *MEMORY[0x277CDA778];
  *(v0 + 72) = 2;
  v10 = *MEMORY[0x277CDA798];
  *(v0 + 80) = *MEMORY[0x277CDA798];
  *(v0 + 88) = 3;
  *(v0 + 96) = 0;
  *(v0 + 104) = 4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 5;
  *(v0 + 128) = 0x3FF0000000000000;
  *(v0 + 136) = 6;
  *(v0 + 144) = 0;
  *(v0 + 152) = 7;
  *(v0 + 160) = 0;
  *(v0 + 168) = 8;
  qword_27C79AB70 = v0;
  v8 = v7;

  return v10;
}

void sub_20B8FDB80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton);
  *(inited + 40) = v3;
  v10 = MEMORY[0x277D84F90];
  v4 = v2;
  v5 = v3;
  v6 = 0;
LABEL_2:
  v7 = v6;
  while ((inited & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2F5430](v7, inited);
LABEL_6:
    v9 = v8;
    v6 = v7 + 1;
    if (![v8 isHidden])
    {
      MEMORY[0x20F2F43B0]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      if (v7 == 1)
      {
LABEL_13:
        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      goto LABEL_2;
    }

    ++v7;
    if (v6 == 2)
    {
      goto LABEL_13;
    }
  }

  if (v7 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(inited + 32 + 8 * v7);
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_20B8FDD14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onDoneButtonTap];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onCooldownButtonTap];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_20C132964();
  v17 = v16;

  v18 = type metadata accessor for TVButtonTextContentView();
  v19 = objc_allocWithZone(v18);
  v20 = TVButtonTextContentView.init(title:)(v15, v17);
  v21 = objc_opt_self();
  v22 = [v21 blackColor];
  sub_20BB87C88(v22);

  v23 = [v21 whiteColor];
  sub_20BB87D08(v23);

  v24 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v25 = *&v20[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  v26 = _UISolariumEnabled();
  v27 = objc_opt_self();
  if (v26)
  {
    v28 = [v27 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v28 = [v27 preferredFontForTextStyle_];
  }

  v29 = v28;
  [v25 setFont_];

  [*&v20[v24] setAdjustsFontSizeToFitWidth_];
  [*&v20[v24] setBaselineAdjustment_];
  v30 = v20;
  v31 = _UISolariumEnabled();
  v32 = type metadata accessor for TVButton();
  v104 = v30;
  v33 = sub_20BB87F6C(v30, v31, 0, objc_allocWithZone(v32), 0.0, 0.0, 0.0, 0.0);
  v34 = [v21 whiteColor];
  v35 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v33[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v34 forState:8];

  if (sub_20C1380F4() == 3)
  {
    v36 = 0.415686275;
  }

  else
  {
    v36 = 0.15;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v36 alpha:1.0];
  [*&v33[v35] setBackgroundColor:v37 forState:0];

  [*&v33[v35] setFocusedSizeIncrease_];
  v38 = v33;
  v39 = sub_20C13C914();
  [v38 setAccessibilityIdentifier_];

  *&v5[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton] = v38;
  v40 = [v13 bundleForClass_];
  v41 = sub_20C132964();
  v43 = v42;

  v44 = objc_allocWithZone(v18);
  v45 = TVButtonTextContentView.init(title:)(v41, v43);
  v46 = [v21 blackColor];
  sub_20BB87C88(v46);

  v47 = [v21 whiteColor];
  sub_20BB87D08(v47);

  v48 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v49 = *&v45[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  LODWORD(v47) = _UISolariumEnabled();
  v50 = objc_opt_self();
  if (v47)
  {
    v51 = [v50 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v51 = [v50 preferredFontForTextStyle_];
  }

  v52 = v51;
  [v49 setFont_];

  [*&v45[v48] setAdjustsFontSizeToFitWidth_];
  [*&v45[v48] setBaselineAdjustment_];
  v53 = v45;
  LOBYTE(v52) = _UISolariumEnabled();
  v103 = v53;
  v54 = sub_20BB87F6C(v53, v52, 0, objc_allocWithZone(v32), 0.0, 0.0, 0.0, 0.0);
  v55 = [v21 whiteColor];
  v56 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v54[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v55 forState:8];

  if (sub_20C1380F4() == 3)
  {
    v57 = 0.415686275;
  }

  else
  {
    v57 = 0.15;
  }

  v58 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v57 alpha:1.0];
  [*&v54[v56] setBackgroundColor:v58 forState:0];

  [*&v54[v56] setFocusedSizeIncrease_];
  v59 = v54;
  v60 = sub_20C13C914();
  [v59 setAccessibilityIdentifier_];

  *&v5[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton] = v59;
  v105.receiver = v5;
  v105.super_class = type metadata accessor for TVSummaryFooterView();
  v61 = objc_msgSendSuper2(&v105, sel_initWithFrame_, a1, a2, a3, a4);
  v62 = OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton;
  v63 = *&v61[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton];
  v64 = v61;
  [v63 addTarget:v64 action:sel_doneButtonTapped forControlEvents:0x2000];
  v65 = OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton;
  [*&v64[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton] addTarget:v64 action:sel_cooldownButtonTapped forControlEvents:0x2000];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_20C151490;
  v67 = *&v61[v62];
  *(v66 + 32) = v67;
  v68 = *&v64[v65];
  *(v66 + 40) = v68;
  v69 = v67;
  v70 = v68;
  if ((v66 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = v69; ; i = MEMORY[0x20F2F5430](0, v66))
  {
    v72 = i;
    v73 = objc_opt_self();
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_20C151490;
    v75 = [v72 widthAnchor];
    v76 = [v75 constraintEqualToConstant_];

    *(v74 + 32) = v76;
    v77 = [v72 heightAnchor];
    v78 = [v77 constraintEqualToConstant_];

    *(v74 + 40) = v78;
    sub_20B51C88C(0, &qword_281100500);
    v79 = sub_20C13CC54();

    [v73 activateConstraints_];

    if ((v66 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v80 = *(v66 + 40);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v80 = MEMORY[0x20F2F5430](1, v66);
LABEL_19:
  v81 = objc_opt_self();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_20C151490;
  v83 = [v80 widthAnchor];
  v84 = [v83 constraintEqualToConstant_];

  *(v82 + 32) = v84;
  v85 = [v80 heightAnchor];
  v86 = [v85 constraintEqualToConstant_];

  *(v82 + 40) = v86;
  v87 = sub_20C13CC54();

  [v81 activateConstraints_];

  v88 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v89 = sub_20C13CC54();

  v90 = [v88 initWithArrangedSubviews_];

  [v90 setAxis_];
  [v90 setSpacing_];
  v91 = v64;
  v92 = v90;
  [v91 addSubview_];
  [v92 setTranslatesAutoresizingMaskIntoConstraints_];
  v93 = objc_opt_self();
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_20C151490;
  v95 = [v92 centerXAnchor];
  v96 = [v91 centerXAnchor];
  v97 = [v95 constraintEqualToAnchor_];

  *(v94 + 32) = v97;
  v98 = [v92 centerYAnchor];

  v99 = [v91 centerYAnchor];
  v100 = [v98 constraintEqualToAnchor_];

  *(v94 + 40) = v100;
  v101 = sub_20C13CC54();

  [v93 activateConstraints_];

  return v91;
}

id sub_20B8FE9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSummaryFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B8FEA78()
{

  return swift_deallocClassInstance();
}

void sub_20B8FEAD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 17))
    {
    }

    else
    {
      v4 = sub_20B8FEBAC();
      v5 = *(a2 + OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer);

      v6 = sub_20C13C914();

      [v5 addAnimation:v4 forKey:v6];
    }
  }
}

id sub_20B8FEBAC()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_20C13D014();
  [v1 setFromValue_];

  v3 = sub_20C138374();
  [v1 setToValue_];

  v4 = v1;
  [v4 setDuration_];
  [v4 setRemovedOnCompletion_];
  LODWORD(v5) = 2139095040;
  [v4 setRepeatCount_];

  return v4;
}

void (*sub_20B8FECD4(void *a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = a1;
  return sub_20B8FEDD4;
}

void sub_20B8FED64(uint64_t a1)
{
  *(v1 + 17) = 1;
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer);
  v3 = sub_20C13C914();
  [v2 removeAnimationForKey_];
}

uint64_t sub_20B8FEDE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CDA130];
  *(v0 + 16) = xmmword_20C150DC0;
  v2 = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = 0;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  v6 = [v5 CGColor];

  *(v0 + 48) = v6;
  *(v0 + 56) = 1;
  v7 = *MEMORY[0x277CDA780];
  *(v0 + 64) = *MEMORY[0x277CDA780];
  *(v0 + 72) = 2;
  v8 = *MEMORY[0x277CDA7A0];
  *(v0 + 80) = *MEMORY[0x277CDA7A0];
  *(v0 + 88) = 3;
  *(v0 + 96) = 0x4000000000000000;
  *(v0 + 104) = 4;
  *(v0 + 112) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + 120) = 6;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10 = v7;
  v11 = v8;
  v12 = [v9 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v13 = [v12 CGColor];

  *(v0 + 128) = v13;
  *(v0 + 136) = 7;
  *(v0 + 144) = 0x3FB999999999999ALL;
  *(v0 + 152) = 8;
  return v0;
}

uint64_t sub_20B8FEF84()
{
  sub_20C13E164();
  sub_20C13E194();
  return sub_20C13E1B4();
}

uint64_t sub_20B8FEFDC()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

BOOL sub_20B8FF0F0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0.2;
  if (*a1)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 1.0;
  }

  if (!*a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

float *sub_20B8FF174@<X0>(float *result@<X0>, char *a2@<X8>)
{
  if (*result == 0.2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_20B8FF1A4(float *a1@<X8>)
{
  v2 = 0.2;
  if (!*v1)
  {
    v2 = 1.0;
  }

  *a1 = v2;
}

double sub_20B8FF1C8()
{
  __asm { FMOV            V0.4S, #1.0 }

  v18 = _Q0;
  if (*(v0 + 32) < 1)
  {
    v11 = *(v0 + 48);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_20BC07AE0(0, *(v6 + 2) + 1, 1, v6);
      *(v0 + 64) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v6 = sub_20BC07AE0((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v10;
    *&v6[16 * v9 + 32] = v18;
    *(v0 + 64) = v6;
    swift_endAccess();
    v11 = v18;
    if (v10 >= *(v0 + 32))
    {
      swift_beginAccess();
      sub_20B91F838(0);
      v17 = v12;
      swift_endAccess();
      v11 = v17;
    }
  }

  v13 = vminnmq_f32(vmaxnmq_f32(v11, 0), v18);
  v14.i64[0] = 0xC0000000C0000000;
  v14.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V3.4S, #3.0 }

  *&result = vmulq_f32(vmulq_f32(v13, v13), vmlaq_f32(_Q3, v14, v13)).u64[0];
  return result;
}

id sub_20B8FF30C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_20B8FF368();
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_20B8FF368()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D27898]) init];
  LODWORD(v1) = 1133903872;
  LODWORD(v2) = 1133903872;
  [v0 addAnalysisBand_];
  LODWORD(v3) = 1142292480;
  LODWORD(v4) = 1142292480;
  [v0 addAnalysisBand_];
  LODWORD(v5) = 1161527296;
  LODWORD(v6) = 1161117696;
  [v0 addAnalysisBand_];
  v7 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_20B8FF9C8;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B762A80;
  v10[3] = &block_descriptor_35;
  v8 = _Block_copy(v10);

  [v0 setOnUpdate_];
  _Block_release(v8);
  return v0;
}

uint64_t sub_20B8FF4B8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8FF5C8(a1);
  }

  return result;
}

uint64_t sub_20B8FF518()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_20B8FF30C();
    [v2 removeObserver_];

    v1 = *(v0 + 24);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_20B8FF5C8(void *a1)
{
  v2 = v1;
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 averagePowerOfBandAtIndex:0 band:{0, v10}];
  v30 = v13;
  [a1 averagePowerOfBandAtIndex:1 band:0];
  v29 = v14;
  [a1 averagePowerOfBandAtIndex:2 band:0];
  v28 = v15;
  [a1 powerLevel];
  v17.i64[0] = __PAIR64__(v29, v30.u32[0]);
  v17.i64[1] = __PAIR64__(v16, v28);
  v18 = 0.2;
  if (!*(v2 + 16))
  {
    v18 = 1.0;
  }

  __asm { FMOV            V2.4S, #1.0 }

  v30 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v17, 0), _Q2), v18);
  sub_20B5E2E18();
  v24 = sub_20C13D374();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 32) = v30;
  aBlock[4] = sub_20B8FF998;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_46;
  v26 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v12, v7, v26);
  _Block_release(v26);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_20B8FF918()
{
  result = qword_27C7679A0;
  if (!qword_27C7679A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7679A0);
  }

  return result;
}

double sub_20B8FF96C()
{
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

float32x4_t sub_20B8FF998()
{
  v1 = v0[1].i64[0];
  __asm { FMOV            V1.4S, #-10.0 }

  result = vmaxnmq_f32(v0[2], vaddq_f32(v1[5], vdivq_f32(v1[5], _Q1)));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vmlaq_f32(v1[6], v8, vsubq_f32(result, v1[6]));
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_20B8FF9D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_20C1380F4();
  if (v10 > 1)
  {
    if (v10 != 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 15.0;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v11 = 20.0;
LABEL_6:
  sub_20C1380F4();
  v12 = sub_20C138104();
  if (v12 == sub_20C138104())
  {
    v13 = 0.55;
  }

  else
  {
    v13 = 0.5;
  }

  v14 = &v5[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_layout];
  v15 = sub_20B6B1AEC(*MEMORY[0x277D74400], 0, 0x8000, 22.0);
  *v14 = 12.0;
  v14[1] = v11;
  v14[2] = v11;
  v14[3] = v11;
  v14[4] = v11;
  *(v14 + 5) = 4;
  v14[6] = v13;
  v14[7] = 10.0;
  *(v14 + 8) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  [v21 setLineBreakMode_];
  *&v5[v20] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView;
  v23 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v24 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v22] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  [v26 setLineBreakMode_];
  *&v5[v25] = v26;
  v27 = &v5[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v27[32] = 1;
  *&v5[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth] = 0;
  v28 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint;
  *&v5[v28] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v96.receiver = v5;
  v96.super_class = type metadata accessor for EditorialCollectionContainerView();
  v29 = objc_msgSendSuper2(&v96, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView];
  v32 = v29;
  [v32 addSubview_];
  v33 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel;
  v34 = &v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_layout];
  [*&v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel] setFont_];
  [*&v32[v33] setNumberOfLines_];
  v35 = *&v32[v33];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 whiteColor];
  [v37 setTextColor_];

  [*&v29[v30] addSubview_];
  v39 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView;
  [*&v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView] setAlignment_];
  [*&v32[v39] setAxis_];
  [*&v32[v39] setSemanticContentAttribute_];
  v94 = v34;
  [*&v32[v39] setSpacing_];
  [*&v29[v30] addSubview_];
  [*&v32[v39] addArrangedSubview_];
  v40 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel;
  v41 = *&v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel];
  v42 = sub_20B900BE0();
  [v41 setFont_];

  [*&v32[v39] addArrangedSubview_];
  v43 = sub_20C1380F4();
  v92 = v33;
  if (v43 <= 1)
  {
    if (!v43)
    {
      v44 = [*&v32[v33] widthAnchor];
      v45 = [v44 constraintEqualToConstant_];

      type metadata accessor for UILayoutPriority(0);
      sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
      sub_20C13BBA4();
      LODWORD(v46) = v95;
      [v45 setPriority_];
      v47 = v34;
LABEL_14:
      v51 = *&v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint];
      *&v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint] = v45;

      v93 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_20C152A00;
      v53 = [*&v29[v30] leftAnchor];
      v54 = [v32 leftAnchor];

      v55 = v47;
      v56 = [v53 constraintEqualToAnchor:v54 constant:v47[2]];

      *(v52 + 32) = v56;
      v57 = [*&v29[v30] rightAnchor];
      v58 = [v32 rightAnchor];

      v59 = [v57 constraintEqualToAnchor:v58 constant:-v55[4]];
      *(v52 + 40) = v59;
      v60 = [*&v29[v30] topAnchor];
      v61 = [v32 &selRef_setLineBreakMode_];

      v62 = [v60 constraintEqualToAnchor:v61 constant:v55[1]];
      *(v52 + 48) = v62;
      v63 = [*&v29[v30] bottomAnchor];
      v64 = [v32 &selRef_secondaryLabel + 5];

      v65 = [v63 constraintEqualToAnchor:v64 constant:-v55[3]];
      *(v52 + 56) = v65;
      v66 = [*&v32[v92] leftAnchor];
      v67 = [*&v29[v30] leftAnchor];
      v68 = [v66 constraintEqualToAnchor_];

      *(v52 + 64) = v68;
      v69 = [*&v32[v92] rightAnchor];
      v70 = [*&v29[v30] rightAnchor];
      v71 = [v69 constraintLessThanOrEqualToAnchor_];

      *(v52 + 72) = v71;
      v72 = [*&v32[v92] topAnchor];
      v73 = [*&v29[v30] topAnchor];
      v74 = [v72 &selRef:v73 alertControllerReleasedDictationButton:? + 5];

      *(v52 + 80) = v74;
      v75 = *&v32[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint];
      *(v52 + 88) = v75;
      v76 = *&v32[v39];
      v77 = v75;
      v78 = [v76 leftAnchor];
      v79 = [*&v29[v30] leftAnchor];
      v80 = [v78 &selRef:v79 alertControllerReleasedDictationButton:? + 5];

      *(v52 + 96) = v80;
      v81 = [*&v32[v39] rightAnchor];
      v82 = [*&v29[v30] rightAnchor];
      v83 = [v81 constraintLessThanOrEqualToAnchor_];

      *(v52 + 104) = v83;
      v84 = [*&v32[v39] topAnchor];
      v85 = [*&v32[v92] bottomAnchor];
      v86 = [v84 constraintGreaterThanOrEqualToAnchor:v85 constant:v94[7]];

      *(v52 + 112) = v86;
      v87 = [*&v32[v39] bottomAnchor];
      v88 = [*&v29[v30] bottomAnchor];
      v89 = [v87 &selRef:v88 alertControllerReleasedDictationButton:? + 5];

      *(v52 + 120) = v89;
      sub_20B5E29D0();
      v90 = sub_20C13CC54();

      [v93 activateConstraints_];

      return v32;
    }

LABEL_13:
    v48 = [*&v32[v33] widthAnchor];
    v49 = [v32 widthAnchor];
    v47 = v34;
    v45 = [v48 constraintEqualToAnchor:v49 multiplier:*(v34 + 6)];

    type metadata accessor for UILayoutPriority(0);
    sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
    sub_20C13BBA4();
    LODWORD(v50) = v95;
    [v45 setPriority_];
    goto LABEL_14;
  }

  if (v43 == 3)
  {
    goto LABEL_13;
  }

LABEL_15:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

void sub_20B90062C()
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  if (v1 == sub_20C138104())
  {
    [v0 bounds];
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 0.0;
    v15.size.height = 0.0;
    if (!CGRectEqualToRect(v11, v15))
    {
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v3 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth;
      if (Width != *&v0[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth])
      {
        v4 = &v0[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets];
        if ((v0[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets + 32] & 1) == 0)
        {
          v5 = v4[3];
          v6 = v4[1];
          [v0 bounds];
          *&v0[v3] = CGRectGetWidth(v13);
          [v0 bounds];
          v7 = CGRectGetWidth(v14);
          v8 = *&v0[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint];
          v9 = (v5 + v6 + v7) * 0.5;

          [v8 setConstant_];
        }
      }
    }
  }
}

id sub_20B900748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialCollectionContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B900840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B900888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20B9008E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView);
  if (*&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView])
  {
    v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel);
    v7 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v8 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v8 setLineBreakMode_];
    v9 = v7;
    v10 = [v9 length];
    v11 = *MEMORY[0x277D74118];
    [v9 addAttribute:*MEMORY[0x277D74118] value:v8 range:{0, v10}];

    [v6 setAttributedText_];
    v12 = *(v3 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel);
    v13 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v14 setLineBreakMode_];
    v15 = v13;
    [v15 addAttribute:v11 value:v14 range:{0, objc_msgSend(v15, sel_length)}];

    [v12 setAttributedText_];
    v16 = sub_20C133E54();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      [v4 setHidden_];
      v20 = &v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
      *v20 = v18;
      v20[1] = v19;

      v21 = *&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];

      v22 = sub_20C13C914();
      [v21 setText_];

      [v4 invalidateIntrinsicContentSize];
    }

    else
    {

      return [v4 setHidden_];
    }
  }

  else
  {

    return sub_20C1380E4();
  }
}

id sub_20B900BE0()
{
  v0 = *MEMORY[0x277D74420];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v4 = swift_initStackObject();
  v5 = MEMORY[0x277D74430];
  *(v4 + 16) = xmmword_20C14F980;
  v6 = *v5;
  *(v4 + 32) = *v5;
  *(v4 + 40) = v0;
  v7 = v3;
  v8 = v6;
  v9 = sub_20B6B134C(v4);
  swift_setDeallocating();
  sub_20B520158(v4 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v9;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v10 = sub_20C13C744();

  v11 = [v1 fontDescriptorByAddingAttributes_];

  v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  return v12;
}

void sub_20B900E2C()
{
  v1 = v0;
  v2 = sub_20C1380F4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    v3 = 15.0;
LABEL_6:
    sub_20C1380F4();
    v4 = sub_20C138104();
    if (v4 == sub_20C138104())
    {
      v5 = 0.55;
    }

    else
    {
      v5 = 0.5;
    }

    v6 = v1 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_layout;
    v7 = sub_20B6B1AEC(*MEMORY[0x277D74400], 0, 0x8000, 22.0);
    *v6 = 0x4028000000000000;
    *(v6 + 8) = v3;
    *(v6 + 16) = v3;
    *(v6 + 24) = v3;
    *(v6 + 32) = v3;
    *(v6 + 40) = 4;
    *(v6 + 48) = v5;
    *(v6 + 56) = 0x4024000000000000;
    *(v6 + 64) = v7;
    v8 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView;
    v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    *(v1 + v8) = v9;
    v10 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView;
    v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    *(v1 + v10) = v11;
    v12 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel;
    v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [v13 setAdjustsFontForContentSizeCategory_];
    [v13 setLineBreakMode_];
    *(v1 + v12) = v13;
    v14 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView;
    v15 = objc_allocWithZone(type metadata accessor for RecencyIconView());
    v16 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    *(v1 + v14) = v16;
    v17 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel;
    v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v18 setTranslatesAutoresizingMaskIntoConstraints_];
    [v18 setAdjustsFontForContentSizeCategory_];
    [v18 setLineBreakMode_];
    *(v1 + v17) = v18;
    v19 = v1 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets;
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 1;
    *(v1 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth) = 0;
    v20 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint;
    *(v1 + v20) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
    while (1)
    {
LABEL_10:
      sub_20C13DE24();
      __break(1u);
    }
  }

  v3 = 20.0;
  goto LABEL_6;
}

uint64_t sub_20B901148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = a3;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = a1 + 32;
    v15 = sub_20B9012A8(*(a1 + 32), a1, a2, a3, a4, a5, a6);
    if (!v6)
    {
      if (v17)
      {
        v20 = v15;
        v21 = a1;
        v22 = v16;
        v23 = v14;
        v24 = v17;
        v25 = v18;
        sub_20BCC823C(v21, v23, 1, (2 * v11) | 1);
        v10 = sub_20B901148(v26, a2, v20, v22, v24, v25);
      }

      else
      {
        return sub_20B901148(a1, a2, v10, a4, a5, a6);
      }
    }
  }

  else
  {
  }

  return v10;
}

uint64_t sub_20B9012A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v8 = v7;
  v45 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v15 - 8);
  v46 = v39 - v16;
  v17 = sub_20C133244();
  v47 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20B901700(a1, a2, a4, a5, a6, a7);
  if (v7)
  {
    return v8;
  }

  v39[1] = a6;
  v40 = a7;
  v42 = a5;
  v43 = v19;
  v41 = a4;
  v44 = 0;
  v48 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v45, *(v45 + 24));
  v45 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7679F0);
  sub_20B901EC8();
  v21 = v46;
  v22 = v45;
  sub_20C13D094();

  if ((*(v47 + 48))(v21, 1, v22) == 1)
  {
    sub_20B520158(v21, &unk_27C7629C0);
    return 0;
  }

  v23 = v47;
  v24 = v43;
  (*(v47 + 32))(v43, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A00);
  v25 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18) - 8);
  v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14F980;
  v28 = v27 + v26;
  v29 = v25[14];
  (*(v23 + 16))(v28, v24, v22);
  *(v28 + v29) = a1;
  v30 = sub_20B6B4474(v27);
  swift_setDeallocating();
  sub_20B520158(v28, &qword_27C763A18);
  swift_deallocClassInstance();

  v31 = v40;

  v33 = v41;
  v32 = v42;
  v34 = v44;
  v35 = sub_20C00A628(v30, v41, v42);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v31;
  sub_20B904B14(v35, sub_20C009C60, 0, isUniquelyReferenced_nonNull_native, &v48);
  v44 = v34;
  if (!v34)
  {

    sub_20C008994(v33, v32, v48);
    v8 = v37;

    (*(v47 + 8))(v43, v45);
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_20B901700(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v7 = v6;
  v12 = a1;
  if (a1 - 2 < 4)
  {

    v14 = sub_20B6D2924(a6, a5);

    v15 = v14;
    v16 = v7;
    v7 = sub_20B90402C(v15, a3, a4, a5, a6, a1);

    a6 = *(v7 + 16);
    if (a6)
    {
      a5 = sub_20BEDEC18(*(v7 + 16), 0);
      v17 = *(sub_20C133244() - 8);
      a4 = sub_20BEE29BC(&v39, &a5[(*(v17 + 80) + 32) & ~*(v17 + 80)], a6, v7);
      a3 = v40;

      sub_20B583EDC();
      if (a4 != a6)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else
    {
      a5 = MEMORY[0x277D84F90];
    }

    v39 = a5;
    sub_20B901E20(&v39);
    v24 = v16;
    if (v16)
    {
      goto LABEL_36;
    }

    result = v39;
    if (*(v39 + 2))
    {
      return result;
    }

    v26 = 2;
    goto LABEL_34;
  }

LABEL_5:
  if (v12)
  {

    v27 = sub_20B6D2924(a6, a5);
    v28 = v27;
    a6 = *(v27 + 16);
    if (!a6)
    {
LABEL_26:
      a5 = MEMORY[0x277D84F90];
LABEL_27:
      v39 = a5;
      sub_20B901E20(&v39);
      v24 = v7;
      if (!v7)
      {

        result = v39;
        if (*(v39 + 2))
        {
          return result;
        }

        v26 = 0;
        goto LABEL_34;
      }

LABEL_36:

      __break(1u);
      return result;
    }

    a5 = sub_20BEDEC18(*(v27 + 16), 0);
    v29 = *(sub_20C133244() - 8);
    a4 = sub_20BEE29BC(&v39, &a5[(*(v29 + 80) + 32) & ~*(v29 + 80)], a6, v28);
    a3 = v40;

    sub_20B583EDC();
    if (a4 == a6)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    v18 = *(a2 + 16);
    v41 = v7;
    if (v18)
    {
      v19 = (a2 + 32);
      v20 = MEMORY[0x277D84F90];
      do
      {
        if (!*v19++)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20BB5E264(0, *(v20 + 2) + 1, 1);
            v20 = v39;
          }

          v7 = *(v20 + 2);
          v21 = *(v20 + 3);
          if (v7 >= v21 >> 1)
          {
            sub_20BB5E264((v21 > 1), v7 + 1, 1);
            v20 = v39;
          }

          *(v20 + 2) = v7 + 1;
          v20[v7 + 32] = 0;
        }

        --v18;
      }

      while (v18);
      goto LABEL_23;
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_23:
  v30 = *(v20 + 2);

  v31 = sub_20B901B88(v30, a3, a4, a5, a6);
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = sub_20BEDEC18(*(v31 + 16), 0);
    v35 = *(sub_20C133244() - 8);
    v36 = sub_20BEE29BC(&v39, &v34[(*(v35 + 80) + 32) & ~*(v35 + 80)], v33, v32);

    sub_20B583EDC();
    if (v36 != v33)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v37 = v41;
  v39 = v34;
  sub_20B901E20(&v39);
  v24 = v37;
  if (v37)
  {
    goto LABEL_36;
  }

  result = v39;
  if (*(v39 + 2))
  {
    return result;
  }

  v26 = 1;
LABEL_34:

  sub_20B904E50();
  swift_allocError();
  *v38 = v26;
  return swift_willThrow();
}

uint64_t sub_20B901B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-v11];
  v13 = sub_20C133244();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 < 1)
  {
    return MEMORY[0x277D84FA0];
  }

  v17 = sub_20B6D2924(a5, a4);

  v18 = sub_20B904724(v17, a2, a3, a4, a5);

  if (a1 == 1)
  {
    sub_20B903448(a5);
    v20 = v19;
    sub_20BEDD608(v19, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_20B520158(v12, &unk_27C7629C0);
    }

    else
    {
      v21 = (*(v14 + 32))(v16, v12, v13);
      if (*(v20 + 16) == 1)
      {
        MEMORY[0x28223BE20](v21);
        *&v23[-16] = v16;
        v18 = sub_20BEE12E0(sub_20B904EA4, &v23[-32], v18);
      }

      (*(v14 + 8))(v16, v13);
    }
  }

  return v18;
}

void sub_20B901E20(void **a1)
{
  v2 = *(sub_20C133244() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0FD8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B901F2C(v5);
  *a1 = v3;
}

unint64_t sub_20B901EC8()
{
  result = qword_27C7679F8;
  if (!qword_27C7679F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7679F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7679F8);
  }

  return result;
}

void sub_20B901F2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133244();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133244() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B9022DC(v8, v9, a1, v4);
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
    sub_20B902058(0, v2, 1, a1);
  }
}

void sub_20B902058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133244();
  MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_20C1331C4();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B9022DC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_20C133244();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v118 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v118 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_20B6A07A0(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_20B902CC8(*v10 + a3[9] * v115, *v10 + a3[9] * *&v112[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_20B6A07A0(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_20B6A0714(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = sub_20C1331C4();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = sub_20C1331C4() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_20BC05740(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_20BC05740((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_20B902CC8(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_20B6A07A0(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_20B6A0714(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = sub_20C1331C4();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_20B902CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_20C133244();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
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

    v28 = a4 + v17;
    if (v17 < 1)
    {
      v32 = a4 + v17;
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v17;
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = a2 + v29;
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = v30 + v29;
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = sub_20C1331C4();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
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

    v52 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = sub_20C1331C4();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = v48 + v22;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_20B6A0AA4(&v59, &v58, &v57);
}

unint64_t *sub_20B903258(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B9044B4(v10, a2, a3, a7);
    v12 = v11;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t *sub_20B90330C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B903D18(v12, a2, a3, a7, a8);
    v14 = v13;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v14;
  }

  return result;
}

void *sub_20B9033D0(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_20B9035A8(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_20B903448(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_20B9033D0(v7, v4, v2);
      MEMORY[0x20F2F6A40](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_20B9035A8(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_20B9035A8(unint64_t *a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18);
  MEMORY[0x28223BE20](v38);
  v37 = &v27 - v4;
  v36 = sub_20C133244();
  v6 = MEMORY[0x28223BE20](v36);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v8 = 0;
  v39 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v29 = 0;
  v30 = (v12 + 63) >> 6;
  v33 = v5 + 16;
  v31 = v10;
  v32 = v5 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v39;
    v20 = v34;
    v21 = v35;
    v22 = *(v35 + 16);
    v23 = v36;
    v22(v34, v39[6] + *(v35 + 72) * v18, v36, v6);
    v24 = v18;
    LODWORD(v19) = *(v19[7] + v18);
    v25 = v37;
    (v22)(v37, v20, v23);
    *(v25 + *(v38 + 48)) = v19;
    sub_20B520158(v25, &qword_27C767A18);
    (*(v21 + 8))(v20, v23);
    v14 = v40;
    if (!v19)
    {
      *(v28 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        sub_20B6CE26C(v28, v27, v29, v39);
        return;
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v30)
    {
      goto LABEL_15;
    }

    v17 = v31[v8];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v40 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20B90385C(int64_t a1, uint64_t a2)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v45[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-v15];
  v17 = a1;
  v18 = sub_20C133224();
  v19 = sub_20C133234();
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v4 = sub_20BC07640((v20 > 1), v17, 1, v4);
    goto LABEL_26;
  }

  MEMORY[0x20F2EA980](v18, v19 - 1);
  if (*(a2 + 16) && (v21 = sub_20B65A98C(v16), (v22 & 1) != 0))
  {
    v23 = *(*(a2 + 56) + v21);
  }

  else
  {
    v23 = 6;
  }

  v46 = v23;
  v24 = *(v5 + 8);
  v24(v16, v4);
  v17 = a1;
  v16 = sub_20C133224();
  v25 = sub_20C133234();
  if (__OFADD__(v25, 1))
  {
    goto LABEL_47;
  }

  MEMORY[0x20F2EA980](v16, v25 + 1);
  if (*(a2 + 16) && (v26 = sub_20B65A98C(v13), (v27 & 1) != 0))
  {
    LODWORD(v16) = *(*(a2 + 56) + v26);
  }

  else
  {
    LODWORD(v16) = 6;
  }

  v24(v13, v4);
  v17 = a1;
  v28 = sub_20C133224();
  v13 = (v28 - 1);
  if (__OFSUB__(v28, 1))
  {
    goto LABEL_48;
  }

  v29 = sub_20C133234();
  MEMORY[0x20F2EA980](v13, v29);
  if (*(a2 + 16) && (v30 = sub_20B65A98C(v10), (v31 & 1) != 0))
  {
    LODWORD(v13) = *(*(a2 + 56) + v30);
  }

  else
  {
    LODWORD(v13) = 6;
  }

  v24(v10, v4);
  v17 = a1;
  v32 = sub_20C133224();
  v33 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    goto LABEL_49;
  }

  v34 = sub_20C133234();
  MEMORY[0x20F2EA980](v33, v34);
  if (*(a2 + 16))
  {
    v35 = sub_20B65A98C(v7);
    LODWORD(a1) = v46;
    if (v36)
    {
      LODWORD(a2) = *(*(a2 + 56) + v35);
    }

    else
    {
      LODWORD(a2) = 6;
    }
  }

  else
  {
    LODWORD(a2) = 6;
    LODWORD(a1) = v46;
  }

  v24(v7, v4);
  if (a1 == 6)
  {
    v4 = MEMORY[0x277D84F90];
    if (v16 == 6)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v4 = sub_20BC07640(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v4 + 16);
  v20 = *(v4 + 24);
  v17 = (v7 + 1);
  if (v7 >= v20 >> 1)
  {
    goto LABEL_50;
  }

LABEL_26:
  *(v4 + 16) = v17;
  v7[v4 + 32] = a1;
  if (v16 == 6)
  {
    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_20BC07640(0, *(v4 + 16) + 1, 1, v4);
  }

  v38 = *(v4 + 16);
  v37 = *(v4 + 24);
  if (v38 >= v37 >> 1)
  {
    v4 = sub_20BC07640((v37 > 1), v38 + 1, 1, v4);
  }

  *(v4 + 16) = v38 + 1;
  *(v4 + v38 + 32) = v16;
LABEL_32:
  if (v13 == 6)
  {
    if (a2 == 6)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_20BC07640(0, *(v4 + 16) + 1, 1, v4);
  }

  v40 = *(v4 + 16);
  v39 = *(v4 + 24);
  if (v40 >= v39 >> 1)
  {
    v4 = sub_20BC07640((v39 > 1), v40 + 1, 1, v4);
  }

  *(v4 + 16) = v40 + 1;
  *(v4 + v40 + 32) = v13;
  if (a2 != 6)
  {
LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_20BC07640(0, *(v4 + 16) + 1, 1, v4);
    }

    v42 = *(v4 + 16);
    v41 = *(v4 + 24);
    if (v42 >= v41 >> 1)
    {
      v4 = sub_20BC07640((v41 > 1), v42 + 1, 1, v4);
    }

    *(v4 + 16) = v42 + 1;
    *(v4 + v42 + 32) = a2;
  }

LABEL_45:
  v43 = sub_20B717760(v4);

  return v43;
}