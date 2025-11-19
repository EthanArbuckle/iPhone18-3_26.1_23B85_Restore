id sub_20BACDB30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilitySessionRingsPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BACDB88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BACDCB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = (*(a2 + 8))(a1, a2);
  *(inited + 40) = v5;
  v6 = sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  return v6;
}

unint64_t sub_20BACDD80()
{
  result = qword_27C76A030;
  if (!qword_27C76A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A030);
  }

  return result;
}

void sub_20BACDDD4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = [v10 layer];
  [v11 setCornerRadius_];

  [v10 setClipsToBounds_];
  [v10 setContentMode_];
  [v10 setClipsToBounds_];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v13];

  *&v4[v9] = v10;
  v14 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v14 setLineWidth_];
  v15 = [objc_opt_self() keyColors];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 nonGradientTextColor];

    if (v17)
    {
      v18 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_borderLayer;
      v19 = [v17 CGColor];
      [v14 setStrokeColor_];

      v20 = [objc_opt_self() clearColor];
      v21 = [v20 CGColor];
      [v14 setFillColor_];

      *&v4[v18] = v14;
      v26.receiver = v4;
      v26.super_class = type metadata accessor for SummaryTrainerView();
      v22 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
      v23 = *&v22[OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView];
      v24 = v22;
      [v24 addSubview_];
      v25 = [v24 layer];
      [v25 addSublayer_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BACE114()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SummaryTrainerView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_borderLayer];
  [v0 bounds];
  [v2 setFrame_];
  [v2 bounds];
  v7 = [objc_opt_self() bezierPathWithRoundedRect:v3 cornerRadius:{v4, v5, v6, 45.0}];
  v8 = [v7 CGPath];

  [v2 setPath_];
}

id sub_20BACE290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTrainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BACE334()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  [v2 setContentMode_];
  [v2 setClipsToBounds_];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];

  *(v0 + v1) = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v6 setLineWidth_];
  v7 = [objc_opt_self() keyColors];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = [v7 nonGradientTextColor];

  if (!v9)
  {
    __break(1u);
  }

  v10 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_borderLayer;
  v11 = [v9 CGColor];
  [v6 setStrokeColor_];

  v12 = [objc_opt_self() clearColor];
  v13 = [v12 CGColor];
  [v6 setFillColor_];

  *(v0 + v10) = v6;
  sub_20C13DE24();
  __break(1u);
}

uint64_t NavigationSharingURLInfo.copyWith(url:referrerURL:sourceApplication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a4;
  v36 = a3;
  v33 = a2;
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_20C132C14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B6A6860(a1, v16);
  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    v22 = v6;
    (*(v18 + 16))(v20, v6, v17);
    if (v21(v16, 1, v17) != 1)
    {
      sub_20B9E801C(v16);
    }
  }

  else
  {
    v22 = v6;
    (*(v18 + 32))(v20, v16, v17);
  }

  sub_20B6A6860(v33, v10);
  v23 = v21(v10, 1, v17);
  v24 = v35;
  if (v23 == 1)
  {
    v25 = type metadata accessor for NavigationSharingURLInfo();
    sub_20B6A6860(v22 + *(v25 + 20), v13);
    if (v21(v10, 1, v17) != 1)
    {
      sub_20B9E801C(v10);
    }
  }

  else
  {
    (*(v18 + 32))(v13, v10, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
  }

  v26 = v24;
  v27 = v36;
  if (!v24)
  {
    v28 = (v22 + *(type metadata accessor for NavigationSharingURLInfo() + 24));
    v27 = *v28;
    v26 = v28[1];
  }

  v29 = v34;
  (*(v18 + 32))(v34, v20, v17);
  v30 = type metadata accessor for NavigationSharingURLInfo();
  sub_20B6A69B4(v13, v29 + *(v30 + 20));
  v31 = (v29 + *(v30 + 24));
  *v31 = v27;
  v31[1] = v26;
}

char *sub_20BACE8CC(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v101 - v10;
  v11 = sub_20C13BC44();
  v102 = *(v11 - 1);
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BBC4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  v19 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController;
  *&v4[v20] = [objc_allocWithZone(SMUAvatarViewController) init];
  v21 = &v4[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout];
  __asm { FMOV            V1.2D, #5.0 }

  *v21 = xmmword_20C16B9A0;
  *(v21 + 1) = _Q1;
  *(v21 + 2) = vdupq_n_s64(0x404C000000000000uLL);
  *(v21 + 6) = 0x4030000000000000;
  v27 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView;
  v28 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v27] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView;
  v30 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v29] = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v31] = v32;
  v33 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v33] = v34;
  v35 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_userImageView;
  v36 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v35] = v36;
  v37 = type metadata accessor for AccountSettingAvatarRowCell();
  v108.receiver = v4;
  v108.super_class = v37;
  v38 = objc_msgSendSuper2(&v108, sel_initWithFrame_, a1, a2, a3, a4);
  v39 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v40 = v38;
  v41 = [v39 init];
  v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.21 alpha:1.0];
  v104 = v41;
  [v41 setBackgroundColor_];

  v43 = v40;
  [v43 setSelectedBackgroundView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  (*(v15 + 104))(v17, *MEMORY[0x277D74A98], v14);
  v44 = sub_20C13BBF4();
  (*(*(v44 - 8) + 56))(v101, 1, 1, v44);
  v45 = v43;
  sub_20C13BC34();
  sub_20C13BC04();
  (v102)[1](v13, v103);
  (*(v15 + 8))(v17, v14);
  sub_20C13D464();

  v46 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
  [v45 setBackgroundColor_];

  v47 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView;
  [*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView] setAlignment_];
  [*&v45[v47] setAxis_];
  v48 = [v45 contentView];
  [v48 addSubview_];

  v49 = [*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController] view];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = [v49 layer];
  [v50 setShouldRasterize_];

  v51 = [v49 layer];
  v52 = [objc_opt_self() mainScreen];
  [v52 scale];
  v54 = v53;

  [v51 setRasterizationScale_];
  v55 = *&v45[v47];
  v103 = v49;
  [v55 addArrangedSubview_];
  v56 = &v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout];
  [*&v45[v47] setCustomSpacing:v49 afterView:*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout + 48]];
  v57 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView;
  [*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView] setAlignment_];
  [*&v45[v57] setAxis_];
  [*&v45[v57] setDistribution_];
  [*&v45[v47] &selRef:*&v45[v57] setEnabled:?];
  v58 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel;
  v59 = *&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel];
  v60 = objc_opt_self();
  v61 = v59;
  v62 = [v60 whiteColor];
  [v61 setTextColor_];

  v63 = *&v45[v58];
  v64 = objc_opt_self();
  v65 = *MEMORY[0x277D76918];
  v66 = v63;
  v67 = [v64 preferredFontForTextStyle_];
  [v66 setFont_];

  [*&v45[v57] addArrangedSubview_];
  v68 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel;
  v69 = *&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel];
  v70 = [v60 whiteColor];
  [v69 setTextColor_];

  v71 = *MEMORY[0x277D76968];
  v72 = *&v45[v68];
  v73 = [v64 preferredFontForTextStyle_];
  [v72 setFont_];

  [*&v45[v57] addArrangedSubview_];
  v102 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C150AE0;
  v75 = [*&v45[v47] leadingAnchor];
  v76 = [v45 contentView];
  v77 = [v76 leadingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:v56[1]];
  *(v74 + 32) = v78;
  v79 = [*&v45[v47] trailingAnchor];
  v80 = [v45 contentView];
  v81 = [v80 trailingAnchor];

  v82 = [v79 constraintEqualToAnchor:v81 constant:-v56[3]];
  *(v74 + 40) = v82;
  v83 = [*&v45[v47] topAnchor];
  v84 = [v45 contentView];
  v85 = [v84 topAnchor];

  v86 = [v83 constraintEqualToAnchor:v85 constant:*v56];
  *(v74 + 48) = v86;
  v87 = [*&v45[v47] bottomAnchor];
  v88 = [v45 contentView];

  v89 = [v88 bottomAnchor];
  v90 = [v87 constraintEqualToAnchor:v89 constant:-v56[2]];

  type metadata accessor for UILayoutPriority(0);
  v105 = 1065353216;
  v106 = 1148846080;
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v91) = v107;
  [v90 setPriority_];
  *(v74 + 56) = v90;
  v92 = [*&v45[v47] heightAnchor];
  v93 = [v92 constraintGreaterThanOrEqualToConstant_];

  *(v74 + 64) = v93;
  v94 = v103;
  v95 = [v103 widthAnchor];
  v96 = [v95 constraintEqualToConstant_];

  *(v74 + 72) = v96;
  v97 = [v94 heightAnchor];
  v98 = [v97 constraintEqualToConstant_];

  *(v74 + 80) = v98;
  sub_20B5E29D0();
  v99 = sub_20C13CC54();

  [v102 activateConstraints_];

  return v45;
}

id sub_20BACF72C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSettingAvatarRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSettingAvatarRowCell()
{
  result = qword_2811012E8;
  if (!qword_2811012E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BACF874()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BACF940(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BACF98C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BACF9E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BACFA48(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 57) & 0x78 | a1 & 7)
  {
    sub_20C13B534();

    v8 = v1;
    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v31 = v3;
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = a1;
      v33 = v14;
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *v13 = v8;
      *(v12 + 12) = 2082;
      v15 = sub_20B5F66D0();
      v16 = v8;
      v17 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v15);
      v19 = sub_20B51E694(v17, v18, &v33);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_20B517000, v9, v10, "Attempted to configure %{public}@ with item: %{public}s", v12, 0x16u);
      sub_20B520158(v13, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);

      (*(v4 + 8))(v7, v31);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    v23 = *&v1[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController];
    [v23 setContact_];
    v24 = [v23 view];
    [v24 setHidden_];

    v25 = *&v1[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel];
    if (v21)
    {
      v26 = sub_20C13C914();
    }

    else
    {
      v26 = 0;
    }

    [v25 setText_];

    v27 = *&v1[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel];
    if (v22)
    {
      v28 = sub_20C13C914();
    }

    else
    {
      v28 = 0;
    }

    v31 = v28;
    [v27 setText_];
    v29 = v31;
  }
}

void sub_20BACFDA0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController;
  *(v0 + v3) = [objc_allocWithZone(SMUAvatarViewController) init];
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout;
  __asm { FMOV            V1.2D, #5.0 }

  *v4 = xmmword_20C16B9A0;
  *(v4 + 16) = _Q1;
  *(v4 + 32) = vdupq_n_s64(0x404C000000000000uLL);
  *(v4 + 48) = 0x4030000000000000;
  v10 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_userImageView;
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v18) = v19;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BACFFA8(char *a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v6 - 8);
  v105 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v96 - v13;
  v100 = sub_20C1333A4();
  v15 = *(v100 - 1);
  MEMORY[0x28223BE20](v100);
  v101 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v116, v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v1 + 64) = v116;
  sub_20C133AA4();
  *(v1 + 80) = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v116, v1 + 96);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + 88) = sub_20C13A914();
  v20 = *MEMORY[0x277D51838];
  v21 = sub_20C1352F4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v14, v20, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v102, 1, 1, v23);
  v24 = sub_20C135ED4();
  (*(*(v24 - 8) + 56))(v103, 1, 1, v24);
  v25 = sub_20C136914();
  (*(*(v25 - 8) + 56))(v105, 1, 1, v25);
  sub_20C133384();
  v26 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_metricPage;
  v27 = v100;
  (*(v15 + 32))(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_metricPage, v19, v100);
  type metadata accessor for WorkoutPlanGalleryActivePlanShelf();
  swift_allocObject();

  v29 = sub_20B86A238(v28);

  *(v2 + 136) = v29;
  type metadata accessor for EmptyWorkoutPlanTemplateGalleryShelf();
  swift_allocObject();

  v30 = sub_20BEFDB2C();

  *(v2 + 144) = v30;
  type metadata accessor for WorkoutPlanGalleryTemplatesShelf();
  swift_allocObject();

  v32 = sub_20BCC8768(v31);
  v105 = a1;

  *(v2 + 152) = v32;
  v33 = v2 + v26;
  v34 = v101;
  (*(v15 + 16))(v101, v33, v27);
  v35 = sub_20C133394();
  v102 = v36;
  v103 = v35;
  (*(v15 + 8))(v34, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = *(v2 + 144);
  *(inited + 40) = &off_2822F4DA0;
  v38 = *(v2 + 136);
  *(inited + 48) = v38;
  *(inited + 56) = &off_2822ADFF8;
  v39 = *(v2 + 152);
  *(inited + 64) = v39;
  *(inited + 72) = &off_2822DD778;
  LODWORD(v101) = *(v2 + 80);
  v40 = objc_allocWithZone(MEMORY[0x277D75300]);

  v98 = v38;

  v99 = v39;

  v41 = [v40 init];
  v100 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v41 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v42 = sub_20C13C724();
  v43 = type metadata accessor for CatalogPageImpressionTracker();
  v44 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v45 = MEMORY[0x277D221C0];
  v44[2] = sub_20C13C6D4();
  v44[3] = v42;
  v44[4] = v45;
  v117 = v43;
  v46 = sub_20B63336C(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v118 = v46;
  *&v116 = v44;
  v47 = type metadata accessor for MetricLocationStore();
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F98];
  *(v48 + 16) = MEMORY[0x277D84F90];
  *(v48 + 24) = v50;
  v51 = __swift_mutable_project_boxed_opaque_existential_1(&v116, v43);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = (&v96 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54, v52);
  v56 = *v54;
  v104 = v46;
  v115[3] = v43;
  v115[4] = v46;
  v115[0] = v56;
  v114[3] = v47;
  v114[4] = &off_2822B6968;
  v97 = v47;
  v114[0] = v48;
  v113[0] = v49;
  sub_20BB5D394(0, 3, 0);
  v57 = v113[0];
  v59 = *(v113[0] + 16);
  v58 = *(v113[0] + 24);
  v60 = v58 >> 1;
  v61 = v59 + 1;
  v96 = *(inited + 32);
  swift_unknownObjectRetain();
  if (v58 >> 1 <= v59)
  {
    sub_20BB5D394((v58 > 1), v59 + 1, 1);
    v57 = v113[0];
    v58 = *(v113[0] + 24);
    v60 = v58 >> 1;
  }

  *(v57 + 16) = v61;
  v62 = v57 + 24 * v59;
  *(v62 + 32) = v96;
  *(v62 + 48) = 0;
  v63 = v59 + 2;
  v64 = v98;

  if (v60 <= v61)
  {
    sub_20BB5D394((v58 > 1), v63, 1);
    v57 = v113[0];
  }

  *(v57 + 16) = v63;
  v65 = v57 + 24 * v61;
  *(v65 + 32) = v64;
  *(v65 + 40) = &off_2822ADFF8;
  *(v65 + 48) = 0;
  v66 = v99;
  swift_unknownObjectRetain();

  v68 = *(v57 + 16);
  v67 = *(v57 + 24);
  if (v68 >= v67 >> 1)
  {
    sub_20BB5D394((v67 > 1), v68 + 1, 1);
  }

  v69 = v113[0];
  *(v113[0] + 16) = v68 + 1;
  v70 = v69 + 24 * v68;
  *(v70 + 32) = v66;
  *(v70 + 40) = &off_2822DD778;
  *(v70 + 48) = 0;
  sub_20B51CC64(v115, v113);
  sub_20B51CC64(v114, v112);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v113, v113[3]);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = (&v96 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v112, v112[3]);
  v99 = &v96;
  v77 = MEMORY[0x28223BE20](v76);
  v79 = (&v96 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79, v77);
  v81 = *v74;
  v82 = *v79;
  v110 = v43;
  v111 = v104;
  v109[0] = v81;
  v107 = v97;
  v108 = &off_2822B6968;
  v106[0] = v82;
  v83 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  v85 = MEMORY[0x28223BE20](v84);
  v87 = (&v96 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87, v85);
  v89 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  v90 = MEMORY[0x28223BE20](v89);
  v92 = (&v96 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92, v90);
  v94 = sub_20BE3AA74(v103, v102, v69, v101, v100, *v87, *v92, 2, v83);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(&v116);
  *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_page) = v94;
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B5237AC();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(&v116);

  swift_getObjectType();
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(&v116);

  return v2;
}

uint64_t sub_20BAD0E20(uint64_t a1)
{
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A060);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BAD0EBC, 0, 0);
}

uint64_t sub_20BAD0EBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BAD0FB4;
    v3 = v0[6];

    return sub_20BAD1884(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20BAD0FB4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_20BAD10F4;

  return sub_20BAD283C();
}

uint64_t sub_20BAD10F4(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_20BAD11F4, 0, 0);
}

uint64_t sub_20BAD11F4()
{
  sub_20C13CDA4();
  *(v0 + 88) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BAD1288, v2, v1);
}

uint64_t sub_20BAD1288()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  sub_20BAD3874(v2, v1);

  return MEMORY[0x2822009F8](sub_20BAD4B5C, 0, 0);
}

uint64_t sub_20BAD1310(uint64_t a1)
{
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A060);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BAD13AC, 0, 0);
}

uint64_t sub_20BAD13AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BAD14A4;
    v3 = v0[6];

    return sub_20BAD1884(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20BAD14A4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_20BAD15E4;

  return sub_20BAD283C();
}

uint64_t sub_20BAD15E4(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_20BAD16E4, 0, 0);
}

uint64_t sub_20BAD16E4()
{
  sub_20C13CDA4();
  *(v0 + 88) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BAD1778, v2, v1);
}

uint64_t sub_20BAD1778()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  sub_20BAD3874(v2, v1);

  return MEMORY[0x2822009F8](sub_20BAD1800, 0, 0);
}

uint64_t sub_20BAD1800()
{
  v1 = *(v0 + 48);

  sub_20B520158(v1, &qword_27C76A060);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20BAD1884(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20C13BB84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_20C135814();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_20C133954();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BAD1A40, 0, 0);
}

uint64_t sub_20BAD1A40()
{
  v1 = v0[4];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_20BAD1B00;
  v5 = v0[15];

  return MEMORY[0x2821ADE88](v5, v2, v3);
}

uint64_t sub_20BAD1B00()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20BAD235C;
  }

  else
  {
    v2 = sub_20BAD1C14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BAD1C14()
{
  v1 = v0[4];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650);
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14F980;
  sub_20C133854();
  v8 = sub_20BE8D710(v7);
  v0[18] = v8;
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_20BAD1DC4;

  return MEMORY[0x2821ADEF0](v8, v2, v3);
}

uint64_t sub_20BAD1DC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_20BAD25C0;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_20BAD1F08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BAD1F08()
{
  v41 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  sub_20BEDD6DC(v0[21], v1);

  sub_20B52F9E8(v1, v2, &unk_27C762300);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  if (v5 == 1)
  {
    sub_20B520158(v0[11], &unk_27C762300);
    v11 = sub_20C134E24();
    sub_20B63336C(&unk_27C762270, MEMORY[0x277D51210]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D51198], v11);
    swift_willThrow();
    sub_20B520158(v9, &unk_27C762300);
    (*(v7 + 8))(v6, v8);
    sub_20C13B454();
    v14 = v12;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[5];
    if (v17)
    {
      v39 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136446210;
      v0[2] = v12;
      v23 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
      v24 = sub_20C13C9D4();
      v26 = sub_20B51E694(v24, v25, &v40);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_20B517000, v15, v16, "Failed to fetch active workout plan: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x20F2F6A40](v22, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);

      (*(v18 + 8))(v39, v20);
    }

    else
    {

      (*(v18 + 8))(v19, v20);
    }

    v35 = v0[3];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A068);
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  }

  else
  {
    v28 = v0[9];
    v27 = v0[10];
    v29 = v0[8];
    v30 = v0[3];
    sub_20B520158(v0[12], &unk_27C762300);
    v31 = *(v28 + 32);
    v31(v27, v10, v29);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A068);
    v33 = v6;
    v34 = *(v32 + 48);
    (*(v7 + 32))(v30, v33, v8);
    v31(v30 + v34, v27, v29);
    (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_20BAD235C()
{
  v22 = v0;
  v1 = v0[17];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v20 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to fetch active workout plan: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v20, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A068);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_20BAD25C0()
{
  v22 = v0;
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[20];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v20 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to fetch active workout plan: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v20, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A068);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_20BAD283C()
{
  v1[3] = v0;
  v2 = sub_20C13BB84();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BAD28FC, 0, 0);
}

uint64_t sub_20BAD28FC()
{
  v1 = *(v0 + 24);
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_20BAD29B4;

  return MEMORY[0x2821ADF38](v2, v3);
}

uint64_t sub_20BAD29B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20BAD2B0C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_20BAD2B0C()
{
  v22 = v0;
  v1 = v0[8];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = v0[5];
    v20 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v0[2] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v11 = sub_20C13C9D4();
    v13 = sub_20B51E694(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to fetch workout plan templates: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v20, v7);
  }

  else
  {
    v5 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];
  v18 = MEMORY[0x277D84FA0];

  return v17(v18);
}

uint64_t sub_20BAD2CFC()
{
  v1[10] = v0;
  v2 = sub_20C1365F4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630);
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  sub_20C13CDA4();
  v1[21] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[22] = v6;
  v1[23] = v5;

  return MEMORY[0x2822009F8](sub_20BAD2EC0, v6, v5);
}

uint64_t sub_20BAD2EC0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 24), *(*(v0 + 80) + 48));
  sub_20C139FD4();

  return MEMORY[0x2822009F8](sub_20BAD2F54, 0, 0);
}

uint64_t sub_20BAD2F54()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[24] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanGalleryDataProvider.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 91;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[25] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10);
  *v3 = v0;
  v3[1] = sub_20BAD3078;

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BAD4B4C, v2, v4);
}

uint64_t sub_20BAD3078()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_20BAD31E4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[19];
    v6 = v2[20];
    v8 = v2[18];
    v2[27] = v2[8];

    (*(v7 + 8))(v6, v8);
    v4 = v2[22];
    v5 = v2[23];
    v3 = sub_20BAD346C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20BAD31E4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x2822009F8](sub_20BAD3258, v1, v2);
}

uint64_t sub_20BAD3258()
{
  v21 = v0;
  v1 = *(v0 + 208);

  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 72) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v11 = sub_20C13C9D4();
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to fetch modality references: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

unint64_t sub_20BAD346C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 96);

  v3 = sub_20B6B27E8(MEMORY[0x277D84F90]);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v45 = (v2 + 8);
  v46 = v2;
  v47 = v1;
  v41 = (v2 + 40);
  v42 = (v2 + 32);

  v10 = 0;
  v43 = v8;
  v44 = v1 + 56;
  while (v7)
  {
    v12 = v10;
LABEL_11:
    v14 = v49[13];
    v13 = v49[14];
    v15 = v49[11];
    v48 = *(v46 + 72);
    v16 = *(v46 + 16);
    v16(v13, *(v47 + 48) + v48 * (__clz(__rbit64(v7)) | (v12 << 6)), v15);
    v17 = sub_20C1365A4();
    v19 = v18;
    v16(v14, v13, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v3;
    result = sub_20B65AA60(v17, v19);
    v22 = *(v3 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v26 = v21;
    if (*(v3 + 24) >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = result;
        sub_20BA0FBAC();
        result = v34;
      }
    }

    else
    {
      sub_20BA08BFC(v25, isUniquelyReferenced_nonNull_native);
      result = sub_20B65AA60(v17, v19);
      if ((v26 & 1) != (v27 & 1))
      {

        return sub_20C13E054();
      }
    }

    v7 &= v7 - 1;
    v29 = v49[13];
    v28 = v49[14];
    v30 = v49[11];
    if (v26)
    {
      v11 = result;

      v3 = v50;
      (*v41)(v50[7] + v11 * v48, v29, v30);
      result = (*v45)(v28, v30);
    }

    else
    {
      v3 = v50;
      v50[(result >> 6) + 8] |= 1 << result;
      v31 = (v50[6] + 16 * result);
      *v31 = v17;
      v31[1] = v19;
      (*v42)(v50[7] + result * v48, v29, v30);
      result = (*v45)(v28, v30);
      v32 = v50[2];
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_28;
      }

      v50[2] = v33;
    }

    v10 = v12;
    v8 = v43;
    v4 = v44;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v35 = v49[10];

  v36 = *(v35 + 136);
  v37 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_modalities;
  swift_beginAccess();
  *(v36 + v37) = v3;

  v38 = *(v35 + 152);
  v39 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_modalities;
  swift_beginAccess();
  *(v38 + v39) = v3;

  v40 = v49[1];

  return v40();
}

uint64_t sub_20BAD3874(void (*a1)(char *, void, uint64_t, uint64_t), uint64_t a2)
{
  v44 = a2;
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A060);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_20C135814();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v42, v9, &qword_27C76A060);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A068);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    v19 = v43;
    sub_20B520158(v9, &qword_27C76A060);
    v20 = *(v15 + 56);
    if (*(v44 + 16))
    {
      v20(v6, 1, 1, v14);
      v21 = v44;
      sub_20BEFCD2C(v6, v44);
      sub_20B520158(v6, &unk_27C76A970);
      v20(v6, 1, 1, v14);
      (*(v11 + 56))(v19, 1, 1, v10);
      sub_20B864E88(v6, v19, v21);
      sub_20B520158(v19, &unk_27C762300);
      sub_20B520158(v6, &unk_27C76A970);
      v20(v6, 1, 1, v14);
      sub_20BCC55AC(v6, v21);
    }

    else
    {
      v20(v6, 1, 1, v14);
      (*(v11 + 56))(v19, 1, 1, v10);
      v35 = MEMORY[0x277D84FA0];
      sub_20B864E88(v6, v19, MEMORY[0x277D84FA0]);
      sub_20B520158(v19, &unk_27C762300);
      sub_20B520158(v6, &unk_27C76A970);
      v20(v6, 1, 1, v14);
      sub_20BCC55AC(v6, v35);
      sub_20B520158(v6, &unk_27C76A970);
      v20(v6, 1, 1, v14);
      sub_20BEFCD2C(v6, v35);
    }

    return sub_20B520158(v6, &unk_27C76A970);
  }

  else
  {
    v22 = *(v18 + 48);
    v23 = v15;
    v38 = v15;
    (*(v15 + 32))(v17, v9, v14);
    v24 = *(v11 + 32);
    v40 = v11;
    v41 = v13;
    v39 = v10;
    v24(v13, &v9[v22], v10);
    v37 = v17;
    v25 = *(v15 + 16);
    v25(v6, v17, v14);
    v26 = *(v23 + 56);
    v26(v6, 0, 1, v14);
    v42 = v26;
    sub_20BEFCD2C(v6, v44);
    sub_20B520158(v6, &unk_27C76A970);
    v27 = v37;
    v28 = v14;
    v25(v6, v37, v14);
    v29 = v25;
    v26(v6, 0, 1, v28);
    v30 = v40;
    v31 = v43;
    v32 = v39;
    (*(v40 + 16))(v43, v41, v39);
    (*(v30 + 56))(v31, 0, 1, v32);
    v33 = v44;
    sub_20B864E88(v6, v31, v44);
    sub_20B520158(v31, &unk_27C762300);
    sub_20B520158(v6, &unk_27C76A970);
    v29(v6, v27, v28);
    v42(v6, 0, 1, v28);
    sub_20BCC55AC(v6, v33);
    sub_20B520158(v6, &unk_27C76A970);
    (*(v40 + 8))(v41, v39);
    return (*(v38 + 8))(v27, v28);
  }
}

uint64_t sub_20BAD3F94()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_delegate);
  return v0;
}

uint64_t sub_20BAD4054()
{
  sub_20BAD3F94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanGalleryDataProvider()
{
  result = qword_27C76A050;
  if (!qword_27C76A050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAD4100()
{
  result = sub_20C1333A4();
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

uint64_t sub_20BAD41E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A060);
  v4[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_20BAD42AC;

  return sub_20BAD2CFC();
}

uint64_t sub_20BAD42AC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_20BAD4404;
  v4 = *(v1 + 24);

  return sub_20BAD1884(v4);
}

uint64_t sub_20BAD4404()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_20BAD4544;

  return sub_20BAD283C();
}

uint64_t sub_20BAD4544(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_20BAD4644, 0, 0);
}

uint64_t sub_20BAD4644()
{
  sub_20C13CDA4();
  *(v0 + 64) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BAD46D8, v2, v1);
}

uint64_t sub_20BAD46D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  sub_20BAD3874(v2, v1);

  return MEMORY[0x2822009F8](sub_20BAD4760, 0, 0);
}

uint64_t sub_20BAD4760()
{
  sub_20B520158(*(v0 + 24), &qword_27C76A060);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BAD47F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BAD486C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C16BB60, v6);
}

uint64_t sub_20BAD4978()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BAD0E20(v0);
}

uint64_t sub_20BAD4A08()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20BAD1310(v0);
}

uint64_t sub_20BAD4A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BAD41E0(a1, v4, v5, v6);
}

void sub_20BAD4B60()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_workoutPlanStringBuilder) + 48), *(*(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_workoutPlanStringBuilder) + 72));
  sub_20B5E107C();
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_20C13C914();

  v8 = [v6 initWithString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 32) = v10 | 0x8000000000000006;
  v32 = 0uLL;
  LOBYTE(v33[0]) = 1;
  *(v33 + 8) = xmmword_20C157520;
  strcpy(&v33[1] + 8, "@");
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v9;
  *&v38[0] = MEMORY[0x277D84F90];
  *(v38 + 8) = 0u;
  *(&v38[1] + 8) = 0u;
  *(&v38[2] + 1) = 0;
  v39 = 2;
  nullsub_1(&v32);
  v11 = v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 144);
  v40[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 128);
  v40[9] = v12;
  v41 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 160);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 80);
  v40[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 64);
  v40[5] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 112);
  v40[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 96);
  v40[7] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 16);
  v40[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row);
  v40[1] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 48);
  v40[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 32);
  v40[3] = v16;
  v17 = v38[2];
  *(v11 + 128) = v38[1];
  *(v11 + 144) = v17;
  *(v11 + 160) = v39;
  v18 = v36;
  *(v11 + 64) = v35;
  *(v11 + 80) = v18;
  v19 = v38[0];
  *(v11 + 96) = v37;
  *(v11 + 112) = v19;
  v20 = v33[0];
  *v11 = v32;
  *(v11 + 16) = v20;
  v21 = v34;
  *(v11 + 32) = v33[1];
  *(v11 + 48) = v21;
  v22 = v8;
  sub_20B634408(v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v24 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v25 = sub_20B61D000(v1, Strong);
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v31 = v25;
      sub_20B5E2E18();
      *v5 = sub_20C13D374();
      (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
      v30 = sub_20C13C584();
      (*(v3 + 8))(v5, v2);
      if ((v30 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B620650(v31, v28, v29, v1, 0, v24);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20BAD4F0C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanSurveyHeaderShelf()
{
  result = qword_27C76A078;
  if (!qword_27C76A078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAD5054()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BAD5108@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BAD5180@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t AccountSettingLinkPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BAD52BC()
{
  result = qword_27C76A088;
  if (!qword_27C76A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A088);
  }

  return result;
}

double sub_20BAD5320()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9048;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2B08(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5460()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9040;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2C90(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD55A0()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9038;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2E18(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD56E0()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9068;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2370(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5814()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9030;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2FA0(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5954()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider) + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9028;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F3128(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5A88()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9020;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F32A8(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5BC8()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9060;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2988(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5CFC()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9018;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F3430(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5E3C()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9058;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F2678(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD5F7C()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9010;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F35B8(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD60BC()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9008;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F3740(v7, v6 == 3, v8, 1);
  }

  return result;
}

double sub_20BAD61FC()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior + 16) >= 0xFCu)
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider) + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v3 = sub_20BAD9050;
    v3[1] = v2;
    v5 = v1;

    sub_20B583ECC(v4);

    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior + 8);
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior);
    }

    if (v6 == 3)
    {
      v8 = 64;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior + 8);
    }

    return sub_20B9F24F8(v7, v6 == 3, v8, 1);
  }

  return result;
}

uint64_t WorkoutPlanTemplateDetailViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id WorkoutPlanTemplateDetailViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id WorkoutPlanTemplateDetailViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*WorkoutPlanTemplateDetailViewController.preferredContentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x4087E00000000000;
    v9 = 0x4083800000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

char *WorkoutPlanTemplateDetailViewController.__allocating_init(dependencies:pageContext:pageNavigator:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_20C132EE4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v16, a5, v12, v14);
  type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider(0);
  swift_allocObject();
  v17 = sub_20BDCE950(a1, v16, a2, a3, 1);
  sub_20B51CC64(a4, v29);
  v18 = objc_allocWithZone(v6);
  v19 = v30;
  v20 = v31;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v29[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v25 + 16))(v24, v22);
  v26 = sub_20BAD8D24(a1, v17, v24, 1, v18, v19, v20);

  (*(v13 + 8))(a5, v12);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v26;
}

Swift::Void __swiftcall WorkoutPlanTemplateDetailViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    sub_20BAD6AD0(&unk_28228DC00);
    sub_20B794D34(0);
    sub_20B7961B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_20BAD6AD0(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_allowsPlanActions) != 1)
  {
    sub_20B51C88C(0, &qword_27C7713A0);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = sub_20C13D624();
    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      v12 = [objc_opt_self() whiteColor];
      [v11 setTintColor_];
    }

    v6 = [v2 navigationItem];
    sub_20B51C88C(0, &qword_27C770510);
    v13 = v8;
    v29 = sub_20C13D254();
    [v6 setRightBarButtonItem_];

    goto LABEL_14;
  }

  sub_20B51C88C(0, &qword_27C770510);
  v4 = sub_20C13C914();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_20BAD7A90(a1);
  v29 = sub_20C13D264();
  if (!*(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform))
  {
    v6 = [v2 navigationItem];
    [v6 setRightBarButtonItem_];
LABEL_14:

    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform) != 1)
  {
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v14 = [v2 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationBar];

    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v16 setTintColor_];
  }

  v18 = [v2 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F580;
  *(v19 + 32) = v29;
  v29 = v29;
  v20 = sub_20C13CC54();

  [v18 setRightBarButtonItems_];

  v21 = [v2 navigationController];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 navigationBar];

    v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
    [v23 setBarTintColor_];
  }

  v25 = [v2 navigationItem];
  v26 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v2 action:sel_handleDoneButtonTapped];
  [v25 setLeftBarButtonItem_];

  v27 = [v2 navigationItem];
  v28 = [v27 leftBarButtonItem];

  if (v28)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v28 setTintColor_];

    goto LABEL_14;
  }

LABEL_15:
}

Swift::Void __swiftcall WorkoutPlanTemplateDetailViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1, v7);
  v10 = *&v2[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider];
  sub_20BDCB0E8();
  v11 = sub_20BAD56E0();
  v12[1] = v2;
  (*(v6 + 16))(v9, v10 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage, v5, v11);
  sub_20BAD9094(&qword_27C76A0B0);
  sub_20C138C54();
  (*(v6 + 8))(v9, v5);
  sub_20BAD9094(&qword_27C76A0B8);
  sub_20BAD9094(&qword_27C76A0C0);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanTemplateDetailViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1, v7);
  v16 = v2;
  sub_20C132E84();
  sub_20BAD9094(&qword_27C76A0B8);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v13 = sub_20C13CC74();

    v16 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v15 - 2) = &v16;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v15 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v16 = v2;
      sub_20BAD9094(&qword_27C76A0B0);
      sub_20C138C64();
    }
  }
}

Swift::Void __swiftcall WorkoutPlanTemplateDetailViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_20BAD9094(&qword_27C76A0B8);
  sub_20BAD9094(&qword_27C76A0C0);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanTemplateDetailViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);
}

void sub_20BAD7A2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_20BAD7A90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v23 = objc_opt_self();
    sub_20B51C88C(0, &qword_27C7713A0);
    v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_workoutPlanStringBuilder);
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
      v8 = sub_20B5E107C();
      v10 = v9;

      v11 = sub_20C13C914();

      v12 = [v23 systemImageNamed_];

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      *(v14 + 24) = v10;
      *(v14 + 32) = v12;
      *(v14 + 40) = v7;
      *(v14 + 48) = v13;

      v15 = v12;
      sub_20C13D624();
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      --v2;
    }

    while (v2);
    v3 = aBlock[0];
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v3;
  aBlock[4] = sub_20BAD908C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  aBlock[3] = &block_descriptor_78;
  v19 = _Block_copy(aBlock);

  v20 = [v16 elementWithUncachedProvider_];
  _Block_release(v19);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C14F580;
  *(v21 + 32) = v20;
  return sub_20C13D554();
}

void sub_20BAD7EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider);
    v11 = Strong;
    v12 = sub_20C13CDF4();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = a5;
    *(v13 + 40) = v10;

    sub_20B6383D0(0, 0, v8, &unk_20C16BF80, v13);
  }

  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v15 = v16;
        sub_20BDCB518();
        goto LABEL_10;
      }
    }
  }

  else if (!a5)
  {
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_20BDCB414();
LABEL_10:
    }
  }
}

uint64_t sub_20BAD80D0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20BAD81D8();
  }

  if (a4 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v9 = sub_20C13DE34();

    a4 = v9;
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
  }

  a1(a4);
}

uint64_t sub_20BAD81D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20C1333A4();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_20C1352E4();
  v22 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v12 = *(v23 - 8);
  v13 = MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v0;
  (*(v12 + 104))(v15, *MEMORY[0x277D51390], v13);
  (*(v9 + 104))(v11, *MEMORY[0x277D51768], v8);
  v16 = *MEMORY[0x277D523D8];
  v17 = sub_20C135ED4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v20 = v24;
  v19 = v25;
  (*(v24 + 16))(v4, *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage, v25);
  sub_20BAD9094(&qword_27C76A118);
  sub_20C138D94();
  (*(v20 + 8))(v4, v19);
  sub_20BAC9A5C(v7);
  (*(v9 + 8))(v11, v22);
  return (*(v12 + 8))(v15, v23);
}

id WorkoutPlanTemplateDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id WorkoutPlanTemplateDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BAD8884(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20BAD88EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BAD89A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BAD8A78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BAD8B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20BAD9094(&qword_27C76A0B8);

  return a3(ObjectType, v5, a2);
}

void sub_20BAD8BE4()
{
  if (!*(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform))
  {
    v1 = [v0 navigationController];
    if (!v1)
    {
      return;
    }

    v4 = v1;

    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform) != 1)
  {
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 presentingViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
LABEL_8:
    }
  }
}

char *sub_20BAD8D24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v22[3] = a6;
  v22[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  *&a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_resignActiveObserver] = 0;
  v16 = &a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -4;
  a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset] = 0;
  a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_visibility] = 1;
  a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_allowsPlanActions] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_bag] = v21;
  *&a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_eventHub] = v21;
  sub_20B51CC64(v22, &a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v21, &a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_storefrontLocalizer]);
  *&a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] = a2;
  type metadata accessor for WorkoutPlanStringBuilder();

  sub_20C133AA4();
  *&a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_workoutPlanStringBuilder] = v21;
  v17 = &a5[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior];
  *v17 = 0;
  v17[8] = 3;
  v20.receiver = a5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  *(*&v18[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate + 8) = &off_2822C9E08;
  swift_unknownObjectWeakAssign();
  return v18;
}

uint64_t sub_20BAD9094(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanTemplateDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20BAD90D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20BDCDA74(a1, v4, v5, v7, v6);
}

uint64_t sub_20BAD9220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  (*(a2 + 32))(a1, a2, v9);
  (*(v5 + 16))(v7, v11, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  v14 = (v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = sub_20BAD940C;
  v14[1] = 0;
  sub_20B51C88C(0, &qword_27C7626E8);
  sub_20C137C94();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20BAD940C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v1 = sub_20C132C34();
  v2 = [v0 initWithData:v1 scale:1.0];

  if (!v2)
  {
    sub_20B659CD4();
    v2 = swift_allocError();
    *v3 = 5;
  }

  *(swift_allocObject() + 16) = v2;
  sub_20B51C88C(0, &qword_27C7626E8);

  return sub_20C137CA4();
}

id sub_20BAD952C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137C24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_27C762070);
  (*(a2 + 16))(a1, a2);
  sub_20C137BC4();
  (*(v5 + 8))(v7, v4);
  v8 = sub_20C13D5A4();
  if (!v8)
  {
    v8 = [objc_opt_self() darkGrayColor];
  }

  v9 = v8;
  sub_20B51C88C(0, &qword_27C7626E8);
  v10 = v9;
  sub_20B66740C(v10, 1.0, 1.0);
  v12 = v11;
  v13 = [v11 resizableImageWithCapInsets_];

  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v13;
}

uint64_t sub_20BAD9720(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E2CA0(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BAD97F8()
{
  v1 = v0;
  v2 = sub_20C138094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - v10);
  *v11 = 0xD000000000000010;
  v11[1] = 0x800000020C1A5120;
  swift_storeEnumTagMultiPayload();
  *v8 = 3;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_storefrontLocalizer + 24));
  *v5 = sub_20C138D34();
  v5[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder + 24);
  v22[1] = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v14 = *(v3 + 72);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C1517D0;
  v17 = v16 + v15;
  v18 = MEMORY[0x277D53BC8];
  sub_20B9B7B94(v11, v17, MEMORY[0x277D53BC8]);
  sub_20B9B7B94(v8, v17 + v14, v18);
  sub_20B9B7B94(v5, v17 + 2 * v14, v18);
  v19 = sub_20C138544();

  v20 = MEMORY[0x277D53BC8];
  sub_20BADB554(v5, MEMORY[0x277D53BC8]);
  sub_20BADB554(v8, v20);
  sub_20BADB554(v11, v20);
  return v19;
}

uint64_t sub_20BAD9AB8(uint64_t a1)
{
  v2 = v1;
  v34[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v37 = sub_20C134314();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136CD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134E44();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v34 - v15;
  sub_20C135944();
  sub_20C134E34();
  v17 = MEMORY[0x277D51268];
  sub_20BADB554(v13, MEMORY[0x277D51268]);
  sub_20C136CB4();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v19 = sub_20C137C24();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  v20 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_artwork;
  swift_beginAccess();
  sub_20B5DF2D4(v16, v2 + v20, &unk_27C766680);
  swift_endAccess();
  sub_20C135944();
  sub_20C134E34();
  sub_20BADB554(v13, v17);
  v21 = sub_20C136CC4();
  v23 = v22;
  v18(v10, v7);
  v24 = (v2 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_cropCode);
  *v24 = v21;
  v24[1] = v23;

  *(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_titleTags) = sub_20C135964();

  *(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_subtitleTags) = sub_20C135934();

  sub_20C135954();
  v25 = v36;
  sub_20C1342E4();
  v26 = *(v35 + 8);
  v27 = v37;
  v26(v6, v37);
  v28 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v25, v2 + v28, &unk_27C7623C0);
  swift_endAccess();
  sub_20C135954();
  v29 = sub_20C134294();
  v31 = v30;
  v26(v6, v27);
  v32 = (v2 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_programIdentifier);
  *v32 = v29;
  v32[1] = v31;

  return sub_20BAD9F24(1);
}

uint64_t sub_20BAD9F24(int a1)
{
  v70 = a1;
  v2 = sub_20C13BB84();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C554();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v67 - v10;
  v12 = sub_20C137C24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_artwork;
  swift_beginAccess();
  v17 = v1 + v16;
  v18 = v12;
  v19 = v13;
  sub_20B52F9E8(v17, v11, &unk_27C766680);
  if ((*(v13 + 48))(v11, 1, v18) != 1)
  {
    (*(v13 + 32))(v15, v11, v18);
    v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_cropCode + 8);
    if (!v20)
    {
      (*(v13 + 8))(v15, v18);
      goto LABEL_11;
    }

    v21 = v1;
    v75 = v15;
    v76 = v18;
    v67 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_cropCode);
    v68 = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A8);
    v69 = swift_allocBox();
    v24 = v23;
    v25 = (v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder + 24));

    v26 = sub_20C138544();

    *v24 = v26;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);

    v27 = sub_20C138544();

    v24[1] = v27;
    v28 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_preview;
    swift_beginAccess();
    v29 = v74;
    sub_20B52F9E8(v21 + v28, v74, &unk_27C7623C0);
    v30 = sub_20C134284();
    LODWORD(v28) = (*(*(v30 - 8) + 48))(v29, 1, v30);
    sub_20B520158(v29, &unk_27C7623C0);
    v31 = 0;
    if (v28 != 1)
    {
      v31 = sub_20BAD97F8();
    }

    v32 = *(v22 + 80);
    v33 = (v24 + *(v22 + 96));
    v24[2] = v31;
    v34 = v68;
    v35 = v24 + v32;
    v37 = v75;
    v36 = v76;
    (*(v68 + 16))(v35, v75, v76);
    *v33 = v67;
    v33[1] = v20;
    v38 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_20C14F980;
    *(v39 + 32) = v38 | 0x6000000000000000;
    v80 = 0uLL;
    LOBYTE(v81[0]) = 1;
    *(v81 + 1) = *v79;
    DWORD1(v81[0]) = *&v79[3];
    *(v81 + 8) = xmmword_20C157520;
    strcpy(&v81[1] + 8, "@");
    *(&v81[1] + 10) = *&v77[7];
    HIWORD(v81[1]) = v78;
    LOBYTE(v85) = 0;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    *(&v85 + 1) = *v77;
    DWORD1(v85) = *&v77[3];
    *(&v85 + 1) = v39;
    *&v86[0] = MEMORY[0x277D84F90];
    *(v86 + 8) = 0u;
    *(&v86[1] + 8) = 0u;
    *(&v86[2] + 1) = 0;
    v87 = 2;
    nullsub_1(&v80);
    v40 = v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row;
    v41 = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 144);
    v88[8] = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 128);
    v88[9] = v41;
    v89 = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 160);
    v42 = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 80);
    v88[4] = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 64);
    v88[5] = v42;
    v43 = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 112);
    v88[6] = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 96);
    v88[7] = v43;
    v44 = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 16);
    v88[0] = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row);
    v88[1] = v44;
    v45 = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 48);
    v88[2] = *(v21 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 32);
    v88[3] = v45;
    v46 = v86[0];
    v47 = v86[2];
    *(v40 + 128) = v86[1];
    *(v40 + 144) = v47;
    *(v40 + 160) = v87;
    v48 = v84;
    *(v40 + 64) = v83;
    *(v40 + 80) = v48;
    *(v40 + 96) = v85;
    *(v40 + 112) = v46;
    v49 = v81[0];
    *v40 = v80;
    *(v40 + 16) = v49;
    v50 = v82;
    *(v40 + 32) = v81[1];
    *(v40 + 48) = v50;

    sub_20B520158(v88, &qword_27C762340);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
      {
        v56 = Strong;
        v57 = sub_20B61D0C8(v21, Strong);
        if (v58)
        {
          v60 = v58;
          v61 = v59;
          v74 = v57;
          sub_20B5E2E18();
          v62 = sub_20C13D374();
          v63 = v71;
          v64 = v72;
          *v71 = v62;
          v65 = v73;
          (*(v64 + 104))(v63, *MEMORY[0x277D85200], v73);
          v66 = sub_20C13C584();
          result = (*(v64 + 8))(v63, v65);
          if ((v66 & 1) == 0)
          {
            __break(1u);
            return result;
          }

          sub_20B6207A4(v74, v60, v61, v21, v70 & 1, v56);

          swift_unknownObjectRelease();
        }

        else
        {
          sub_20C0C2D50(0);

          swift_unknownObjectRelease();
        }

        v37 = v75;
        v36 = v76;
        return (*(v34 + 8))(v37, v36);
      }

      swift_unknownObjectRelease();
    }

    return (*(v34 + 8))(v37, v36);
  }

  sub_20B520158(v11, &unk_27C766680);
LABEL_11:
  sub_20C13B534();
  v52 = sub_20C13BB74();
  v53 = sub_20C13D1F4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_20B517000, v52, v53, "CatalogProgramDetailHeaderShelf not building shelf item, missing artwork or cropCode", v54, 2u);
    MEMORY[0x20F2F6A40](v54, -1, -1);
  }

  return (*(v75 + 1))(v4, v76);
}

uint64_t sub_20BADA734()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_artwork, &unk_27C766680);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_preview, &unk_27C7623C0);

  return v0;
}

uint64_t sub_20BADA8B4()
{
  sub_20BADA734();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogProgramDetailHeaderShelf()
{
  result = qword_27C76A120;
  if (!qword_27C76A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BADA960()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BADAAD8(319, &qword_281103B70, MEMORY[0x277D53A78]);
    if (v1 <= 0x3F)
    {
      sub_20BADAAD8(319, &qword_27C76A130, MEMORY[0x277D50760]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BADAAD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BADAB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BADABA4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BADAC70()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_row;
  sub_20B5D8060(v17);
  v2 = v17[9];
  *(v1 + 128) = v17[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v18;
  v3 = v17[5];
  *(v1 + 64) = v17[4];
  *(v1 + 80) = v3;
  v4 = v17[7];
  *(v1 + 96) = v17[6];
  *(v1 + 112) = v4;
  v5 = v17[1];
  *v1 = v17[0];
  *(v1 + 16) = v5;
  v6 = v17[3];
  *(v1 + 32) = v17[2];
  *(v1 + 48) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_artwork;
  v8 = sub_20C137C24();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_cropCode);
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_titleTags) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_subtitleTags) = v10;
  v11 = (v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_previewButtonTitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_preview;
  v13 = sub_20C134284();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = (v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_programIdentifier);
  *v14 = 0;
  v14[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v16, v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v16, v0 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_mediaTagStringBuilder);
  return v0;
}

uint64_t sub_20BADAE7C(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_20C134284();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9B7B94(a1, v17, type metadata accessor for ShelfItemAction);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  result = sub_20BADB554(v17, type metadata accessor for ShelfItemAction);
  if (a1 != 18)
  {
    return result;
  }

  v19 = OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_preview;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v11, &unk_27C7623C0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C7623C0);
LABEL_11:
    sub_20C13B534();
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1D4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20B517000, v49, v50, "No preview available for program", v51, 2u);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    return (*(v52 + 8))(v5, v53);
  }

  v20 = v54;
  (*(v13 + 32))(v54, v11, v12);
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_programIdentifier + 8);
  if (!v21)
  {
    (*(v13 + 8))(v20, v12);
    goto LABEL_11;
  }

  v53 = v12;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogProgramDetailHeaderShelf_programIdentifier);
  v23 = sub_20C136664();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = v6[5];
  v25 = *MEMORY[0x277D513F8];
  v26 = sub_20C134F24();
  (*(*(v26 - 8) + 104))(&v8[v24], v25, v26);
  v27 = v6[6];
  v28 = sub_20C132C14();
  (*(*(v28 - 8) + 56))(&v8[v27], 1, 1, v28);
  v29 = v6[8];
  v30 = *MEMORY[0x277D52388];
  v31 = sub_20C135ED4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(&v8[v29], v30, v31);
  (*(v32 + 56))(&v8[v29], 0, 1, v31);
  v33 = v6[10];
  v34 = *MEMORY[0x277D51768];
  v35 = sub_20C1352E4();
  (*(*(v35 - 8) + 104))(&v8[v33], v34, v35);
  v36 = v6[11];
  v37 = sub_20C136E94();
  (*(*(v37 - 8) + 56))(&v8[v36], 1, 1, v37);
  swift_bridgeObjectRetain_n();
  v38 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v39 = &v8[v6[7]];
  *v39 = v22;
  *(v39 + 1) = v21;
  v40 = &v8[v6[9]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *&v8[v6[12]] = v38;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA03A8(v1, v8, Strong);
    swift_unknownObjectRelease();
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  v43 = v53;
  v44 = v54;
  if (v42)
  {
    v45 = v42;
    v46 = v42 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = *(v46 + 8);
      ObjectType = swift_getObjectType();
      (*(v47 + 80))(v45, v44, v22, v21, ObjectType, v47);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_20BADB554(v8, type metadata accessor for ShelfMetricAction);
  return (*(v13 + 8))(v44, v43);
}

uint64_t sub_20BADB554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20BADB6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BADB764(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC9SeymourUI18BlurViewController_blurView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v5] = v7;
  *&v2[OBJC_IVAR____TtC9SeymourUI18BlurViewController_snapshot] = a2;
  *&v2[OBJC_IVAR____TtC9SeymourUI18BlurViewController_viewController] = a1;
  v114.receiver = v2;
  v114.super_class = type metadata accessor for BlurViewController();
  v112 = a1;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v114, sel_initWithNibName_bundle_, 0, 0);
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 clearColor];
  [v11 setBackgroundColor_];

  if (a2)
  {
    v14 = v8;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v9 view];
    if (!v15)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v16 = v15;
    [v15 addSubview_];
  }

  v17 = v9;
  v18 = &selRef_setDescriptionTextHighlightColor_;
  v19 = [v17 view];
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  v111 = OBJC_IVAR____TtC9SeymourUI18BlurViewController_blurView;
  [v19 addSubview_];

  v21 = [v112 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v12 clearColor];
  [v22 setBackgroundColor_];

  v24 = [v17 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v112 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  [v25 addSubview_];

  [v17 addChildViewController_];
  [v112 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  v29 = MEMORY[0x277D768C8];
  *(inited + 16) = xmmword_20C1517D0;
  v113 = inited;
  if (!a2)
  {
    v54 = MEMORY[0x277D84F90];
LABEL_13:
    *(inited + 32) = v54;
    v56 = *&v17[v111];
    v57 = [v17 v18[358]];
    if (v57)
    {
      v58 = v57;
      v59 = *v29;
      v60 = v29[1];
      v62 = v29[2];
      v61 = v29[3];
      v63 = [v56 leadingAnchor];
      v64 = [v58 leadingAnchor];
      v65 = [v63 constraintEqualToAnchor:v64 constant:v60];

      LODWORD(v66) = 1148846080;
      [v65 setPriority_];
      v67 = v65;
      v68 = [v56 trailingAnchor];
      v69 = [v58 trailingAnchor];
      v70 = -v61;
      v71 = [v68 constraintEqualToAnchor:v69 constant:v70];

      LODWORD(v72) = 1148846080;
      [v71 setPriority_];
      v73 = v71;
      v74 = [v56 topAnchor];
      v75 = [v58 topAnchor];
      v76 = [v74 constraintEqualToAnchor:v75 constant:v59];

      LODWORD(v77) = 1148846080;
      [v76 setPriority_];
      v78 = [v56 bottomAnchor];
      v79 = [v58 bottomAnchor];
      v80 = -v62;
      v81 = [v78 constraintEqualToAnchor:v79 constant:v80];

      LODWORD(v82) = 1148846080;
      [v81 setPriority_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_20C14FE90;
      *(v83 + 32) = v67;
      *(v83 + 40) = v73;
      *(v83 + 48) = v76;
      *(v83 + 56) = v81;
      v84 = v76;

      *(v113 + 40) = v83;
      v85 = [v112 view];
      if (v85)
      {
        v86 = v85;
        v87 = [v17 view];

        if (v87)
        {
          v88 = [v86 leadingAnchor];
          v89 = [v87 leadingAnchor];
          v90 = [v88 constraintEqualToAnchor:v89 constant:v60];

          LODWORD(v91) = 1148846080;
          [v90 setPriority_];
          v92 = v90;
          v93 = [v86 trailingAnchor];
          v94 = [v87 trailingAnchor];
          v95 = [v93 constraintEqualToAnchor:v94 constant:v70];

          LODWORD(v96) = 1148846080;
          [v95 setPriority_];
          v97 = v95;
          v98 = [v86 topAnchor];
          v99 = [v87 topAnchor];
          v100 = [v98 constraintEqualToAnchor:v99 constant:v59];

          LODWORD(v101) = 1148846080;
          [v100 setPriority_];
          v102 = [v86 bottomAnchor];
          v103 = [v87 bottomAnchor];
          v104 = [v102 constraintEqualToAnchor:v103 constant:v80];

          LODWORD(v105) = 1148846080;
          [v104 setPriority_];
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_20C14FE90;
          *(v106 + 32) = v92;
          *(v106 + 40) = v97;
          *(v106 + 48) = v100;
          *(v106 + 56) = v104;
          v107 = v100;

          *(v113 + 48) = v106;
          v108 = objc_opt_self();
          sub_20BE54D20(v113);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
          swift_arrayDestroy();
          sub_20B5E29D0();
          v109 = sub_20C13CC54();

          [v108 activateConstraints_];

          return;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v8;
  v31 = [v17 view];
  if (v31)
  {
    v32 = v31;
    v34 = *v29;
    v33 = v29[1];
    v35 = v29[2];
    v36 = v29[3];
    v37 = [v30 leadingAnchor];
    v38 = [v32 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:v33];

    LODWORD(v40) = 1148846080;
    [v39 setPriority_];
    v110 = v39;
    v41 = [v30 trailingAnchor];
    v42 = [v32 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-v36];

    LODWORD(v44) = 1148846080;
    [v43 &selRef_meterUnit];
    v45 = v43;
    v46 = [v30 topAnchor];
    v47 = [v32 topAnchor];
    v48 = [v46 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v49) = 1148846080;
    [v48 &selRef_meterUnit];
    v50 = [v30 bottomAnchor];
    v51 = [v32 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:-v35];

    LODWORD(v53) = 1148846080;
    [v52 &selRef_meterUnit];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_20C14FE90;
    *(v54 + 32) = v110;
    *(v54 + 40) = v45;
    *(v54 + 48) = v48;
    *(v54 + 56) = v52;
    v55 = v48;

    inited = v113;
    v18 = &selRef_setDescriptionTextHighlightColor_;
    goto LABEL_13;
  }

LABEL_26:
  __break(1u);
}

void sub_20BADC26C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18BlurViewController_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18BlurViewController_snapshot) = 0;
  sub_20C13DE24();
  __break(1u);
}

id sub_20BADC348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C152DF0;
  v1 = *MEMORY[0x277D54718];
  v2 = *MEMORY[0x277D54708];
  *(v0 + 32) = *MEMORY[0x277D54718];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D54740];
  v9 = *MEMORY[0x277D54730];
  v4 = *MEMORY[0x277D54730];
  *(v0 + 48) = *MEMORY[0x277D54740];
  *(v0 + 56) = v4;
  qword_27C79B2E0 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;

  return v9;
}

id CAShapeLayer.withLineWidth(_:)()
{
  [v0 setLineWidth_];

  return v2;
}

id sub_20BADC458(void *a1, SEL *a2)
{
  v3 = [a1 CGColor];
  [v5 *a2];

  return v5;
}

id CAShapeLayer.withLineCap(_:)(uint64_t a1)
{
  [v1 setLineCap_];

  return v3;
}

id CAShapeLayer.withLineJoin(_:)(uint64_t a1)
{
  [v1 setLineJoin_];

  return v3;
}

id CAShapeLayer.withLineDashPattern(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20C13DD64();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      --v1;
    }

    while (v1);
  }

  sub_20B8602D4();
  v5 = sub_20C13CC54();

  [v7 setLineDashPattern_];

  return v7;
}

uint64_t sub_20BADC674()
{
  result = sub_20C1323A4();
  dword_27C79B2E8 = result;
  byte_27C79B2EC = BYTE4(result);
  dword_27C79B2F0 = v1;
  byte_27C79B2F4 = v2;
  return result;
}

uint64_t sub_20BADC6FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20C132224();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_20C132424();
  sub_20C132424();
  return sub_20C132214();
}

uint64_t sub_20BADC790()
{
  v1 = v0;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767610);
  v80 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v79 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v96 = v69 - v4;
  v5 = sub_20C132EE4();
  MEMORY[0x28223BE20](v5 - 8);
  v86 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20C1321F4();
  v94 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v95 = v69 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v81 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = v69 - v16;
  MEMORY[0x28223BE20](v17);
  v84 = v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v69 - v21;
  sub_20C1324F4();
  v24 = v105;
  v23 = DWORD1(v105);
  v25 = DWORD2(v105);
  v26 = HIDWORD(v105);
  *&v78 = v106;
  v76 = HIDWORD(v106);
  (*(v20 + 16))(v22, v1 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder__reducedOverlayAnimations, v19);
  sub_20C13A344();
  (*(v20 + 8))(v22, v19);
  if (v99 == 1)
  {
    v27 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
    swift_beginAccess();
    v28 = v81;
    (*(v13 + 16))(v81, v1 + v27, v12);
    v95 = v25;
    v96 = v24;
    v29 = v82;
    sub_20C131F34();
    v30 = v1;
    v31 = *(v13 + 8);
    v31(v28, v12);
    v95 |= v26 << 32;
    v96 |= v23 << 32;
    v32 = v84;
    sub_20C131F64();
    v31(v29, v12);
    swift_beginAccess();
    (*(v13 + 40))(v30 + v27, v32, v12);
    swift_endAccess();
    v33 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode;
    swift_beginAccess();
    v34 = v92;
    v35 = v90;
    v36 = v93;
    (*(v92 + 16))(v90, v30 + v33, v93);
    v37 = v91;
    sub_20C131F64();
    (*(v34 + 8))(v35, v36);
    swift_beginAccess();
    (*(v34 + 40))(v30 + v33, v37, v36);
  }

  else
  {
    LODWORD(v103) = 0;
    LODWORD(v99) = 0;
    BYTE4(v99) = 1;
    sub_20C1322D4();
    sub_20C1322E4();
    sub_20C1322C4();
    v38 = v83;
    sub_20C1322A4();
    v39 = v94 + 104;
    v40 = *(v94 + 104);
    v40(v38, *MEMORY[0x277CE9C78], v85);
    v76 = v40;
    v94 = v39;
    sub_20C132ED4();
    sub_20C132474();
    v103 = v105;
    v104 = v106;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 1;
    sub_20C132ED4();
    v75 = *MEMORY[0x277CE9C70];
    (v40)(v38);
    v74 = sub_20B593314();
    sub_20C132474();
    v41 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
    v70 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
    swift_beginAccess();
    v42 = v13;
    v43 = v81;
    (*(v13 + 16))(v81, v1 + v41, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
    v44 = *(v88 + 80);
    v45 = v88;
    v77 = v1;
    v46 = (v44 + 32) & ~v44;
    v47 = swift_allocObject();
    v78 = xmmword_20C14F980;
    *(v47 + 16) = xmmword_20C14F980;
    (*(v45 + 16))(v47 + v46, v95, v89);
    v48 = v82;
    sub_20C131F34();

    v49 = *(v42 + 8);
    v49(v43, v12);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB0);
    v50 = v80;
    v81 = *(v80 + 72);
    v72 = *(v80 + 80);
    v51 = (v72 + 32) & ~v72;
    v52 = swift_allocObject();
    *(v52 + 16) = v78;
    v53 = *(v50 + 16);
    v69[1] = v50 + 16;
    v71 = v53;
    v53(v52 + v51, v96, v87);
    v54 = v84;
    sub_20C131F64();

    v49(v48, v12);
    v55 = v77;
    v56 = v70;
    swift_beginAccess();
    (*(v42 + 40))(v55 + v56, v54, v12);
    swift_endAccess();
    v97 = v105;
    v98 = v106;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 1;
    sub_20C132ED4();
    v76(v83, v75, v85);
    v57 = v79;
    sub_20C132474();
    v58 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode;
    swift_beginAccess();
    v59 = v92;
    v60 = v90;
    v61 = v93;
    (*(v92 + 16))(v90, v55 + v58, v93);
    v62 = swift_allocObject();
    *(v62 + 16) = v78;
    v63 = v62 + v51;
    v64 = v87;
    v71(v63, v57, v87);
    v65 = v91;
    sub_20C131F64();

    (*(v59 + 8))(v60, v61);
    v66 = *(v50 + 8);
    v66(v57, v64);
    v66(v96, v64);
    (*(v88 + 8))(v95, v89);
    v67 = v77;
    swift_beginAccess();
    (*(v59 + 40))(v67 + v58, v65, v61);
  }

  return swift_endAccess();
}

uint64_t sub_20BADD414(int a1, double a2)
{
  v3 = v2;
  LODWORD(v214) = a1;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767610);
  v201 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v199 = &v162 - v5;
  v193 = sub_20C132224();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v191 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v204 = &v162 - v7;
  v212 = sub_20C1321F4();
  v211 = *(v212 - 1);
  MEMORY[0x28223BE20](v212);
  v208 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v194 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v209 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v12 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v210 = &v162 - v14;
  MEMORY[0x28223BE20](v15);
  v169 = &v162 - v16;
  MEMORY[0x28223BE20](v17);
  v188 = &v162 - v18;
  MEMORY[0x28223BE20](v19);
  v189 = &v162 - v20;
  MEMORY[0x28223BE20](v21);
  v190 = &v162 - v22;
  MEMORY[0x28223BE20](v23);
  v175 = &v162 - v24;
  MEMORY[0x28223BE20](v25);
  v198 = &v162 - v26;
  MEMORY[0x28223BE20](v27);
  v216 = &v162 - v28;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v29 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v31 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v162 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v162 - v36;
  MEMORY[0x28223BE20](v38);
  v185 = &v162 - v39;
  MEMORY[0x28223BE20](v40);
  v186 = &v162 - v41;
  MEMORY[0x28223BE20](v42);
  v187 = &v162 - v43;
  MEMORY[0x28223BE20](v44);
  v174 = &v162 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v162 - v47;
  MEMORY[0x28223BE20](v49);
  v213 = &v162 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v52 = *(v51 - 8);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v162 - v54;
  (*(v52 + 16))(&v162 - v54, v3 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder__reducedOverlayAnimations, v51, v53);
  sub_20C13A344();
  (*(v52 + 8))(v55, v51);
  v203 = v3;
  v56 = v3 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode;
  if ((v218 & 1) != 0 || a2 < 1.0 || (v214 & 1) == 0)
  {
    swift_beginAccess();
    v85 = v217;
    (*(v29 + 16))(v31, v56, v217);
    sub_20C131F34();
    v86 = *(v29 + 8);
    v86(v31, v85);
    if (qword_27C760908 != -1)
    {
      swift_once();
    }

    v87 = v48;
    v88 = v217;
    sub_20C131FF4();
    v86(v34, v88);
    swift_beginAccess();
    (*(v29 + 40))(v56, v87, v88);
    swift_endAccess();
    v89 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
    v90 = v203;
    swift_beginAccess();
    v91 = v209;
    v92 = v215;
    (*(v209 + 16))(v12, v90 + v89, v215);
    v93 = v210;
    sub_20C131F34();
    v94 = *(v91 + 8);
    v94(v12, v92);
    sub_20C132504();
    v95 = v198;
    sub_20C131F64();
    v94(v93, v92);
    swift_beginAccess();
    (*(v91 + 40))(v90 + v89, v95, v92);
    return swift_endAccess();
  }

  v163 = v37;
  swift_beginAccess();
  v57 = *(v29 + 16);
  v58 = v213;
  v162 = v56;
  v59 = v217;
  v179 = v29 + 16;
  v178 = v57;
  (v57)(v213, v56);
  v60 = v203 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
  swift_beginAccess();
  v61 = *(v209 + 16);
  v62 = v29;
  v164 = v60;
  v177 = v209 + 16;
  v176 = v61;
  v61(v216, v60, v215);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB0);
  v63 = *(v201 + 72);
  v181 = *(v201 + 80);
  v180 = ((v181 + 32) & ~v181) + v63;
  v183 = (v181 + 32) & ~v181;
  v64 = swift_allocObject();
  v214 = xmmword_20C14F980;
  *(v64 + 16) = xmmword_20C14F980;
  sub_20C132504();
  v218 = 0;
  v219 = 0;
  v220 = 0;
  v221 = 1;
  sub_20C132ED4();
  v195 = *MEMORY[0x277CE9C70];
  v202 = *(v211 + 104);
  v211 += 104;
  v65 = v208;
  v66 = v212;
  v202(v208);
  v167 = sub_20B593314();
  sub_20C132474();
  sub_20C131F64();

  v207 = *(v62 + 8);
  v207(v58, v59);
  v165 = v62;
  v173 = *(v62 + 32);
  v173(v58, v48, v59);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
  v197 = *(v205 + 72);
  v196 = *(v205 + 80);
  v170 = (v196 + 32) & ~v196;
  *(swift_allocObject() + 16) = v214;
  v222 = 1051931443;
  LODWORD(v218) = 0;
  BYTE4(v218) = 1;
  sub_20C132ED4();
  v67 = v195;
  v68 = v66;
  v69 = v202;
  (v202)(v65, v195, v68);
  sub_20C132474();
  v70 = v217;
  sub_20C131F34();

  v184 = v62 + 8;
  v207(v58, v70);
  v166 = v62 + 32;
  v173(v58, v48, v70);
  *(swift_allocObject() + 16) = v214;
  sub_20C132504();
  v218 = 0;
  v219 = 0;
  v220 = 0;
  v221 = 1;
  sub_20C132ED4();
  (v69)(v65, v67, v212);
  sub_20C132474();
  v71 = v198;
  v73 = v215;
  v72 = v216;
  sub_20C131F64();

  v74 = v209;
  v75 = v209 + 8;
  v210 = *(v209 + 8);
  (v210)(v72, v73);
  v172 = *(v74 + 32);
  v172(v72, v71, v73);
  *(swift_allocObject() + 16) = v214;
  v222 = 1051931443;
  LODWORD(v218) = 0;
  BYTE4(v218) = 1;
  sub_20C132ED4();
  (v202)(v208, v195, v212);
  sub_20C132474();
  sub_20C131F34();

  v168 = v75;
  (v210)(v72, v73);
  v198 = (v74 + 32);
  v172(v72, v71, v73);
  v222 = 1061997773;
  LODWORD(v218) = 0;
  BYTE4(v218) = 1;
  sub_20C132ED4();
  (v202)(v208, v195, v212);
  v76 = v204;
  sub_20C132474();
  v77 = v170;
  v78 = swift_allocObject();
  *(v78 + 16) = v214;
  v79 = *(v205 + 16);
  v80 = v77;
  v79(v78 + v77, v76, v206);
  v81 = sub_20C131FD4();
  v82 = v81;
  v84 = v83;
  if (v83 == 1)
  {
    v218 = v81;
    sub_20B8D939C(v78);
    v82 = v218;
  }

  else
  {
  }

  v96 = v174;
  v97 = v217;
  v98 = v213;
  sub_20C131F34();
  sub_20B584060(v82, v84);
  v207(v98, v97);
  v173(v98, v96, v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v214;
  v79(v99 + v80, v204, v206);
  v100 = v215;
  v101 = sub_20C131FD4();
  v102 = v101;
  v104 = v103;
  if (v103 == 1)
  {
    v218 = v101;
    sub_20B8D939C(v99);
    v102 = v218;
  }

  else
  {
  }

  v105 = v175;
  v106 = v216;
  sub_20C131F34();
  sub_20B584060(v102, v104);
  (v210)(v106, v100);
  result = (v172)(v106, v105, v100);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v108 = a2 - 1;
  if (!__OFSUB__(a2, 1))
  {
    v109 = v187;
    v110 = v213;
    v111 = sub_20BADEEE0(v187, v213, a2 - 1, &qword_27C761F98, &unk_20C158370);
    v112 = v190;
    v113 = v216;
    v114 = sub_20BADEEE0(v190, v216, v108, &qword_27C761F90, &unk_20C14F3C0);
    v115 = v217;
    (v210)(v113, v100, v114);
    v207(v110, v115);
    v178(v110, v109, v115);
    v176(v113, v112, v100);
    v116 = v111 + 0.916666667;
    v117 = v186;
    v118 = sub_20BADF43C(v186, v110, &qword_27C761F98, v116, 60.0);
    v119 = v189;
    v120 = sub_20BADF43C(v189, v113, &qword_27C761F90, v116, 60.0);
    (v210)(v113, v100, v120);
    v121 = v207;
    v207(v110, v115);
    v178(v110, v117, v115);
    v176(v113, v119, v100);
    v122 = v116 + v118;
    v123 = v185;
    sub_20BADFAA8(v185, v110, &qword_27C761F98, v122, 60.0);
    v124 = v188;
    v125 = sub_20BADFAA8(v188, v113, &qword_27C761F90, v122, 60.0);
    (v210)(v113, v100, v125);
    v121(v110, v115);
    v178(v110, v123, v115);
    v176(v113, v124, v100);
    sub_20C132424();
    sub_20C132424();
    v126 = v191;
    sub_20C132214();
    sub_20C1324F4();
    v218 = 0;
    v219 = 0;
    v220 = 0;
    v221 = 1;
    v127 = v208;
    (*(v192 + 16))(v208, v126, v193);
    (v202)(v127, *MEMORY[0x277CE9C60], v212);
    sub_20C132ED4();
    v128 = v199;
    sub_20C132474();
    v129 = swift_allocObject();
    *(v129 + 16) = v214;
    v212 = *(v201 + 16);
    (v212)(v129 + v183, v128, v200);
    v130 = sub_20C132004();
    v133 = v130;
    v135 = v134;
    if (v134 == 1)
    {
      v218 = v130;

      sub_20B8D93C4(v136);
      v137 = 0;
      v138 = 0;
      v133 = v218;
    }

    else
    {
      v137 = v131;
      v138 = v132;
    }

    swift_setDeallocating();
    v139 = v183;
    v140 = v200;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v141 = v163;
    v142 = v217;
    sub_20C131F64();
    sub_20B81DC6C(v133, v137, v138, v135);
    v143 = v162;
    swift_beginAccess();
    (*(v165 + 40))(v143, v141, v142);
    swift_endAccess();
    v144 = swift_allocObject();
    *(v144 + 16) = v214;
    (v212)(v144 + v139, v199, v140);
    v145 = sub_20C132004();
    v148 = v145;
    v150 = v149;
    if (v149 == 1)
    {
      v218 = v145;

      sub_20B8D93C4(v151);
      v152 = 0;
      v153 = 0;
      v148 = v218;
    }

    else
    {
      v152 = v146;
      v153 = v147;
    }

    swift_setDeallocating();
    v154 = v200;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v155 = v169;
    v157 = v215;
    v156 = v216;
    sub_20C131F64();
    sub_20B81DC6C(v148, v152, v153, v150);
    (*(v201 + 8))(v199, v154);
    (*(v192 + 8))(v191, v193);
    v158 = v210;
    (v210)(v188, v157);
    v159 = v217;
    v160 = v207;
    v207(v185, v217);
    v158(v189, v157);
    v160(v186, v159);
    v158(v190, v157);
    v160(v187, v159);
    (*(v205 + 8))(v204, v206);
    v158(v156, v157);
    v160(v213, v159);
    v161 = v164;
    swift_beginAccess();
    (*(v209 + 40))(v161, v155, v157);
    return swift_endAccess();
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_20BADEEE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_20C132EE4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20C1321F4();
  v13 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v47 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v40 - v18;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  v43 = a2;
  v40 = a1;
  v42 = a5;
  v41 = a4;
  if (!a3)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  if (qword_27C760910 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v19 = 0;
  v51 = sub_20C132224();
  v44 = v51 - 8;
  v50 = *MEMORY[0x277CE9C60];
  v48 = v47 + 32;
  v49 = (v13 + 104);
  v20 = MEMORY[0x277D84F90];
  v52 = v12;
  v45 = v16;
  v46 = a3;
  do
  {
    v58 = 1051931443;
    LODWORD(v57) = 0;
    BYTE4(v57) = 1;
    v21 = v51;
    v22 = __swift_project_value_buffer(v51, qword_27C79B2F8);
    v23 = *(*(v21 - 8) + 16);
    v24 = v55;
    v23(v55, v22, v21);
    v25 = *v49;
    (*v49)(v24, v50, v56);
    sub_20C132ED4();
    sub_20C132474();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_20BC065C0(0, *(v20 + 2) + 1, 1, v20);
    }

    v27 = *(v20 + 2);
    v26 = *(v20 + 3);
    if (v27 >= v26 >> 1)
    {
      v20 = sub_20BC065C0(v26 > 1, v27 + 1, 1, v20);
    }

    *(v20 + 2) = v27 + 1;
    v28 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v29 = *(v47 + 72);
    v30 = *(v47 + 32);
    v30(&v20[v28 + v29 * v27], v53, v54);
    v58 = 1061997773;
    LODWORD(v57) = 0;
    BYTE4(v57) = 1;
    v31 = v55;
    v23(v55, v22, v51);
    v25(v31, v50, v56);
    sub_20C132ED4();
    v32 = v45;
    sub_20C132474();
    v34 = *(v20 + 2);
    v33 = *(v20 + 3);
    if (v34 >= v33 >> 1)
    {
      v20 = sub_20BC065C0(v33 > 1, v34 + 1, 1, v20);
    }

    a3 = v46;
    ++v19;
    *(v20 + 2) = v34 + 1;
    v30(&v20[v28 + v34 * v29], v32, v54);
  }

  while (a3 != v19);
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(v41);
  v35 = sub_20C131FD4();
  v36 = v35;
  v38 = v37;
  if (v37 == 1)
  {
    v57 = v35;
    sub_20B8D939C(v20);
    v36 = v57;
  }

  else
  {
  }

  sub_20C131F34();
  sub_20B584060(v36, v38);
  return a3;
}

double sub_20BADF43C(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  v51 = a2;
  v52 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v58 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767610);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - v8;
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20C1321F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = &v48 - v15;
  v64 = 1051931443;
  LODWORD(v60) = 0;
  BYTE4(v60) = 1;
  v16 = 4.0 / a5;
  if (qword_27C760918 != -1)
  {
    swift_once();
  }

  v17 = sub_20C132224();
  v18 = __swift_project_value_buffer(v17, qword_27C79B310);
  v19 = *(*(v17 - 8) + 16);
  v19(v13, v18, v17);
  v20 = *MEMORY[0x277CE9C60];
  v21 = *(v11 + 104);
  v21(v13, v20, v10);
  sub_20C132ED4();
  sub_20C132474();
  sub_20C1324F4();
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 1;
  v19(v13, v18, v17);
  v21(v13, v20, v10);
  sub_20C132ED4();
  sub_20B593314();
  v22 = v49;
  sub_20C132474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
  v23 = v54;
  v24 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v25 = swift_allocObject();
  v48 = xmmword_20C14F980;
  *(v25 + 16) = xmmword_20C14F980;
  (*(v23 + 16))(v25 + v24, v59, v55);
  v26 = v50;
  v27 = sub_20C131FD4();
  v28 = v27;
  v30 = v29;
  if (v29 == 1)
  {
    v60 = v27;
    sub_20B8D939C(v25);
    v28 = v60;
  }

  else
  {
  }

  v31 = v53;
  sub_20C131F34();
  sub_20B584060(v28, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB0);
  v32 = v56;
  v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v48;
  v35 = v22;
  (*(v32 + 16))(v34 + v33, v22, v57);
  v36 = sub_20C132004();
  v39 = v36;
  v41 = v40;
  if (v40 == 1)
  {
    v60 = v36;

    sub_20B8D93C4(v42);
    v43 = 0;
    v44 = 0;
    v39 = v60;
  }

  else
  {
    v43 = v37;
    v44 = v38;
  }

  swift_setDeallocating();
  v45 = v57;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v58;
  sub_20C131F64();
  sub_20B81DC6C(v39, v43, v44, v41);
  (*(v31 + 8))(v46, v26);
  (*(v56 + 8))(v35, v45);
  (*(v54 + 8))(v59, v55);
  return v16;
}

double sub_20BADFAA8(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  v51 = a2;
  v52 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v58 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767610);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - v8;
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20C1321F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = &v48 - v15;
  v64 = 1065353216;
  LODWORD(v60) = 0;
  BYTE4(v60) = 1;
  v16 = 6.0 / a5;
  if (qword_27C760918 != -1)
  {
    swift_once();
  }

  v17 = sub_20C132224();
  v18 = __swift_project_value_buffer(v17, qword_27C79B310);
  v19 = *(*(v17 - 8) + 16);
  v19(v13, v18, v17);
  v20 = *MEMORY[0x277CE9C60];
  v21 = *(v11 + 104);
  v21(v13, v20, v10);
  sub_20C132ED4();
  sub_20C132474();
  sub_20C1324F4();
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 1;
  v19(v13, v18, v17);
  v21(v13, v20, v10);
  sub_20C132ED4();
  sub_20B593314();
  v22 = v49;
  sub_20C132474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
  v23 = v54;
  v24 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v25 = swift_allocObject();
  v48 = xmmword_20C14F980;
  *(v25 + 16) = xmmword_20C14F980;
  (*(v23 + 16))(v25 + v24, v59, v55);
  v26 = v50;
  v27 = sub_20C131FD4();
  v28 = v27;
  v30 = v29;
  if (v29 == 1)
  {
    v60 = v27;
    sub_20B8D939C(v25);
    v28 = v60;
  }

  else
  {
  }

  v31 = v53;
  sub_20C131F34();
  sub_20B584060(v28, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB0);
  v32 = v56;
  v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v48;
  v35 = v22;
  (*(v32 + 16))(v34 + v33, v22, v57);
  v36 = sub_20C132004();
  v39 = v36;
  v41 = v40;
  if (v40 == 1)
  {
    v60 = v36;

    sub_20B8D93C4(v42);
    v43 = 0;
    v44 = 0;
    v39 = v60;
  }

  else
  {
    v43 = v37;
    v44 = v38;
  }

  swift_setDeallocating();
  v45 = v57;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v58;
  sub_20C131F64();
  sub_20B81DC6C(v39, v43, v44, v41);
  (*(v31 + 8))(v46, v26);
  (*(v56 + 8))(v35, v45);
  (*(v54 + 8))(v59, v55);
  return v16;
}

uint64_t sub_20BAE0110()
{
  v1 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerIconAsset;
  v2 = sub_20C132164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_containerBuilder);
  v3 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder__reducedOverlayAnimations;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimerNodeBuilder()
{
  result = qword_27C76A160;
  if (!qword_27C76A160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAE0314()
{
  sub_20C132164();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContainerNodeBuilder();
    if (v1 <= 0x3F)
    {
      sub_20B592C74();
      if (v2 <= 0x3F)
      {
        sub_20B592D08();
        if (v3 <= 0x3F)
        {
          sub_20B52432C();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_20BAE04B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_20BB09A9C(&v36, *(v2 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_duration));

  v12 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v31 = v6 + 16;
  v32 = v13;
  v13(v8, (v2 + v12), v5);
  sub_20C132074();

  v33 = *(v6 + 8);
  v33(v8, v5);
  v14 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_containerBuilder;
  swift_beginAccess();
  v15 = v34;
  sub_20B6B5ADC(v2 + v14, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v16 = sub_20C132264();
  v17 = *(v16 - 8);
  v30 = v11;
  v18 = v17;
  v19 = *(v17 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C14F320;
  v22 = v21 + v20;
  v23 = v15;
  v24 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode;
  swift_beginAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v25 - 8) + 16))(v22, v2 + v24, v25);
  v26 = *(v18 + 104);
  v26(v22, *MEMORY[0x277CE9CE0], v16);
  v27 = v30;
  v32(v22 + v19, v30, v5);
  v26(v22 + v19, *MEMORY[0x277CE9CD8], v16);
  sub_20B7E27F8(v35);

  sub_20B593250(v23);
  return (v33)(v27, v5);
}

uint64_t sub_20BAE0884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v1 = sub_20C132164();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14F980;
  (*(v2 + 16))(v4 + v3, v0 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerIconAsset, v1);
  return v4;
}

uint64_t sub_20BAE096C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BAE09BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_20C132514();
  v9 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v9, v2);
  sub_20C131F64();
  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  (*(v3 + 40))(v1 + v9, v8, v2);
  swift_endAccess();
  v10 = v1 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAE0BDC(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  (*(v9 + 16))(&v17[-v11], v4 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder__reducedOverlayAnimations, v8, v10);
  sub_20C13A344();
  (*(v9 + 8))(v12, v8);
  if (v17[15] == 1)
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_duration) = a3;
  }

  sub_20BADD414(a1 & 1, a2);
  v13 = v4 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAE0D64(double a1, double a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_duration) = a2;
  v3 = v2 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAE0DEC()
{
  sub_20BADC790();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20BAE0E68(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v122 = a1;
  v125 = sub_20C1321D4();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v121 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v124 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v126 = &v106 - v5;
  MEMORY[0x28223BE20](v6);
  v127 = &v106 - v7;
  MEMORY[0x28223BE20](v8);
  v128 = &v106 - v9;
  v119 = sub_20C13A814();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_20C132194();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_20C132364();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v138 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v107 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = &v106 - v15;
  MEMORY[0x28223BE20](v16);
  v111 = &v106 - v17;
  v18 = sub_20C132EE4();
  v19 = *(v18 - 8);
  v142 = v18;
  v143 = v19;
  MEMORY[0x28223BE20](v18);
  v140 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v134 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v133 = &v106 - v22;
  v23 = sub_20C132254();
  v136 = *(v23 - 8);
  v137 = v23;
  MEMORY[0x28223BE20](v23);
  v135 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_20C132144();
  v25 = *(v139 - 1);
  MEMORY[0x28223BE20](v139);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C132154();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v106 - v33;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v132 = [objc_opt_self() bundleForClass_];
  v36 = objc_opt_self();
  v37 = [v36 elapsedTimeColors];
  if (!v37)
  {
    __break(1u);
    goto LABEL_13;
  }

  v38 = v37;
  v131 = v36;
  v39 = [v37 nonGradientTextColor];

  if (!v39)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (*(v29 + 104))(v34, *MEMORY[0x277CE9BD8], v28);
  (*(v29 + 16))(v31, v34, v28);
  (*(v25 + 104))(v27, *MEMORY[0x277CE9BC8], v139);
  v40 = swift_allocObject();
  v40[2] = 0xD000000000000010;
  v40[3] = 0x800000020C1A6D50;
  v40[4] = v132;
  v40[5] = v39;
  v40[6] = 0xD000000000000010;
  v40[7] = 0x800000020C1A6D50;
  v41 = v141;
  sub_20C132124();
  (*(v29 + 8))(v34, v28);
  *(v41 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  v42 = (v41 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_containerBuilder);
  if (qword_27C760748 != -1)
  {
    swift_once();
  }

  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0) + 48);
  v44 = *MEMORY[0x277CE9C98];
  v45 = sub_20C132234();
  v46 = v135;
  (*(*(v45 - 8) + 104))(v135, v44, v45);
  *&v46[v43] = 1092616192;
  v48 = v136;
  v47 = v137;
  (*(v136 + 104))(v46, *MEMORY[0x277CE9CB8], v137);
  v42[1] = 2;
  v49 = v140;
  sub_20C132ED4();
  v50 = v133;
  sub_20C132104();
  v51 = *(v143 + 8);
  v143 += 8;
  v139 = v51;
  v51(v49, v142);
  v52 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v134 + 8))(v50, v21);
  *v42 = 1;
  v53 = sub_20C131F44();
  v54 = &v42[v52[7]];
  *v54 = v53;
  v54[8] = v55;
  v56 = sub_20C131FD4();
  v57 = &v42[v52[8]];
  *v57 = v56;
  v57[8] = v58;
  v59 = sub_20C131FE4();
  v60 = &v42[v52[9]];
  *v60 = v59;
  *(v60 + 1) = v61;
  v60[20] = v62;
  *(v60 + 4) = v63;
  v60[21] = v64;
  v65 = sub_20C132384();
  v66 = &v42[v52[10]];
  *v66 = v65 & 0xFFFFFFFFFFLL;
  v66[12] = v67;
  *(v66 + 2) = v68;
  v66[13] = 0;
  v69 = sub_20C132004();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  (*(v48 + 8))(v46, v47);
  v76 = &v42[v52[11]];
  *v76 = v69;
  *(v76 + 1) = v71;
  *(v76 + 2) = v73;
  v76[24] = v75;
  sub_20BA6CE30();
  v77 = v138;
  sub_20C132374();
  v78 = [v131 elapsedTimeColors];
  if (!v78)
  {
    goto LABEL_14;
  }

  v79 = v78;
  v80 = [v78 nonGradientTextColor];

  if (!v80)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_20C1323E4();
  if (v81 == -1)
  {
    sub_20C1323D4();
  }

  v137 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_textNode;
  v82 = v140;
  sub_20C132ED4();
  v83 = v107;
  sub_20C1320B4();
  v139(v82, v142);
  (*(v109 + 8))(v77, v110);
  sub_20C1323A4();
  v84 = v108;
  v85 = v113;
  sub_20C131FF4();
  v86 = *(v112 + 8);
  v86(v83, v85);
  v87 = v111;
  sub_20C131F34();
  v86(v84, v85);
  v88 = v115;
  v89 = v114;
  v90 = v116;
  (*(v115 + 104))(v114, *MEMORY[0x277CE9C10], v116);
  v91 = v141;
  sub_20C132094();
  (*(v88 + 8))(v89, v90);
  v86(v87, v85);
  *(v91 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_duration) = 0;
  (*(v117 + 104))(v118, *MEMORY[0x277D4EF50], v119);
  LOBYTE(v144) = 1;
  sub_20C13A384();
  v92 = (v91 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_metricBuilder);
  v93 = v120;
  *v92 = v122;
  v92[1] = v93;
  v94 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerIconAsset;
  v95 = sub_20C132164();
  v96 = v121;
  (*(*(v95 - 8) + 16))(v121, v91 + v94, v95);
  v97 = v123;
  v98 = v125;
  (*(v123 + 104))(v96, *MEMORY[0x277CE9C40], v125);
  swift_unknownObjectRetain();
  sub_20C132ED4();
  v99 = v124;
  sub_20C1320E4();
  v139(v82, v142);
  (*(v97 + 8))(v96, v98);
  if (qword_27C760908 != -1)
  {
    swift_once();
  }

  v100 = v126;
  v101 = v130;
  sub_20C131FF4();
  v102 = v129;
  v103 = *(v129 + 8);
  v103(v99, v101);
  v104 = v127;
  sub_20C131F34();
  v103(v100, v101);
  sub_20C132504();
  v105 = v128;
  sub_20C131F64();
  v103(v104, v101);
  (*(v102 + 32))(v91 + OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_timerNode, v105, v101);
}

unint64_t sub_20BAE1E3C(uint64_t a1)
{
  v59 = sub_20C1361E4();
  v3 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v42[1] = v1;
    v62 = MEMORY[0x277D84F90];
    sub_20BB5E700(0, v5, 0);
    v7 = v62;
    v8 = a1 + 64;
    result = sub_20C13DAA4();
    v10 = 0;
    v11 = *(a1 + 36);
    v56 = (v3 + 8);
    v57 = v3 + 16;
    v43 = a1 + 72;
    v44 = v5;
    v54 = v11;
    v45 = v3;
    v46 = a1;
    v47 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      v13 = result >> 6;
      v14 = 1 << result;
      if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_32;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v55 = v10;
      v15 = *(*(a1 + 48) + 8 * result);
      v16 = *(*(a1 + 56) + 8 * result);
      v17 = *(v16 + 16);
      if (v17)
      {
        v51 = *(*(a1 + 48) + 8 * result);
        v52 = 1 << result;
        v49 = result >> 6;
        v50 = v7;
        v53 = result;
        v61 = v6;

        sub_20BB5E720(0, v17, 0);
        v18 = v61;
        v19 = *(v3 + 80);
        v48 = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v60 = *(v3 + 72);
        v21 = *(v3 + 16);
        do
        {
          v22 = v58;
          v23 = v59;
          v21(v58, v20, v59);
          v24 = sub_20C1361A4();
          v26 = v25;
          (*v56)(v22, v23);
          v61 = v18;
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_20BB5E720((v27 > 1), v28 + 1, 1);
            v18 = v61;
          }

          *(v18 + 16) = v28 + 1;
          v29 = v18 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          v20 += v60;
          --v17;
        }

        while (v17);

        v3 = v45;
        a1 = v46;
        v6 = MEMORY[0x277D84F90];
        v5 = v44;
        v13 = v49;
        v7 = v50;
        result = v53;
        LODWORD(v11) = v54;
        v15 = v51;
        v14 = v52;
      }

      else
      {
        v18 = v6;
      }

      v62 = v7;
      v31 = *(v7 + 16);
      v30 = *(v7 + 24);
      if (v31 >= v30 >> 1)
      {
        v52 = v14;
        v53 = result;
        v41 = v13;
        v51 = v15;
        sub_20BB5E700((v30 > 1), v31 + 1, 1);
        v15 = v51;
        v14 = v52;
        v13 = v41;
        result = v53;
        LODWORD(v11) = v54;
        v7 = v62;
      }

      *(v7 + 16) = v31 + 1;
      v32 = v7 + 16 * v31;
      *(v32 + 32) = v15;
      *(v32 + 40) = v18;
      v12 = 1 << *(a1 + 32);
      if (result >= v12)
      {
        goto LABEL_34;
      }

      v8 = v47;
      v33 = *(v47 + 8 * v13);
      if ((v33 & v14) == 0)
      {
        goto LABEL_35;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_36;
      }

      v34 = v33 & (-2 << (result & 0x3F));
      if (v34)
      {
        v12 = __clz(__rbit64(v34)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v7;
        v36 = v13 << 6;
        v37 = v13 + 1;
        v38 = (v43 + 8 * v13);
        while (v37 < (v12 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_20B526EA4(result, v54, 0);
            LODWORD(v11) = v54;
            v12 = __clz(__rbit64(v39)) + v36;
            goto LABEL_27;
          }
        }

        sub_20B526EA4(result, v54, 0);
        LODWORD(v11) = v54;
LABEL_27:
        v7 = v35;
      }

      v10 = v55 + 1;
      result = v12;
      if (v55 + 1 == v5)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_20BAE2248()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (!*(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state))
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state) = 1;
    v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_swappableItem + 8);
    v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_swappableItem + 16);
    v9 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_workoutPlan;
    v10 = sub_20C13CDF4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    (*(v2 + 16))(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v9, v1);
    v12 = (*(v2 + 80) + 56) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v11;
    *(v13 + 5) = v8;
    *(v13 + 6) = v7;
    (*(v2 + 32))(&v13[v12], &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

    sub_20B614F94(0, 0, v6, &unk_20C16C2A8, v13);
  }
}

uint64_t sub_20BAE2480()
{
  v1 = v0;
  v2 = sub_20C136494();
  v3 = sub_20BAE1E3C(v2);

  v6 = v3;

  sub_20BAE3D6C(&v6);

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state);
  *(v1 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state) = v6;
  sub_20BAE52FC(v4);

  return sub_20BAE252C();
}

uint64_t sub_20BAE252C()
{
  v1 = v0;
  v2 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766598);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v98 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = v98 - v9;
  v107 = type metadata accessor for WorkoutPlanSwappableItem();
  v10 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v12 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_swappableItem;
  sub_20B633138(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_swappableItem, v12);
  type metadata accessor for TVWorkoutPlanAlternativesHeaderShelf();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v14 = v13 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row;
  sub_20B5D8060(v123);
  v15 = v123[9];
  *(v14 + 128) = v123[8];
  *(v14 + 144) = v15;
  *(v14 + 160) = v124;
  v16 = v123[5];
  *(v14 + 64) = v123[4];
  *(v14 + 80) = v16;
  v17 = v123[7];
  *(v14 + 96) = v123[6];
  *(v14 + 112) = v17;
  v18 = v123[1];
  *v14 = v123[0];
  *(v14 + 16) = v18;
  v19 = v123[3];
  *(v14 + 32) = v123[2];
  *(v14 + 48) = v19;
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v13 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_workoutPlanStringBuilder) = v120[0];
  v101 = v13;
  sub_20BAE5298(v12, v13 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_swappableItem);
  v20 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state) >= 2uLL)
  {
  }

  v22 = *(v21 + 16);
  v108 = v0;
  if (v22)
  {
    v99 = v4;
    v119[0] = v20;
    sub_20C13DD64();
    v105 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_workoutPlan;
    v23 = type metadata accessor for TVWorkoutPlanAlternativesShelf();
    v103 = v7;
    v104 = v23;
    v102 = (v10 + 56);
    v98[1] = v21;
    v24 = (v21 + 40);
    v25 = v100;
    do
    {
      v26 = *v24;
      *&v109 = *(v24 - 1);
      swift_allocObject();

      v27 = sub_20B828C08();

      v28 = sub_20C133954();
      v29 = *(v28 - 8);
      v30 = v108;
      (*(v29 + 16))(v25, v108 + v105, v28);
      (*(v29 + 56))(v25, 0, 1, v28);
      v31 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan;
      swift_beginAccess();
      sub_20B5DF2D4(v25, v27 + v31, &unk_27C76A970);
      swift_endAccess();
      v32 = v30 + v106;
      v33 = v103;
      sub_20B633138(v32, v103);
      (*v102)(v33, 0, 1, v107);
      v34 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_swappableItem;
      swift_beginAccess();
      sub_20B5DF2D4(v33, v27 + v34, &qword_27C766598);
      swift_endAccess();
      v35 = (v27 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_alternateWorkoutReferences);
      *v35 = v109;
      v35[1] = v26;

      sub_20B8242C4();
      sub_20B824420();
      sub_20B823F04();

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v24 += 2;
      --v22;
    }

    while (v22);

    v36 = v119[0];
    v1 = v108;
    v20 = MEMORY[0x277D84F90];
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v37 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page;
  v38 = (*(v1 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v39 = v38[1];
  v106 = *v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = v101;
  *(inited + 40) = &off_2822F8398;
  v105 = v39;

  v41 = sub_20BEF71D0(v36);

  v120[0] = inited;
  sub_20B8D8FF8(v41);
  v107 = v37;
  v42 = *(v1 + v37);
  LODWORD(v104) = *(v42 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_platform);
  v43 = v120[0];
  v44 = *(v42 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20C13C734();
  v103 = v44;
  v45 = sub_20C13C724();
  v46 = type metadata accessor for CatalogPageImpressionTracker();
  v47 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v48 = MEMORY[0x277D221C0];
  v47[2] = sub_20C13C6D4();
  v47[3] = v45;
  v47[4] = v48;
  v121 = v46;
  v49 = sub_20B63EE48();
  v122 = v49;
  v120[0] = v47;
  v50 = type metadata accessor for MetricLocationStore();
  v51 = swift_allocObject();
  v52 = MEMORY[0x277D84F98];
  *(v51 + 16) = v20;
  *(v51 + 24) = v52;
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v120, v46);
  v102 = v98;
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = *v56;
  v119[3] = v46;
  v119[4] = v49;
  v119[0] = v58;
  v118[3] = v50;
  v118[4] = &off_2822B6968;
  v118[0] = v51;
  v59 = *(v43 + 16);
  if (v59)
  {
    v99 = v50;
    v100 = v49;
    v117[0] = v20;
    sub_20BB5D394(0, v59, 0);
    v60 = 32;
    v61 = v117[0];
    do
    {
      v62 = *(v43 + v60);
      v117[0] = v61;
      v63 = *(v61 + 16);
      v64 = *(v61 + 24);
      v109 = v62;
      swift_unknownObjectRetain();
      if (v63 >= v64 >> 1)
      {
        sub_20BB5D394((v64 > 1), v63 + 1, 1);
        v61 = v117[0];
      }

      *(v61 + 16) = v63 + 1;
      v65 = v61 + 24 * v63;
      *(v65 + 32) = v109;
      *(v65 + 48) = 0;
      v60 += 16;
      --v59;
    }

    while (v59);

    v50 = v99;
    v49 = v100;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v119, v117);
  sub_20B51CC64(v118, v116);
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v117, v117[3]);
  *&v109 = v98;
  v67 = MEMORY[0x28223BE20](v66);
  v69 = (v98 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69, v67);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v116, v116[3]);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = (v98 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = *v69;
  v77 = *v74;
  v114 = v46;
  v115 = v49;
  v113[0] = v76;
  v111 = v50;
  v112 = &off_2822B6968;
  v110[0] = v77;
  v78 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v80 = MEMORY[0x28223BE20](v79);
  v82 = (v98 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82, v80);
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
  v85 = MEMORY[0x28223BE20](v84);
  v87 = (v98 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87, v85);
  v89 = sub_20BE3AA74(v106, v105, v61, v104, v103, *v82, *v87, 2, v78);
  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(v120);
  v90 = v107;
  v91 = v108;
  v92 = *(v108 + v107);
  *(v108 + v107) = v89;

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v93 = *(v91 + 24);
  ObjectType = swift_getObjectType();
  v121 = type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider();
  v122 = &off_2822CA650;
  v120[0] = v91;
  v95 = *(v91 + v90);

  v96 = v95;
  sub_20B76FFF8(v120, v96, ObjectType, v93);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v120);
}

uint64_t sub_20BAE3128()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  v1 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_workoutPlan;
  v2 = sub_20C133954();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B63319C(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_swappableItem);

  v3 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_20BAE52FC(*(v0 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state));
  return v0;
}

uint64_t sub_20BAE3228()
{
  sub_20BAE3128();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider()
{
  result = qword_27C76A178;
  if (!qword_27C76A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAE32D4()
{
  result = sub_20C133954();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanSwappableItem();
    if (v2 <= 0x3F)
    {
      result = sub_20C1333A4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI41TVWorkoutPlanAlternativesPageDataProviderC5State33_89AC8BE1B10806E12F9819B9144A2E11LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20BAE3444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = sub_20C1364A4();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A188);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BAE354C, 0, 0);
}

uint64_t sub_20BAE354C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 112, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_20BAE37F4;
    v5 = v0[21];
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[14];

    return MEMORY[0x2821ADF28](v5, v8, v6, v7, v2, v3);
  }

  v9 = v0 + 21;
  (*(v0[18] + 56))(v0[21], 1, 1, v0[17]);
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  sub_20BAE5418(v0[21], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20BAE5488(*v9);
    v9 = v0 + 20;
LABEL_12:
    sub_20BAE5488(*v9);

    v16 = v0[1];

    return v16();
  }

  (*(v0[18] + 32))(v0[19], v0[20], v0[17]);
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  v0[24] = v13;
  if (!v13)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    goto LABEL_12;
  }

  sub_20C13CDA4();
  v0[25] = sub_20C13CD94();
  v15 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BAE3AE0, v15, v14);
}

uint64_t sub_20BAE37F4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20BAE3C00;
  }

  else
  {
    v2 = sub_20BAE3908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BAE3908()
{
  v1 = v0 + 21;
  (*(v0[18] + 56))(v0[21], 0, 1, v0[17]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  sub_20BAE5418(v0[21], v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20BAE5488(*v1);
    v1 = v0 + 20;
LABEL_8:
    sub_20BAE5488(*v1);

    v8 = v0[1];

    return v8();
  }

  (*(v0[18] + 32))(v0[19], v0[20], v0[17]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    goto LABEL_8;
  }

  sub_20C13CDA4();
  v0[25] = sub_20C13CD94();
  v7 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BAE3AE0, v7, v6);
}

uint64_t sub_20BAE3AE0()
{

  sub_20BAE2480();

  return MEMORY[0x2822009F8](sub_20BAE3B5C, 0, 0);
}

uint64_t sub_20BAE3B5C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_20BAE5488(v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BAE3C00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BAE3CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BAE3D6C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A1028(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_20C13DF84();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_20C13CCD4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_20BAE3EB0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_20BAE3EB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_20B6A07A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_20BAE4438((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20BC05740(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_20BC05740((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_20BAE4438((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_20BAE4438(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_20BAE463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v102 = a3;
  v103 = a4;
  v97 = a2;
  v10 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v10 - 8);
  v98 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_20C132EE4();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x28223BE20](v12);
  v93 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v16 - 8);
  v92 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v90 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v90 - v22;
  v91 = sub_20C1333A4();
  v24 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_workoutPlan;
  v28 = sub_20C133954();
  v99 = *(v28 - 8);
  v100 = v28;
  (*(v99 + 16))(v6 + v27, a4);
  v101 = a5;
  sub_20B633138(a5, v6 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_swappableItem);
  v90 = "ernativesPageDataProvider";
  v29 = *MEMORY[0x277D51838];
  v30 = sub_20C1352F4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v23, v29, v30);
  (*(v31 + 56))(v23, 0, 1, v30);
  v32 = sub_20C132C14();
  (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  v33 = sub_20C135ED4();
  (*(*(v33 - 8) + 56))(v92, 1, 1, v33);
  v34 = sub_20C136914();
  (*(*(v34 - 8) + 56))(v96, 1, 1, v34);
  sub_20C133384();
  (*(v24 + 32))(v6 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_metricPage, v26, v91);
  *(v6 + 48) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v116, v6 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + 96) = v116[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v116, v6 + 112);
  v102 = v6;
  *(v6 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_state) = 0;
  v35 = v93;
  sub_20C133804();
  v36 = sub_20C132EA4();
  v96 = v37;
  v97 = v36;
  v94[1](v35, v95);
  type metadata accessor for LoadingShelf();
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v39 = v38 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row;
  sub_20B5D8060(v116);
  v40 = v116[9];
  *(v39 + 128) = v116[8];
  *(v39 + 144) = v40;
  *(v39 + 160) = v117;
  v41 = v116[5];
  *(v39 + 64) = v116[4];
  *(v39 + 80) = v41;
  v42 = v116[7];
  *(v39 + 96) = v116[6];
  *(v39 + 112) = v42;
  v43 = v116[1];
  *v39 = v116[0];
  *(v39 + 16) = v43;
  v44 = v116[3];
  *(v39 + 32) = v116[2];
  *(v39 + 48) = v44;
  sub_20C133AA4();

  *(v38 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_platform) = v114[0];
  sub_20C133AA4();
  LODWORD(v95) = v115;
  v45 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v94 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v45 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v46 = sub_20C13C724();
  v47 = type metadata accessor for CatalogPageImpressionTracker();
  v48 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v49 = MEMORY[0x277D221C0];
  v48[2] = sub_20C13C6D4();
  v48[3] = v46;
  v48[4] = v49;
  v114[3] = v47;
  v50 = sub_20B63EE48();
  v114[4] = v50;
  v114[0] = v48;
  v51 = type metadata accessor for MetricLocationStore();
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F98];
  *(v52 + 16) = MEMORY[0x277D84F90];
  *(v52 + 24) = v54;
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v114, v47);
  v56 = MEMORY[0x28223BE20](v55);
  v58 = (&v90 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58, v56);
  v60 = *v58;
  v113[3] = v47;
  v113[4] = v50;
  v113[0] = v60;
  v112[3] = v51;
  v112[4] = &off_2822B6968;
  v112[0] = v52;
  v111[0] = v53;
  sub_20BB5D394(0, 1, 0);
  v61 = v111[0];
  v63 = *(v111[0] + 16);
  v62 = *(v111[0] + 24);
  if (v63 >= v62 >> 1)
  {
    sub_20BB5D394((v62 > 1), v63 + 1, 1);
    v61 = v111[0];
  }

  *(v61 + 16) = v63 + 1;
  v64 = v61 + 24 * v63;
  *(v64 + 32) = v38;
  *(v64 + 40) = &off_2822D32B0;
  *(v64 + 48) = 0;
  sub_20B51CC64(v113, v111);
  sub_20B51CC64(v112, v110);
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v111, v111[3]);
  v98 = &v90;
  v66 = MEMORY[0x28223BE20](v65);
  v68 = (&v90 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68, v66);
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v110, v110[3]);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = (&v90 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73, v71);
  v75 = *v68;
  v76 = *v73;
  v108 = v47;
  v109 = v50;
  v106 = &off_2822B6968;
  v107[0] = v75;
  v105 = v51;
  v104[0] = v76;
  v77 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
  v79 = MEMORY[0x28223BE20](v78);
  v81 = (&v90 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81, v79);
  v83 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v84 = MEMORY[0x28223BE20](v83);
  v86 = (&v90 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86, v84);
  v88 = sub_20BE3AA74(v97, v96, v61, v95, v94, *v81, *v86, 2, v77);
  sub_20B63319C(v101);
  (*(v99 + 8))(v103, v100);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v114);
  result = v102;
  *(v102 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) = v88;
  return result;
}

uint64_t sub_20BAE5298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanSwappableItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BAE52FC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_20BAE530C(uint64_t a1)
{
  v4 = *(sub_20C133954() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52A9D4;

  return sub_20BAE3444(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_20BAE5418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BAE5488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BAE54F0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_20BAE5708()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A190);
  sub_20C1380D4();
  return v1;
}

char *sub_20BAE5798(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_layout] = vdupq_n_s64(0x404E000000000000uLL);
  v11 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v12 setFont_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v14 setAxis_];
  [v14 setAlignment_];
  [v14 setSpacing_];
  [v14 setDistribution_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_textStackView] = v14;
  v55.receiver = v4;
  v55.super_class = type metadata accessor for TVGallerySectionSeparatorShelf();
  v15 = objc_msgSendSuper2(&v55, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v17 = v15;
  v18 = [v16 initWithFrame_];
  v19 = objc_opt_self();
  v20 = [v19 separatorColor];
  [v18 setBackgroundColor_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v22 = [v19 separatorColor];
  [v21 setBackgroundColor_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = [v17 contentView];
  v24 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_textStackView;
  [v23 addSubview_];

  [*&v17[v24] addArrangedSubview_];
  [*&v17[v24] addArrangedSubview_];
  [*&v17[v24] addArrangedSubview_];
  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C150040;
  v26 = [v18 heightAnchor];
  v27 = [v26 constraintEqualToConstant_];

  *(v25 + 32) = v27;
  v54 = v21;
  v28 = [v21 heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v25 + 40) = v29;
  v30 = [v21 widthAnchor];
  v31 = [v18 widthAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v25 + 48) = v32;
  sub_20B5E29D0();
  v33 = sub_20C13CC54();

  [v53 activateConstraints_];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14FE90;
  v35 = [*&v17[v24] leadingAnchor];
  v36 = [v17 contentView];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v38;
  v39 = [*&v17[v24] trailingAnchor];
  v40 = [v17 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v34 + 40) = v42;
  v43 = [*&v17[v24] topAnchor];
  v44 = [v17 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v34 + 48) = v46;
  v47 = [*&v17[v24] bottomAnchor];
  v48 = [v17 contentView];

  v49 = [v48 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor_];

  *(v34 + 56) = v50;
  v51 = sub_20C13CC54();

  [v53 activateConstraints_];

  return v17;
}

id sub_20BAE60C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVGallerySectionSeparatorShelf();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVGallerySectionSeparatorShelf()
{
  result = qword_27C76A1A0;
  if (!qword_27C76A1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAE61C8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BAE628C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BAE62D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BAE6330(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20BAE63A0(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  return v3 + -160.0;
}

void sub_20BAE6404(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x33)
  {
    v7 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_titleLabel];

    v21 = sub_20C13C914();

    [v7 setText_];
    v8 = v21;
  }

  else
  {
    sub_20C13B534();

    v9 = v1;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = a1;
      v23 = v21;
      *v12 = 138543618;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2082;
      v14 = sub_20B5F66D0();
      v15 = v9;
      v16 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v14);
      v18 = sub_20B51E694(v16, v17, &v23);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_20B517000, v10, v11, "Attempted to configure %{public}@ with item: %{public}s", v12, 0x16u);
      sub_20B520158(v13, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      v19 = v21;
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BAE66BC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_layout) = vdupq_n_s64(0x404E000000000000uLL);
  v3 = OBJC_IVAR____TtC9SeymourUI30TVGallerySectionSeparatorShelf_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v4 setFont_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20BAE6840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20BAE689C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20BAE690C()
{
  if (*(v0 + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
    if (*(v0 + 24))
    {
LABEL_3:
      sub_20C13E184();
      sub_20C13CA64();
      goto LABEL_6;
    }
  }

  else
  {
    sub_20C13E184();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_20C13E184();
LABEL_6:
  if (*(v0 + 40) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v1 = *(v0 + 32);
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v1);
  }

  v2 = *(v0 + 41);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else if (v2 == 3)
  {
    v3 = 2;
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    v3 = v2 & 1;
  }

  return MEMORY[0x20F2F58E0](v3);
}

uint64_t sub_20BAE69FC()
{
  sub_20C13E164();
  sub_20BAE690C();
  return sub_20C13E1B4();
}

uint64_t sub_20BAE6A40()
{
  sub_20C13E164();
  sub_20BAE690C();
  return sub_20C13E1B4();
}

uint64_t sub_20BAE6A7C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return sub_20BAE6B20(&v5, &v7) & 1;
}

unint64_t sub_20BAE6ACC()
{
  result = qword_27C76A1B0;
  if (!qword_27C76A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A1B0);
  }

  return result;
}

uint64_t sub_20BAE6B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_20C13DFF4();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_20C13DFF4();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_17:
    v15 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    v16 = *(a1 + 41);
    v17 = *(a2 + 41);
    if (v16 == 3)
    {
      if (v17 != 3)
      {
        return 0;
      }
    }

    else if (v16 == 2)
    {
      if (v17 != 2)
      {
        return 0;
      }
    }

    else if (v17 & 0xFE) == 2 || ((v16 ^ v17))
    {
      return 0;
    }

    return 1;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_20BAE6C60(int a1)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-v6];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v23[-v9];
  v11 = sub_20C02A560();
  sub_20B8CAB64(v11, v7);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v24;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BAE94A4;
  *(v14 + 24) = v13;
  (*(v2 + 16))(v4, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v15, v4, v1);
  v18 = (v17 + v16);
  *v18 = sub_20B8C71E8;
  v18[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v19 = v25;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (*(v8 + 8))(v10, v19);
}

uint64_t sub_20BAE6FC8@<X0>(uint64_t *a1@<X0>, char a2@<W2>, BOOL *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_20BAE750C(a2, v5);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_20BAE705C(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v47 = &v40 - v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_lazyLockupFetcher);
  v17 = v15[10];
  v16 = v15[11];
  __swift_project_boxed_opaque_existential_1(v15 + 7, v17);
  v18 = *(v16 + 8);
  v40 = v8;
  v18(v17, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v15;
  v20 = v8;
  v21 = v42;
  (*(v3 + 16))(v5, v20, v42);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v22, v5, v21);
  v24 = (v23 + ((v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20B9EA780;
  v24[1] = v19;

  v25 = v41;
  sub_20C137C94();
  (*(v3 + 8))(v40, v21);
  v26 = swift_allocObject();
  v27 = v43;
  *(v26 + 16) = sub_20BAE95B4;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20B849B38;
  *(v28 + 24) = v26;
  v30 = v44;
  v29 = v45;
  v31 = v46;
  (*(v45 + 16))(v44, v25, v46);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = swift_allocObject();
  (*(v29 + 32))(v33 + v32, v30, v31);
  v34 = (v33 + ((v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_20B66A8B4;
  v34[1] = v28;

  v35 = v47;
  sub_20C137C94();
  v36 = *(v29 + 8);
  v36(v25, v31);
  v37 = sub_20C137CB4();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_20B5DF6DC, v38);

  return (v36)(v35, v31);
}

uint64_t sub_20BAE750C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_lazyLockupFetcher);

  v11 = sub_20C031D08(v10, a2, v3);

  v12 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_descriptorIdentifier);
  v13 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_descriptorIdentifier + 8);
  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  v39 = 0uLL;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = v11;
  *&v41[0] = MEMORY[0x277D84F90];
  *(v41 + 8) = 0u;
  *(&v41[1] + 8) = 0u;
  *(&v41[2] + 1) = 0;
  v42 = 2;
  nullsub_1(&v34);
  v14 = v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row;
  v15 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 144);
  v43[8] = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 128);
  v43[9] = v15;
  v44 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 160);
  v16 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 80);
  v43[4] = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 64);
  v43[5] = v16;
  v17 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 112);
  v43[6] = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 96);
  v43[7] = v17;
  v18 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 16);
  v43[0] = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row);
  v43[1] = v18;
  v19 = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 48);
  v43[2] = *(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 32);
  v43[3] = v19;
  v20 = v41[2];
  *(v14 + 128) = v41[1];
  *(v14 + 144) = v20;
  *(v14 + 160) = v42;
  v21 = v39;
  *(v14 + 64) = v38;
  *(v14 + 80) = v21;
  v22 = v41[0];
  *(v14 + 96) = v40;
  *(v14 + 112) = v22;
  v23 = v35;
  *v14 = v34;
  *(v14 + 16) = v23;
  v24 = v37;
  *(v14 + 32) = v36;
  *(v14 + 48) = v24;

  sub_20B520158(v43, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v27 = sub_20B61DC70(v3, result);
      if (v28)
      {
        v30 = v28;
        v31 = v29;
        v33 = v27;
        sub_20B5E2E18();
        *v9 = sub_20C13D374();
        (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
        v32 = sub_20C13C584();
        result = (*(v7 + 8))(v9, v6);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        if (a1 < 0)
        {
          sub_20C10BD60(v3, v33, a1 & 1, v26);
        }

        else
        {
          sub_20B621310(v33, v30, v31, v3, a1 & 1, v26);
        }
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAE781C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_catalogClient);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_subscriptionCache);

  return v0;
}

uint64_t sub_20BAE7964()
{
  sub_20BAE781C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidedWorkoutGalleryShelf()
{
  result = qword_27C76A200;
  if (!qword_27C76A200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAE7A10()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BAE7AEC()
{
  sub_20B8C9C90();
  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BAE7BF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BAE6C60(1);
  }

  return result;
}

uint64_t sub_20BAE7C4C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BAE89E4;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BAE7F10(unsigned int *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_20C13BB84();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v23) = v13;
    sub_20BAE8244(a3, a4, v12 | (v13 << 32), a5 & 1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_20B75FBFC(a3, a4, &v20);
    if (v20 == 2)
    {
      sub_20C13B4E4();

      v15 = sub_20C13BB74();
      v16 = sub_20C13D1D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_20B51E694(a3, a4, &v23);
        _os_log_impl(&dword_20B517000, v15, v16, "No download entry for identifier: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x20F2F6A40](v18, -1, -1);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      (*(v19 + 8))(v11, v9);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      if (BYTE8(v21) == 255 || (BYTE8(v21) & 1) == 0 || ((1 << v24) & 0x1DD) != 0)
      {
        if (v20 & 1) != 0 || (a5)
        {
          sub_20B75DE1C(a3, a4, &v23, 0);
        }

        else
        {
          sub_20B75D680(a3, a4, &v23);
        }
      }

      else if (v24 == 1)
      {
        sub_20B75E1A8(a3, a4, &v23, 0);
      }

      sub_20B520158(&v20, &qword_27C764BC0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAE8244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  *(v35 + 1) = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA03B4(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B8C70F4(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20BAE8690@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BAE8708@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

double sub_20BAE87C8@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_lazyLockupFetcher) + 160);
  if (*(v11 + 16))
  {

    v12 = sub_20B65AA60(a1, a2);
    if (v13)
    {
      (*(v8 + 16))(v10, *(v11 + 56) + *(v8 + 72) * v12, v7);

      *(a3 + 24) = v7;
      *(a3 + 32) = &off_2822D8E58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(v8 + 32))(boxed_opaque_existential_1, v10, v7);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_20BAE892C()
{
  v0 = sub_20C02C2CC();
  v1 = sub_20BEF69F4(v0);

  return v1;
}

uint64_t sub_20BAE8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_20C02D360(a3, a4);
  if (result)
  {

    return sub_20BAE6C60(a5 & 1 | 0xFFFFFF80);
  }

  return result;
}

uint64_t sub_20BAE89EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v9 = v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_row;
  sub_20B5D8060(v24);
  v10 = v24[9];
  *(v9 + 128) = v24[8];
  *(v9 + 144) = v10;
  *(v9 + 160) = v25;
  v11 = v24[5];
  *(v9 + 64) = v24[4];
  *(v9 + 80) = v11;
  v12 = v24[7];
  *(v9 + 96) = v24[6];
  *(v9 + 112) = v12;
  v13 = v24[1];
  *v9 = v24[0];
  *(v9 + 16) = v13;
  v14 = v24[3];
  *(v9 + 32) = v24[2];
  *(v9 + 48) = v14;
  v15 = (v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_descriptorIdentifier);
  *v15 = a3;
  v15[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v23, v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_eventHub) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v23, v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v23, v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_subscriptionCache);
  *(v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_displayStyle) = a2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  *(v16 + 152) = MEMORY[0x277D84F90];

  v18 = sub_20B6B0C04(v17);
  v19 = MEMORY[0x277D84FA0];
  *(v16 + 160) = v18;
  *(v16 + 168) = v19;
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v16 + 136) = 20;
  *(v16 + 144) = a2;
  *(v16 + 145) = 0;
  *(v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_lazyLockupFetcher) = v16;
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v20 = sub_20B8CB478();
  v21 = (v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_downloadSubscriptionCoordinator);
  *v21 = v20;
  v21[1] = &off_2822B2B58;
  *(v20 + 24) = &off_2822CA880;
  swift_unknownObjectWeakAssign();
  *(*(v5 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_downloadSubscriptionCoordinator) + 40) = &off_2822CA868;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_20BAE8D38(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_20C136594();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_20C134A74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v50 - v22;
  v23 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8C702C(v62, v25, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B8C70F4(v25, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload == 13)
  {
    sub_20C02C020(v60, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_20B520158(v16, &qword_27C767450);
    }

    else
    {
      v28 = v61;
      sub_20B8C6FC8(v16, v61);
      sub_20B8C702C(v28, v20, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v50;
        (*(v50 + 32))(v13, v20, v11);
        v30 = sub_20C133E44();
        v32 = v31;
        (*(v29 + 8))(v13, v11);
      }

      else
      {
        v34 = v51;
        v33 = v52;
        (*(v51 + 32))(v10, v20, v52);
        v30 = sub_20C136564();
        v32 = v35;
        (*(v34 + 8))(v10, v33);
      }

      v36 = v54;
      sub_20B8CA380(v30, v32, v54);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v30;
      *(v38 + 32) = v32;
      *(v38 + 40) = 0;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20BAE9450;
      *(v39 + 24) = v38;
      v41 = v56;
      v40 = v57;
      v42 = v53;
      (*(v56 + 16))(v53, v36, v57);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = swift_allocObject();
      (*(v41 + 32))(v44 + v43, v42, v40);
      v45 = (v44 + ((v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20B8C70B8;
      v45[1] = v39;
      v46 = v55;
      sub_20C137C94();
      (*(v41 + 8))(v36, v40);
      v47 = v59;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      (*(v58 + 8))(v46, v47);
      return sub_20B8C70F4(v61, MEMORY[0x277D50C70]);
    }
  }

  return result;
}

uint64_t sub_20BAE94EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BAE95D0()
{
  result = qword_27C76A210;
  if (!qword_27C76A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A210);
  }

  return result;
}

id sub_20BAE9624(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_20BAEA7CC, v4);

  return v5;
}

void sub_20BAE96C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_20C132A34();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_20C132C34();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id sub_20BAE9854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompletedWorkoutShareArtworkItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CompletedWorkoutShareArtworkItemProvider()
{
  result = qword_27C76A220;
  if (!qword_27C76A220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAE996C()
{
  result = sub_20C137C24();
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

uint64_t sub_20BAE9A20@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v2 = *(v48 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v54 = *(v50 - 8);
  v7 = v54[8];
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v51 = &v43 - v11;
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_assetClient], *&v1[OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_assetClient + 24]);
  sub_20C137C14();
  sub_20C139E84();

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BAEA588;
  *(v14 + 24) = v12;
  v16 = v47;
  v15 = v48;
  (*(v2 + 16))(v47, v6, v48);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v17, v16, v15);
  v20 = (v19 + v18);
  *v20 = sub_20BAEA5A0;
  v20[1] = v14;
  v47 = sub_20B71D438();
  v21 = v13;
  v44 = v21;
  v22 = v53;
  sub_20C137C94();
  (*(v2 + 8))(v6, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20BAEA5F8;
  *(v24 + 24) = v23;
  v25 = v54;
  v48 = v54[2];
  v26 = v49;
  v27 = v50;
  (v48)(v49, v22, v50);
  v28 = v25;
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v45 = v29;
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v46 = v28[4];
  v46(v31 + v29, v26, v27);
  v32 = (v31 + v30);
  *v32 = sub_20BAEAA64;
  v32[1] = v24;
  v33 = v44;
  v34 = v51;
  sub_20C137C94();
  v35 = v53;
  v36 = v54[1];
  ++v54;
  v49 = v36;
  (v36)(v53, v27);
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_20BAEA628;
  *(v38 + 24) = v37;
  (v48)(v35, v34, v27);
  v39 = swift_allocObject();
  v46(v39 + v45, v35, v27);
  v40 = (v39 + v30);
  *v40 = sub_20B89B090;
  v40[1] = v38;
  v41 = v33;
  sub_20C137C94();
  return (v49)(v34, v27);
}

uint64_t sub_20BAE9FA8()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v5 = sub_20C132C34();
  v6 = [v4 initWithData:v5 scale:1.0];

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    sub_20B71D438();

    return sub_20C137CA4();
  }

  else
  {
    sub_20C13B534();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "[Share Sheet] failed to decode catalog workout image", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    sub_20B659CD4();
    v11 = swift_allocError();
    *v12 = 3;
    *(swift_allocObject() + 16) = v11;
    sub_20B71D438();
    return sub_20C137CA4();
  }
}

uint64_t sub_20BAEA214(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  sub_20B71D438();
  v5 = a2;
  v6 = a1;

  return sub_20C137CA4();
}

uint64_t sub_20BAEA2AC(UIImage *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UIImagePNGRepresentation(a1);
  if (v6)
  {
    v7 = v6;
    v8 = sub_20C132C54();
    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;

    return sub_20C137CA4();
  }

  else
  {
    sub_20C13B534();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "[Share Sheet] failed to encode completed workout image", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_20B659CD4();
    v16 = swift_allocError();
    *v17 = 4;
    *(swift_allocObject() + 16) = v16;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BAEA4E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_artwork;
  v5 = sub_20C137C24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BAEA668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BAEA730@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_20BAEA760@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_20B719888(v2, v3);
}

UIImage *sub_20BAEA790@<X0>(UIImage **a1@<X8>)
{
  result = sub_20BA6A948(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_20BAEA7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_20C13BB14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_size] = xmmword_20C16C630;
  sub_20B51CC64(a1, &v3[OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_assetClient]);
  v11 = OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_artwork;
  v12 = sub_20C137C24();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v3[v11], a2, v12);
  *&v3[OBJC_IVAR____TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider_renderer] = a3;
  v14 = type metadata accessor for CompletedWorkoutShareArtworkItemProvider();
  v20.receiver = v3;
  v20.super_class = v14;

  v15 = objc_msgSendSuper2(&v20, sel_init);
  sub_20C13BB04();
  sub_20C13BAF4();
  (*(v8 + 8))(v10, v7);
  v16 = sub_20C13C914();

  aBlock[4] = sub_20B8C8EE8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BAE9624;
  aBlock[3] = &block_descriptor_79;
  v17 = _Block_copy(aBlock);

  [v15 registerDataRepresentationForTypeIdentifier:v16 visibility:3 loadHandler:v17];
  _Block_release(v17);

  (*(v13 + 8))(a2, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t sub_20BAEAA68()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_title + 8);
  *(v5 + 16) = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_title);
  *(v5 + 24) = v6;
  v7 = v5 | 0x6000000000000003;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  *(v8 + 32) = v7;
  v31 = 0uLL;
  LOBYTE(v32) = 1;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  WORD4(v33) = 128;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v8;
  *&v38[0] = MEMORY[0x277D84F90];
  *(v38 + 8) = 0u;
  *(&v38[1] + 8) = 0u;
  *(&v38[2] + 1) = 0;
  v39 = 2;
  nullsub_1(&v31);
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 144);
  v40[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 128);
  v40[9] = v10;
  v41 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 160);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 80);
  v40[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 64);
  v40[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 112);
  v40[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 96);
  v40[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 16);
  v40[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row);
  v40[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 48);
  v40[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 32);
  v40[3] = v14;
  v15 = v38[2];
  *(v9 + 128) = v38[1];
  *(v9 + 144) = v15;
  *(v9 + 160) = v39;
  v16 = v36;
  *(v9 + 64) = v35;
  *(v9 + 80) = v16;
  v17 = v38[0];
  *(v9 + 96) = v37;
  *(v9 + 112) = v17;
  v18 = v32;
  *v9 = v31;
  *(v9 + 16) = v18;
  v19 = v34;
  *(v9 + 32) = v33;
  *(v9 + 48) = v19;

  sub_20B634408(v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v22 = sub_20B61CE70(v0, Strong);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v30 = v0;
      sub_20B5E2E18();
      *v4 = sub_20C13D374();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v28 = sub_20C13C584();
      result = (*(v2 + 8))(v4, v1);
      if ((v28 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B6203A8(v25, v26, v27, v30, 0, v21);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BAEAD78()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TitledSeparatorShelf()
{
  result = qword_27C76A230;
  if (!qword_27C76A230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAEAEC4()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BAEAF74@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BAEAFEC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BAEB09C(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_20C133954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  sub_20B52F9E8(a1, v5, &unk_27C76A970);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &unk_27C76A970);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (*(v15 + 16))
    {
      sub_20BAEB5E4(v9, v15);
      return (*(v7 + 8))(v9, v6);
    }

    (*(v7 + 8))(v9, v6);
  }

  return sub_20BAEB350();
}

uint64_t sub_20BAEB350()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = 0uLL;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  WORD4(v29) = 128;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = MEMORY[0x277D84F90];
  *&v34[0] = MEMORY[0x277D84F90];
  *(v34 + 8) = 0u;
  *(&v34[1] + 8) = 0u;
  *(&v34[2] + 1) = 0;
  v35 = 2;
  nullsub_1(&v27);
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 144);
  v36[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 128);
  v36[9] = v6;
  v37 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 160);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 80);
  v36[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 64);
  v36[5] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 112);
  v36[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 96);
  v36[7] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 16);
  v36[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row);
  v36[1] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 48);
  v36[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 32);
  v36[3] = v10;
  v11 = v34[2];
  *(v5 + 128) = v34[1];
  *(v5 + 144) = v11;
  *(v5 + 160) = v35;
  v12 = v32;
  *(v5 + 64) = v31;
  *(v5 + 80) = v12;
  v13 = v34[0];
  *(v5 + 96) = v33;
  *(v5 + 112) = v13;
  v14 = v28;
  *v5 = v27;
  *(v5 + 16) = v14;
  v15 = v30;
  *(v5 + 32) = v29;
  *(v5 + 48) = v15;
  sub_20B520158(v36, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v18 = sub_20B61DC98(v0, result);
      if (v19)
      {
        v21 = v18;
        v22 = v19;
        v23 = v20;
        v24 = v0;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
        v25 = sub_20C13C584();
        result = (*(v2 + 8))(v4, v1);
        if ((v25 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621354(v21, v22, v23, v24, 1, v17);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAEB5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13C554();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133154();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132924();
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135214();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C132E94();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x28223BE20](v14);
  v92 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C135C54();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v91 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  v85 = a1;
  v96[2] = a1;

  v28 = sub_20BEE11A8(sub_20BAEC8AC, v96, a2);
  sub_20B6C15AC(v28, v24);

  v29 = *(v17 + 48);
  v30 = v29(v24, 1, v16);
  v94 = v17;
  if (v30 == 1)
  {
    sub_20B520158(v24, &qword_27C76A410);
    sub_20B6C15AC(a2, v27);
  }

  else
  {
    (*(v17 + 32))(v27, v24, v16);
    (*(v17 + 56))(v27, 0, 1, v16);
  }

  sub_20B52F9E8(v27, v21, &qword_27C76A410);
  if (v29(v21, 1, v16) == 1)
  {
    sub_20B520158(v21, &qword_27C76A410);
    sub_20BAEB350();
    v31 = v27;
    return sub_20B520158(v31, &qword_27C76A410);
  }

  v76 = v27;
  v77 = v16;
  (*(v94 + 32))(v91, v21, v16);
  sub_20C135C04();
  sub_20C133894();
  (*(v83 + 8))(v13, v84);
  v32 = v95;
  v33 = v93;
  sub_20BAB42C0(a2, v93);
  v34 = [objc_opt_self() systemFontOfSize_];
  v35 = [objc_opt_self() configurationWithFont_];

  v36 = v35;
  v37 = sub_20C13C914();
  v38 = [objc_opt_self() systemImageNamed:v37 withConfiguration:v36];

  v39 = v86;
  sub_20C133014();
  LOBYTE(v36) = sub_20C133044();
  (*(v87 + 8))(v39, v88);
  if (v36)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767100);
  v42 = swift_allocBox();
  v43 = *(v41 + 64);
  *v44 = v38;
  *(v44 + 8) = v40;
  v45 = v90;
  v46 = v44 + v43;
  v47 = v33;
  v48 = v89;
  (*(v90 + 16))(v46, v47, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C14F980;
  *(v49 + 32) = v42 | 0x5000000000000003;
  v100 = 0uLL;
  LOBYTE(v101) = 1;
  *(&v101 + 1) = *v99;
  DWORD1(v101) = *&v99[3];
  *(&v101 + 1) = 0;
  *&v102 = 0;
  WORD4(v102) = 128;
  *(&v102 + 10) = *&v97[7];
  HIWORD(v102) = v98;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = *v97;
  DWORD1(v106) = *&v97[3];
  *(&v106 + 1) = v49;
  *&v107[0] = MEMORY[0x277D84F90];
  *(v107 + 8) = 0u;
  *(&v107[1] + 8) = 0u;
  *(&v107[2] + 1) = 0;
  v108 = 2;
  nullsub_1(&v100);
  v50 = v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row;
  v51 = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 144);
  v109[8] = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 128);
  v109[9] = v51;
  v52 = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 80);
  v109[4] = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 64);
  v109[5] = v52;
  v53 = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 112);
  v109[6] = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 96);
  v109[7] = v53;
  v54 = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 16);
  v109[0] = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row);
  v109[1] = v54;
  v55 = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 48);
  v109[2] = *(v32 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 32);
  v109[3] = v55;
  v56 = v107[0];
  v57 = v107[2];
  *(v50 + 128) = v107[1];
  *(v50 + 144) = v57;
  v58 = v105;
  v59 = v106;
  *(v50 + 64) = v104;
  *(v50 + 80) = v58;
  v110 = *(v50 + 160);
  *(v50 + 160) = v108;
  *(v50 + 96) = v59;
  *(v50 + 112) = v56;
  v60 = v101;
  *v50 = v100;
  *(v50 + 16) = v60;
  v61 = v103;
  *(v50 + 32) = v102;
  *(v50 + 48) = v61;

  v62 = v38;
  sub_20B520158(v109, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v65 = v94;
    v66 = v77;
    goto LABEL_17;
  }

  v64 = Strong;
  v65 = v94;
  v66 = v77;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

    swift_unknownObjectRelease();
LABEL_17:
    (*(v45 + 8))(v93, v48);
    (*(v81 + 8))(v92, v82);
    (*(v65 + 8))(v91, v66);
    v31 = v76;
    return sub_20B520158(v31, &qword_27C76A410);
  }

  v67 = sub_20B61DC98(v95, Strong);
  if (!v68)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    v45 = v90;
    goto LABEL_17;
  }

  v86 = v67;
  v87 = v69;
  v88 = v68;
  sub_20B5E2E18();
  v70 = sub_20C13D374();
  v71 = v78;
  v72 = v79;
  *v78 = v70;
  v73 = v80;
  (*(v72 + 104))(v71, *MEMORY[0x277D85200], v80);
  v74 = sub_20C13C584();
  result = (*(v72 + 8))(v71, v73);
  if (v74)
  {
    sub_20B621354(v86, v88, v87, v95, 1, v64);

    swift_unknownObjectRelease();

    v45 = v90;
    v66 = v77;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}