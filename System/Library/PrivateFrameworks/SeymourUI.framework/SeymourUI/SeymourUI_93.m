id sub_20BFA9B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVQueueListHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVQueueListHeaderCell()
{
  result = qword_27C771380;
  if (!qword_27C771380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFA9CCC()
{
  sub_20BFA9DFC(319, &qword_281103340, type metadata accessor for ShelfCellItemInfo);
  if (v0 <= 0x3F)
  {
    sub_20BFA9DFC(319, &qword_27C771398, type metadata accessor for ButtonAction);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BFA9DFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20BFA9E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BFA9E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BFA9EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BFA9F40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BFA9FA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

uint64_t sub_20BFAA01C(unint64_t a1)
{
  v86 = sub_20C13BB84();
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v5 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v79 - v7;
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v79 - v17;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x3E)
  {
    v83 = v12;
    v85 = v1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198);
    v84 = v18;
    v20 = v19;
    v21 = swift_projectBox();
    v22 = v21[3];
    v23 = v21[4];
    v24 = v21[5];
    v79[1] = v21[2];
    v79[2] = v23;
    v25 = v20[20];
    v81 = *(v21 + v20[24]);
    v82 = *(v21 + v20[28]);
    v26 = v20[32];
    v27 = v84;
    v80 = *(v21 + v26);
    sub_20B52F9E8(v21 + v25, v84, &qword_27C770330);
    if (v22 && v24)
    {
      sub_20B52F9E8(v27, v15, &qword_27C770330);
      if ((*(v10 + 48))(v15, 1, v9) == 1)
      {
        sub_20B520158(v15, &qword_27C770330);
      }

      else
      {
        v40 = v83;
        sub_20B5F6860(v15, v83);
        if (v82 != 2)
        {
          v44 = v85;
          v45 = *&v85[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel];

          v46 = v81;

          v47 = sub_20C13C914();

          [v45 setText_];

          v48 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel];
          v49 = sub_20C13C914();

          [v48 setText_];

          v50 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel];
          v51 = sub_20C13C914();

          [v50 setText_];

          v52 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton];
          v53 = v46;
          v54 = *(v46 + 16);
          if (v54)
          {
            v86 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton];
            v88 = MEMORY[0x277D84F90];
            sub_20C13DD64();
            sub_20B51C88C(0, &qword_27C7713A0);
            v55 = (v53 + 56);
            do
            {
              v63 = *v55;
              v56 = *(v55 - 3);
              v57 = *(v55 - 2);
              v58 = *(v55 - 1);
              v55 += 32;
              v59 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v60 = swift_allocObject();
              *(v60 + 16) = v59;
              *(v60 + 24) = v56;
              *(v60 + 32) = v57;
              *(v60 + 40) = v58;
              *(v60 + 48) = v63;
              v61 = v58;
              swift_bridgeObjectRetain_n();
              v62 = v61;
              sub_20C13D624();
              sub_20C13DD34();
              sub_20C13DD74();
              sub_20C13DD84();
              sub_20C13DD44();
              --v54;
            }

            while (v54);

            sub_20B51C88C(0, &unk_27C76FED0);
            v64 = sub_20C13D554();
            v52 = v86;
          }

          else
          {

            v64 = 0;
          }

          v65 = *&v52[OBJC_IVAR____TtC9SeymourUI8TVButton_menu];
          *&v52[OBJC_IVAR____TtC9SeymourUI8TVButton_menu] = v64;

          v66 = v82 & 1;
          v67 = v83;
          v68 = v85;
          sub_20BFA95B4(v83, v82 & 1);
          v69 = *&v68[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton];
          v70 = v80;
          [v69 setUserInteractionEnabled_];
          [v52 setUserInteractionEnabled_];
          if (v70)
          {
            v71 = 32;
          }

          else
          {
            v72 = [objc_opt_self() quaternarySystemFillColor];
            v73 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
            [*&v69[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v72 forState:8];
            [*&v69[v73] setBackgroundColor:v72 forState:4];
            [*&v69[v73] setBackgroundColor:v72 forState:1];
            [*&v69[v73] setBackgroundColor:v72 forState:0];

            v71 = 48;
          }

          if (!v66)
          {
            v71 = 40;
          }

          v74 = *&v68[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout + v71];
          if (v66)
          {
            v75 = v70;
          }

          else
          {
            v75 = 1;
          }

          v76 = v74;
          sub_20BB87D08(v76);
          v77 = 48;
          if (v75)
          {
            v77 = 40;
          }

          v78 = *&v68[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout + v77];
          sub_20B8C9778(v78);
          [v68 setNeedsLayout];

          sub_20B763348(v67, type metadata accessor for ButtonAction);
          return sub_20B520158(v84, &qword_27C770330);
        }

        sub_20B763348(v40, type metadata accessor for ButtonAction);
      }
    }

    sub_20C13B444();
    v41 = sub_20C13BB74();
    v42 = sub_20C13D1D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20B517000, v41, v42, "Using ShelfItem.upNextQueueHeader on tv without providing all necessary information!", v43, 2u);
      MEMORY[0x20F2F6A40](v43, -1, -1);
    }

    (*(v3 + 8))(v8, v86);
    return sub_20B520158(v84, &qword_27C770330);
  }

  sub_20C13B534();

  v28 = v1;
  v29 = sub_20C13BB74();
  v30 = sub_20C13D1D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v87 = a1;
    v88 = v33;
    *v31 = 138543618;
    *(v31 + 4) = v28;
    *v32 = v28;
    *(v31 + 12) = 2082;
    v34 = sub_20B5F66D0();
    v35 = v28;
    v36 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v34);
    v38 = sub_20B51E694(v36, v37, &v88);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_20B517000, v29, v30, "Attempted to configure %{public}@ with item: %{public}s", v31, 0x16u);
    sub_20B520158(v32, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v33, -1, -1);
    MEMORY[0x20F2F6A40](v31, -1, -1);
  }

  return (*(v3 + 8))(v5, v86);
}

char *sub_20BFAA98C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v5 = &v0[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = [v7 secondaryLabelColor];
  *v5 = xmmword_20C1874F0;
  *(v5 + 1) = xmmword_20C187500;
  *(v5 + 4) = v6;
  *(v5 + 5) = v8;
  *(v5 + 6) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  v12 = objc_opt_self();
  v13 = [v12 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1280 variant:?];
  [v11 setFont_];

  v14 = [v7 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v10] = v11;
  v15 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = *MEMORY[0x277D76920];
  v18 = [v12 preferredFontForTextStyle_];
  [v16 setFont_];

  v19 = [v7 labelColor];
  [v16 setTextColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v15] = v16;
  v20 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = [v12 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v7 secondaryLabelColor];
  [v21 setTextColor_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v20] = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonAction;
  v25 = type metadata accessor for ButtonAction(0);
  (*(*(v25 - 8) + 56))(&v1[v24], 1, 1, v25);
  v26 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v27 = TVButtonTextContentView.init(title:)(45, 0xE100000000000000);
  v28 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonTextView;
  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonTextView] = v27;
  v29 = *MEMORY[0x277D76918];
  v30 = *&v27[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  v31 = [v12 smu:v29 preferredFontForTextStyle:1024 variant:?];
  [v30 setFont_];

  v32 = *&v1[v28];
  LOBYTE(v28) = _UISolariumEnabled();
  v33 = type metadata accessor for TVButton();
  v34 = sub_20BB87F6C(v32, v28, 0, objc_allocWithZone(v33), 0.0, 0.0, 0.0, 0.0);
  v35 = sub_20B9E1660(2uLL, 0);

  v36 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v37 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v35[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v36 forState:8];
  [*&v35[v37] setBackgroundColor:v36 forState:1];

  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton] = v35;
  v38 = [v12 smu:v29 preferredFontForTextStyle:1024 variant:?];
  v39 = [objc_opt_self() configurationWithFont_];

  v163 = v39;
  v40 = sub_20C13C914();
  v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v163];

  v42 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v162 = v41;
  v43 = sub_20B8C9328(v41);
  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButtonContentView] = v43;
  v44 = sub_20BB87F4C(v43, 1, 1, objc_allocWithZone(v33), 0.0, 0.0, 0.0, 0.0);
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v44[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setFocusedSizeIncrease_];
  v45 = [v7 quaternarySystemFillColor];
  [v44 setBackgroundColor_];

  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton] = v44;
  v165.receiver = v1;
  v165.super_class = type metadata accessor for TVQueueListHeaderCell();
  v46 = objc_msgSendSuper2(&v165, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v47 = [v46 contentView];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];

  [v46 setInsetsLayoutMarginsFromSafeArea_];
  v48 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide;
  v49 = *&v46[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C151490;
  v51 = *&v46[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton];
  v52 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton;
  *(v50 + 32) = v51;
  v53 = *&v46[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton];
  v54 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton;
  *(v50 + 40) = v53;
  v55 = v49;
  v56 = v51;
  v57 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v58 = sub_20C13CC54();

  [v55 setPreferredFocusEnvironments_];

  v59 = [v46 &selRef_setMaximumFractionDigits_];
  [v59 addLayoutGuide_];

  v60 = [v46 &selRef_setMaximumFractionDigits_];
  v61 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  v155 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  [v60 addSubview_];

  v62 = [v46 &selRef_setMaximumFractionDigits_];
  v164 = v52;
  [v62 addSubview_];

  v63 = [v46 &selRef_setMaximumFractionDigits_];
  [v63 addSubview_];

  v64 = [v46 &selRef_setMaximumFractionDigits_];
  v157 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel;
  [v64 addSubview_];

  v65 = v46;
  v66 = [v65 &selRef_setMaximumFractionDigits_];
  v159 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel;
  [v66 addSubview_];

  v161 = v54;
  [*&v46[v54] setContextMenuInteractionEnabled_];
  [*&v46[v54] setShowsMenuAsPrimaryAction_];
  v67 = *&v46[v54];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = &v67[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu];
  v70 = *&v67[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu];
  *v69 = sub_20BFAC21C;
  v69[1] = v68;
  v71 = v67;

  sub_20B583ECC(v70);

  v72 = *&v46[v52];
  [v72 addTarget:v65 action:sel_handleMainActionButtonTapped forControlEvents:0x2000];

  [*&v46[v61] sizeToFit];
  v73 = v65;
  v74 = [v65 &selRef_setMaximumFractionDigits_];
  v76 = *MEMORY[0x277D768C8];
  v75 = *(MEMORY[0x277D768C8] + 8);
  v77 = *(MEMORY[0x277D768C8] + 16);
  v78 = *(MEMORY[0x277D768C8] + 24);
  v79 = [v74 leadingAnchor];
  v80 = [v65 leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:v75];

  LODWORD(v82) = 1148846080;
  [v81 setPriority_];
  v158 = v81;
  v83 = [v74 trailingAnchor];
  v84 = [v65 trailingAnchor];
  v85 = [v83 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v86) = 1148846080;
  [v85 setPriority_];
  v87 = v85;
  v88 = [v74 topAnchor];
  v89 = [v65 &selRef_setLineBreakMode_];
  v90 = [v88 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v91) = 1148846080;
  [v90 setPriority_];
  v92 = [v74 bottomAnchor];
  v93 = [v73 &selRef_secondaryLabel + 5];
  v94 = [v92 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v95) = 1148846080;
  [v94 setPriority_];
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_20C14FE90;
  *(v160 + 32) = v158;
  *(v160 + 40) = v87;
  *(v160 + 48) = v90;
  *(v160 + 56) = v94;
  v96 = v90;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v98 = inited;
  v99 = [*&v46[v155] leadingAnchor];
  v100 = [v73 contentView];
  v101 = [v100 leadingAnchor];

  v102 = [v99 constraintEqualToAnchor_];
  v98[4] = v102;
  v103 = [*&v46[v155] topAnchor];
  v104 = [v73 contentView];
  v105 = [v104 topAnchor];

  v106 = [v103 &selRef:v105 alertControllerReleasedDictationButton:? + 5];
  v98[5] = v106;
  v107 = [*&v46[v155] trailingAnchor];
  v108 = [v73 contentView];
  v109 = [v108 trailingAnchor];

  v110 = [v107 &selRef:v109 alertControllerReleasedDictationButton:? + 5];
  v98[6] = v110;
  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_20C14FE90;
  v112 = [*&v46[v157] leadingAnchor];
  v113 = [*&v46[v155] leadingAnchor];
  v114 = [v112 &selRef:v113 alertControllerReleasedDictationButton:? + 5];

  *(v111 + 32) = v114;
  v115 = [*&v46[v157] topAnchor];
  v116 = [*&v46[v155] bottomAnchor];
  v117 = &v73[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout];
  v118 = [v115 constraintEqualToAnchor:v116 constant:*&v73[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout]];

  *(v111 + 40) = v118;
  v119 = [*&v73[v159] leadingAnchor];
  v120 = [*&v46[v157] trailingAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 constant:v117[1]];

  *(v111 + 48) = v121;
  v156 = v111;
  v122 = [*&v73[v159] topAnchor];
  v123 = [*&v46[v157] topAnchor];
  v124 = [v122 constraintEqualToAnchor_];

  *(v111 + 56) = v124;
  v125 = swift_initStackObject();
  *(v125 + 16) = xmmword_20C14FE90;
  v126 = [*&v46[v164] leadingAnchor];
  v127 = [v73 contentView];
  v128 = [v127 leadingAnchor];

  v129 = [v126 constraintEqualToAnchor_];
  *(v125 + 32) = v129;
  v130 = [*&v46[v164] topAnchor];
  v131 = [*&v46[v157] bottomAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:v117[2]];

  *(v125 + 40) = v132;
  v133 = [*&v46[v164] widthAnchor];
  v134 = [v133 constraintEqualToConstant_];

  *(v125 + 48) = v134;
  v135 = [*&v46[v164] bottomAnchor];
  v136 = [v73 contentView];
  v137 = [v136 bottomAnchor];

  v138 = [v135 constraintEqualToAnchor_];
  *(v125 + 56) = v138;
  v139 = swift_initStackObject();
  *(v139 + 16) = xmmword_20C14FE90;
  v140 = [*&v46[v161] trailingAnchor];
  v141 = [v73 contentView];

  v142 = [v141 trailingAnchor];
  v143 = [v140 constraintEqualToAnchor_];

  *(v139 + 32) = v143;
  v144 = [*&v46[v161] centerYAnchor];
  v145 = [*&v46[v164] centerYAnchor];
  v146 = [v144 constraintEqualToAnchor_];

  *(v139 + 40) = v146;
  v147 = [*&v46[v161] widthAnchor];
  v148 = [v147 constraintEqualToConstant_];

  *(v139 + 48) = v148;
  v149 = [*&v46[v161] heightAnchor];
  v150 = [*&v46[v161] widthAnchor];
  v151 = [v149 &selRef:v150 alertControllerReleasedDictationButton:? + 5];

  *(v139 + 56) = v151;
  v152 = objc_opt_self();
  sub_20B8D9310(v98);
  sub_20B8D9310(v125);
  sub_20B8D9310(v139);
  sub_20B8D9310(v156);
  sub_20B51C88C(0, &qword_281100500);
  v153 = sub_20C13CC54();

  [v152 activateConstraints_];

  return v73;
}

void sub_20BFABDD0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout;
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [v6 secondaryLabelColor];
  *v4 = xmmword_20C1874F0;
  *(v4 + 16) = xmmword_20C187500;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 48) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  v11 = objc_opt_self();
  v12 = [v11 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1280 variant:?];
  [v10 setFont_];

  v13 = [v6 secondaryLabelColor];
  [v10 setTextColor_];

  [v10 setTextAlignment_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v14 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = *MEMORY[0x277D76920];
  v17 = [v11 preferredFontForTextStyle_];
  [v15 setFont_];

  v18 = [v6 labelColor];
  [v15 setTextColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v19 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = [v11 preferredFontForTextStyle_];
  [v20 setFont_];

  v22 = [v6 secondaryLabelColor];
  [v20 setTextColor_];

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v19) = v20;
  v23 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonAction;
  v24 = type metadata accessor for ButtonAction(0);
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for ShelfDiffableItemIdentifierX()
{
  result = qword_27C7713A8;
  if (!qword_27C7713A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFAC298()
{
  result = sub_20C133244();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ShelfItemX();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BFAC31C()
{
  v1 = type metadata accessor for ShelfItemX();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20C133244();
  sub_20BFACA6C(&qword_27C764180, MEMORY[0x277CC9AF8]);
  sub_20C13C7C4();
  v4 = type metadata accessor for ShelfDiffableItemIdentifierX();
  sub_20B8D1410(v0 + *(v4 + 20), v3);
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v13, v5);

  v9 = sub_20C135214();
  sub_20BFACA6C(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  v10 = sub_20C133954();
  sub_20BFACA6C(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  (*(*(v10 - 8) + 8))(v3 + v8, v10);
  return sub_20C13E1B4();
}

uint64_t sub_20BFAC55C(__int128 *a1, uint64_t a2)
{
  v5 = type metadata accessor for ShelfItemX();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C133244();
  sub_20BFACA6C(&qword_27C764180, MEMORY[0x277CC9AF8]);
  sub_20C13C7C4();
  sub_20B8D1410(v2 + *(a2 + 20), v7);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(a1, v8);

  v12 = sub_20C135214();
  sub_20BFACA6C(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v12 - 8) + 8))(v7 + v10, v12);
  v13 = sub_20C133954();
  sub_20BFACA6C(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  return (*(*(v13 - 8) + 8))(v7 + v11, v13);
}

uint64_t sub_20BFAC780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemX();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20C133244();
  sub_20BFACA6C(&qword_27C764180, MEMORY[0x277CC9AF8]);
  sub_20C13C7C4();
  sub_20B8D1410(v2 + *(a2 + 20), v6);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v15, v7);

  v11 = sub_20C135214();
  sub_20BFACA6C(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v11 - 8) + 8))(v6 + v9, v11);
  v12 = sub_20C133954();
  sub_20BFACA6C(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  (*(*(v12 - 8) + 8))(v6 + v10, v12);
  return sub_20C13E1B4();
}

uint64_t sub_20BFAC9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20C1331D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_20B8D0E48(a1 + v6, a2 + v6);
}

uint64_t sub_20BFACA6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BFACAC8()
{
  result = qword_27C7713C0;
  if (!qword_27C7713C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7713C0);
  }

  return result;
}

id NotificationSettingsViewController.__allocating_init(dependencies:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_20BFB2120();

  return v2;
}

id NotificationSettingsViewController.init(dependencies:)()
{
  v0 = sub_20BFB2120();

  return v0;
}

id NotificationSettingsViewController.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  if ([v1 tokenIsValid_])
  {
    [v1 cancelToken_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for NotificationSettingsViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_20BFACE60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v106 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v112 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v111 = &v106 - v6;
  v7 = type metadata accessor for NotificationSettingsViewController();
  v116.receiver = v0;
  v116.super_class = v7;
  objc_msgSendSuper2(&v116, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  v10 = objc_opt_self();
  v11 = [v10 systemBackgroundColor];
  [v9 setBackgroundColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v14 = sub_20C13C914();

  [v1 setTitle_];

  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView];
  [v15 setDataSource_];
  [v15 setEstimatedRowHeight_];
  [v15 setRowHeight_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v114 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView];
  [v114 setHidden_];
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView];
  v17 = [v10 systemBackgroundColor];
  [v16 setBackgroundColor_];

  v113 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView];
  [v16 addSubview_];
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = result;
  v110 = v5;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C1530F0;
  v22 = [v15 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = result;
  v24 = [result topAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v21 + 32) = v25;
  v26 = [v15 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v27 = result;
  v108 = v4;
  v28 = [result leadingAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v21 + 40) = v29;
  v30 = [v15 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = result;
  v32 = [result trailingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v21 + 48) = v33;
  v34 = [v15 widthAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = result;
  v36 = [result widthAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v21 + 56) = v37;
  v109 = v15;
  v38 = [v15 bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v39 = result;
  v40 = [result bottomAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v21 + 64) = v41;
  v42 = [v16 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v43 = result;
  v44 = [result topAnchor];

  v45 = [v42 &selRef:v44 alertControllerReleasedDictationButton:? + 5];
  *(v21 + 72) = v45;
  v46 = [v16 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = result;
  v48 = [result leadingAnchor];

  v49 = [v46 &selRef:v48 alertControllerReleasedDictationButton:? + 5];
  *(v21 + 80) = v49;
  v50 = [v16 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v51 = result;
  v52 = [result trailingAnchor];

  v53 = [v50 &selRef:v52 alertControllerReleasedDictationButton:? + 5];
  *(v21 + 88) = v53;
  v54 = [v16 &selRef_secondaryLabel + 5];
  result = [v1 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v55 = result;
  v56 = v16;
  v57 = [result &selRef_secondaryLabel + 5];

  v58 = [v54 &selRef:v57 alertControllerReleasedDictationButton:? + 5];
  *(v21 + 96) = v58;
  v59 = v113;
  v60 = [v113 centerXAnchor];
  v61 = [v56 centerXAnchor];
  v62 = [v60 &selRef:v61 alertControllerReleasedDictationButton:? + 5];

  *(v21 + 104) = v62;
  v63 = [v59 centerYAnchor];
  v64 = [v56 centerYAnchor];
  v65 = [v63 &selRef:v64 alertControllerReleasedDictationButton:? + 5];

  *(v21 + 112) = v65;
  v66 = v114;
  v67 = [v114 centerXAnchor];
  result = [v1 view];
  v107 = v56;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v68 = result;
  v69 = [result centerXAnchor];

  v70 = [v67 &selRef:v69 alertControllerReleasedDictationButton:? + 5];
  *(v21 + 120) = v70;
  v71 = [v66 centerYAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v72 = result;
  v73 = [result centerYAnchor];

  v74 = [v71 &selRef:v73 alertControllerReleasedDictationButton:? + 5];
  *(v21 + 128) = v74;
  v75 = [v66 heightAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v76 = result;
  v77 = [result heightAnchor];

  v78 = [v75 constraintLessThanOrEqualToAnchor_];
  *(v21 + 136) = v78;
  v79 = [v66 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v80 = result;
  v81 = [result safeAreaLayoutGuide];

  v82 = [v81 leadingAnchor];
  v83 = [v79 &selRef:v82 alertControllerReleasedDictationButton:? + 5];

  *(v21 + 144) = v83;
  v84 = [v66 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v85 = result;
  v86 = objc_opt_self();
  v87 = [v85 safeAreaLayoutGuide];

  v88 = [v87 trailingAnchor];
  v89 = [v84 &selRef:v88 alertControllerReleasedDictationButton:? + 5];

  *(v21 + 152) = v89;
  sub_20B51C88C(0, &qword_281100500);
  v90 = sub_20C13CC54();

  [v86 activateConstraints_];

  sub_20B51C88C(0, &qword_27C76C770);
  v91 = swift_getObjCClassFromMetadata();
  v92 = sub_20C13C914();
  v93 = v109;
  [v109 registerClass:v91 forCellReuseIdentifier:v92];

  type metadata accessor for RemoteNotificationSettingCell();
  v94 = swift_getObjCClassFromMetadata();
  v95 = sub_20C13C914();
  [v93 registerClass:v94 forCellReuseIdentifier:v95];

  v96 = [objc_opt_self() defaultCenter];
  [v96 addObserver:v1 selector:sel_updateSettings name:*MEMORY[0x277D76758] object:0];

  sub_20BFAF468();
  sub_20BFAF2B4();
  v97 = v111;
  v98 = v112;
  v99 = v110;
  (*(v112 + 16))(v111, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController__fitnessPlusNotificationSettingsEnabled], v110);
  sub_20C13A344();
  (*(v98 + 8))(v97, v99);
  if (v115 != 1)
  {
    return [v107 removeFromSuperview];
  }

  [v113 startAnimating];
  v100 = sub_20C13CDF4();
  v101 = v108;
  (*(*(v100 - 8) + 56))(v108, 1, 1, v100);
  sub_20C13CDA4();
  v102 = v1;
  v103 = sub_20C13CD94();
  v104 = swift_allocObject();
  v105 = MEMORY[0x277D85700];
  v104[2] = v103;
  v104[3] = v105;
  v104[4] = v102;
  sub_20B6383D0(0, 0, v101, &unk_20C187700, v104);
}

uint64_t sub_20BFADCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v4[3] = swift_task_alloc();
  v4[4] = sub_20C13CDA4();
  v4[5] = sub_20C13CD94();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_20BFADDE0;

  return sub_20BFAE20C();
}

uint64_t sub_20BFADDE0()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFADF1C, v1, v0);
}

uint64_t sub_20BFADF1C()
{
  v1 = *(v0 + 24);

  v2 = sub_20C13CDF4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_20C13CD94();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v3;

  sub_20B6380FC(0, 0, v1, &unk_20C1878D8, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20BFAE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFAE0F8, v6, v5);
}

uint64_t sub_20BFAE0F8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView) stopAnimating];
    [*&v2[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView] removeFromSuperview];
    sub_20BFAF880();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20BFAE20C()
{
  v1[10] = v0;
  v2 = sub_20C13BB84();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771508);
  v1[17] = swift_task_alloc();
  v4 = sub_20C135534();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_20C13CDA4();
  v1[22] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_20BFAE408, v6, v5);
}

uint64_t sub_20BFAE408()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentAvailabilityClient), *(*(v0 + 80) + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentAvailabilityClient + 24));
  sub_20C139D44();

  return MEMORY[0x2822009F8](sub_20BFAE4A4, 0, 0);
}

uint64_t sub_20BFAE4A4()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = "SeymourUI/NotificationSettingsViewController.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 148;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_20BFAE5B0;
  v4 = v0[17];
  v5 = v0[18];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8E0850, v2, v5);
}

uint64_t sub_20BFAE5B0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BFAE9D4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v8 = v2[14];

    (*(v7 + 8))(v6, v8);
    v4 = v2[23];
    v5 = v2[24];
    v3 = sub_20BFAE728;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20BFAE728()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = 1;
  (*(v4 + 56))(v5, 0, 1, v3);
  (*(v4 + 32))(v1, v5, v3);
  (*(v4 + 104))(v2, *MEMORY[0x277D51A28], v3);
  sub_20BFB3550(&qword_281103BB0, MEMORY[0x277D51A40]);
  sub_20C13CC34();
  sub_20C13CC34();
  if (v0[5] != v0[7] || v0[6] != v0[8])
  {
    v6 = sub_20C13DFF4();
  }

  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = *(v8 + 8);
  v0[27] = v10;
  v0[28] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v9);

  if (v6)
  {
    v11 = (v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_accountProvider);
    v13 = v11[3];
    v12 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v13);
    v14 = swift_task_alloc();
    v0[29] = v14;
    *v14 = v0;
    v14[1] = sub_20BFAEB44;

    return MEMORY[0x2821AFC58](v13, v12);
  }

  else
  {
    v10(v0[21], v0[18]);

    v15 = v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
    *v15 = 0;
    *(v15 + 8) = 2;

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_20BFAE9D4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[23];
  v2 = v0[24];

  return MEMORY[0x2822009F8](sub_20BFAEA48, v1, v2);
}

uint64_t sub_20BFAEA48()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_20B520158(v3, &unk_27C771508);
  v4 = v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v4 = 0;
  *(v4 + 8) = 2;

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BFAEB44(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {

    v4 = *(v3 + 184);
    v5 = *(v3 + 192);
    v6 = sub_20BFAEF64;
  }

  else
  {
    v4 = *(v3 + 184);
    v5 = *(v3 + 192);
    v6 = sub_20BFAEC6C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20BFAEC6C()
{
  v1 = (v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notificationSettingsProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_20BFAED34;
  v5 = v0[30];

  return MEMORY[0x2821AFD28](v5, v2, v3);
}

uint64_t sub_20BFAED34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_20BFAF03C;
  }

  else
  {
    v4[33] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_20BFAEE5C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20BFAEE5C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[10];

  v7 = v6 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v7 = v1;
  *(v7 + 8) = 1;

  sub_20BC416CC();

  v3(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BFAEF64()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[10];

  v1(v2, v3);
  v5 = v4 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v5 = 0;
  *(v5 + 8) = 2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BFAF03C()
{
  v31 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);

  v3 = sub_20BC41324();
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v4 = v3;
  *(v4 + 8) = 0;

  sub_20C13B534();
  v5 = v1;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 240);
    v29 = *(v0 + 216);
    v27 = *(v0 + 144);
    v28 = *(v0 + 168);
    v10 = *(v0 + 96);
    v25 = *(v0 + 88);
    v26 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v15 = sub_20B51E694(v13, v14, &v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v6, v7, "Failed to fetch notification settings %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    (*(v10 + 8))(v26, v25);
    v29(v28, v27);
  }

  else
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 216);
    v18 = *(v0 + 168);
    v19 = *(v0 + 144);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);

    (*(v21 + 8))(v20, v22);
    v17(v18, v19);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20BFAF2B4()
{
  swift_getObjectType();
  sub_20C13A9D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C139024();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BFB3550(&qword_27C76A9B0, MEMORY[0x277D54248]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BFAF468()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  result = [v6 tokenIsValid_];
  if ((result & 1) == 0)
  {
    v17 = v3;
    sub_20B51C88C(0, &qword_281100530);
    v9 = sub_20C13D374();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_20BFB3598;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_167;
    v11 = _Block_copy(aBlock);

    v12 = [v6 registerNotification:sub_20C13CA14() + 32 queue:v9 callback:v11];

    _Block_release(v11);

    result = [v6 tokenIsValid_];
    if (result)
    {
      *(v1 + v7) = v12;
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
        _os_log_impl(&dword_20B517000, v13, v14, "Error registering for notifications setting changes", v15, 2u);
        MEMORY[0x20F2F6A40](v15, -1, -1);
      }

      return (*(v17 + 8))(v5, v2);
    }
  }

  return result;
}

void sub_20BFAF710(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_20BFAF880();
  }
}

id sub_20BFAF880()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v1 = sub_20C13AC74();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8))
  {
    v4 = 1;
    v5 = *v2;
  }

  else
  {
    v6 = sub_20C138104();
    v4 = v6 != sub_20C138104();
    v3 = *(v2 + 8);
    v5 = *v2;
    if (!*(v2 + 8))
    {
LABEL_5:
      v7 = v5;
      goto LABEL_7;
    }
  }

  if (v3 == 1)
  {
    goto LABEL_5;
  }

  v7 = sub_20B6B4C84(MEMORY[0x277D84F90]);
LABEL_7:
  v8 = *(v7 + 16);

  v9 = *(sub_20B756D68(v1, (v8 != 0) & v4, *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform)) + 2);

  if (v9)
  {
    [*(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView) setHidden_];
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView);
    [v10 setHidden_];

    return [v10 reloadData];
  }

  else
  {

    return sub_20BFAFA58();
  }
}

id sub_20BFAFA58()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_networkEvaluator), *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_networkEvaluator + 24));
  sub_20C13A884();
  v2 = sub_20C1350A4();
  v4 = v3;
  if (v2 == sub_20C1350A4() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_20C13DFF4();

    if ((v7 & 1) == 0)
    {
      v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView);
      v9 = (v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v10 = sub_20C13C914();

      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_20C138D34();
      v11 = sub_20C13C914();

      v12 = sub_20C13C914();
      v13 = [objc_opt_self() systemImageNamed_];

      [v8 smu:1 updateWithType:v10 text:v11 secondaryText:v13 image:0 buttonTitle:0 buttonPrimaryAction:?];
      goto LABEL_9;
    }
  }

  sub_20B51C88C(0, &qword_27C7713A0);
  v14 = sub_20C13D624();
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder + 24));
  sub_20C138D34();
  v15 = sub_20C13C914();

  sub_20B7B2BBC();
  v10 = sub_20C13C914();

  v16 = sub_20C13C914();
  v11 = [objc_opt_self() systemImageNamed_];

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer + 24));
  sub_20C138D34();
  v13 = sub_20C13C914();

  [v8 smu:1 updateWithType:v15 text:v10 secondaryText:v11 image:v13 buttonTitle:v14 buttonPrimaryAction:?];

LABEL_9:
  [v8 setHidden_];
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView);

  return [v17 setHidden_];
}

uint64_t sub_20BFAFE7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13C954();
  sub_20C132C04();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20B520158(v2, &unk_27C7617F0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_20C132B64();
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BFB3550(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey);
  v10 = sub_20C13C744();

  [v8 openURL:v9 options:v10 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BFB00E4(void *a1)
{
  v2 = v1;
  v4 = sub_20B756E54([a1 tag]);
  if (v4 != 7)
  {
    v5 = v4;
    v6 = [a1 isOn];
    v7 = sub_20B756BBC(v5);
    v9 = v8;
    sub_20B756AB8(v5);
    v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v11 = sub_20C13C914();
    v12 = [v10 initWithSuiteName_];

    if (v12)
    {
      v13 = v12;
      v14 = sub_20C13C914();
      [v13 setBool:v6 forKey:v14];
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
    sub_20C13AC74();
    v15 = sub_20C13A2C4();
    v17 = v16;
    if (v15 == sub_20C13A2C4() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_20C13DFF4();

      if ((v20 & 1) == 0)
      {

LABEL_12:
        v30 = objc_opt_self();
        [v30 postNotificationName_];
      }
    }

    v21 = objc_allocWithZone(SMUNPSDomainAccessor);
    v22 = sub_20C13C914();
    v23 = [v21 initWithDomain_];

    v24 = sub_20C13C914();
    [v23 setBool:v6 forKey:v24];

    v25 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_syncManager);
    v26 = sub_20C13C914();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = v7;
    v28 = inited + 32;
    *(inited + 40) = v9;
    sub_20B527580(inited);
    swift_setDeallocating();
    sub_20B5D9804(v28);
    v29 = sub_20C13CF64();

    [v25 synchronizeNanoDomain:v26 keys:v29];

    goto LABEL_12;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BFB04E4(unint64_t a1)
{
  v3 = sub_20C136704();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_20C1356C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  if (a1 <= 1)
  {
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
    {
      v16 = sub_20B6B4C84(MEMORY[0x277D84F90]);

      if (a1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);

      if (a1)
      {
LABEL_5:
        v17 = sub_20C135584();
        goto LABEL_8;
      }
    }

    v17 = sub_20C1355A4();
LABEL_8:
    if (*(v16 + 16))
    {
      v27 = v3;
      v19 = sub_20B65AA60(v17, v18);
      v21 = v20;

      if (v21)
      {
        (*(v10 + 16))(v12, *(v16 + 56) + *(v10 + 72) * v19, v9);

        (*(v10 + 32))(v15, v12, v9);
        sub_20C1356B4();
        v22 = v27;
        v23 = v28;
        (*(v28 + 104))(v5, *MEMORY[0x277D52C40], v27);
        v24 = sub_20C1366F4();
        v25 = *(v23 + 8);
        v25(v5, v22);
        v25(v8, v22);
        (*(v10 + 8))(v15, v9);
        return v24 & 1;
      }
    }

    else
    {
    }

    v24 = 1;
    return v24 & 1;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BFB0844(unsigned __int8 a1)
{
  sub_20B756AB8(a1);
  sub_20B756BBC(a1);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  sub_20C13AC74();
  v3 = sub_20C13A2C4();
  v5 = v4;
  if (v3 == sub_20C13A2C4() && v5 == v6)
  {

    goto LABEL_10;
  }

  v8 = sub_20C13DFF4();

  if (v8)
  {
LABEL_10:
    v15 = objc_allocWithZone(SMUNPSDomainAccessor);
    v16 = sub_20C13C914();

    v17 = [v15 initWithDomain_];

    v18 = sub_20C13C914();

    v19 = [v17 objectForKey_];

    sub_20C13DA64();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_20C13C914();

  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {

    v23 = 0u;
    v24 = 0u;
LABEL_18:
    sub_20B520158(&v23, &unk_27C768A00);
    return 0;
  }

  v12 = v11;
  v13 = sub_20C13C914();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {

    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_18;
  }

LABEL_11:
  sub_20B51C88C(0, &qword_27C765490);
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BFB0B24(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1356C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v11 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v12 = sub_20C1356A4();
  v14 = v13;
  (*(v7 + 16))(v9, a1, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v11;
  sub_20B91EEC8(v9, v12, v14, isUniquelyReferenced_nonNull_native);

  v16 = v24;
  sub_20BC416CC();
  if (!*(v10 + 8))
  {
    *v10 = v16;
    *(v10 + 8) = 0;
  }

  if (*(v10 + 8) == 1)
  {
    *v10 = v16;
    *(v10 + 8) = 1;
  }

  sub_20C13B534();
  v18 = sub_20C13BB74();
  v19 = sub_20C13D1E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20B517000, v18, v19, "Unexpected fitness plus setting update", v20, 2u);
    MEMORY[0x20F2F6A40](v20, -1, -1);
  }

  return (*(v22 + 8))(v5, v23);
}

id NotificationSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void *NotificationSettingsViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BDF4();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_20C133204();
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8);
  v47 = v6;
  v48 = v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  if (v12 > 1)
  {
    v13 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v13 + 16);

  v15 = sub_20C133234();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v16 = sub_20C13AC74();
  result = sub_20B756D68(v16, v14 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v15 >= result[2])
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = *(result + v15 + 32);

  v19 = sub_20C13C914();

  v20 = sub_20C1331B4();
  v21 = [a1 dequeueReusableCellWithIdentifier:v19 forIndexPath:v20];

  if (v18 == 5)
  {
    type metadata accessor for RemoteNotificationSettingCell();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v21;
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus + 24));
    v24 = sub_20C138964();
    sub_20B7561F4(v10, v24 & 1, 5);
    v25 = sub_20BFB04E4(v10);
    if (v22)
    {
      v26 = v25;
      LODWORD(v48) = *(v48 + 8);
      *&v22[OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_delegate + 8] = &off_2822FC5E0;
      swift_unknownObjectWeakAssign();
      v27 = &v22[OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex];
      *v27 = v10;
      v27[8] = 0;
      v28 = v22;
      v29 = v47;
      sub_20C13BDA4();

      sub_20C13BDB4();
      v30 = v50;
      v52 = v50;
      v53 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      v32 = v49;
      (*(v49 + 16))(boxed_opaque_existential_1, v29, v30);
      MEMORY[0x20F2F49E0](v51);
      [v28 setSelectionStyle_];
      v33 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v33 setOn:v26 & 1 animated:0];
      v34 = v33;
      [v34 addTarget:v28 action:sel_switchTappedWithCellSwitch_ forControlEvents:4096];
      [v28 setAccessoryView_];
      v35 = v48 != 0;
      [v28 setUserInteractionEnabled_];
      [v34 setEnabled_];

      (*(v32 + 8))(v29, v30);
    }

    else
    {
    }
  }

  else
  {
    sub_20C13BDA4();
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus + 24));
    v36 = sub_20C138964();
    sub_20B7561F4(v10, v36 & 1, v18);
    sub_20C13BDB4();
    v37 = v50;
    v52 = v50;
    v53 = MEMORY[0x277D74C30];
    v38 = __swift_allocate_boxed_opaque_existential_1(v51);
    v39 = v49;
    (*(v49 + 16))(v38, v9, v37);
    MEMORY[0x20F2F49E0](v51);
    [v21 setSelectionStyle_];
    v40 = sub_20BFB0844(v18);
    if (v40)
    {
      v41 = v40;
      v42 = [v40 BOOLValue];
    }

    else
    {
      v42 = 1;
    }

    v43 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v43 setTag_];
    [v43 setOn:v42 animated:0];
    v44 = v43;
    [v44 addTarget:v2 action:sel_switchTappedWithCellSwitch_ forControlEvents:4096];
    [v21 setAccessoryView_];
    if (v18 == 6)
    {
      v45 = *(v48 + 8);

      if (v45)
      {
        [v21 setUserInteractionEnabled_];
        [v44 setEnabled_];
      }

      else
      {
        [v21 setUserInteractionEnabled_];
        [v44 setEnabled_];
      }

      (*(v39 + 8))(v9, v37);
    }

    else
    {

      (*(v39 + 8))(v9, v37);
    }
  }

  return v21;
}

Swift::String_optional __swiftcall NotificationSettingsViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v2 = sub_20BFB2F2C(titleForHeaderInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall NotificationSettingsViewController.tableView(_:titleForFooterInSection:)(UITableView *_, Swift::Int titleForFooterInSection)
{
  v2 = sub_20BFB3038(titleForFooterInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

id sub_20BFB1704(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  v9 = a1;
  a5(a4);
  v11 = v10;

  if (v11)
  {
    v12 = sub_20C13C914();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_20BFB179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_20C13BB84();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  sub_20C13CDA4();
  v7[14] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v7[15] = v10;
  v7[16] = v9;

  return MEMORY[0x2822009F8](sub_20BFB18A0, v10, v9);
}

uint64_t sub_20BFB18A0()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_accountProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_20BFB1964;

  return MEMORY[0x2821AFC58](v3, v2);
}

uint64_t sub_20BFB1964(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_20BFB1A8C;
  }

  else
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_20BFB1BA0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20BFB1A8C()
{

  sub_20C13B534();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1D4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "Unable to fetch account for settings update", v7, 2u);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BFB1BA0()
{
  v1 = v0[7];
  v2 = (v0[6] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notificationSettingsProvider);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771518);
  v5 = sub_20C1356C4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = xmmword_20C14F980;
  (*(v6 + 16))(v8 + v7, v1, v5);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_20BFB1D2C;
  v10 = v0[18];

  return MEMORY[0x2821AFD30](v8, v10, v3, v4);
}

uint64_t sub_20BFB1D2C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_20BFB1ED4;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_20BFB1E48;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BFB1E48()
{
  v1 = v0[18];
  v2 = v0[7];

  sub_20BFB0B24(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BFB1ED4()
{
  v24 = v0;
  v1 = *(v0 + 168);

  sub_20C13B534();

  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v21 = *(v0 + 80);
    v22 = *(v0 + 96);
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20B51E694(v9, v8, &v23);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v14 = sub_20B51E694(v12, v13, &v23);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_20B517000, v3, v4, "Unable to settings for: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v7 + 8))(v22, v21);
  }

  else
  {
    v15 = *(v0 + 168);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

id sub_20BFB2120()
{
  v1 = v0;
  v2 = sub_20C13A814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView;
  v7 = [objc_opt_self() smu_contentUnavailableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v6] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView;
  v11 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  *&v1[v12] = [objc_opt_self() invalidToken];
  (*(v3 + 104))(v5, *MEMORY[0x277D4F070], v2);
  LOBYTE(v22[0]) = 1;
  sub_20C13A384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentAvailabilityClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_eventHub] = v22[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C08);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_networkEvaluator]);
  v13 = &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult];
  *v13 = 0;
  v13[8] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CC0);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notificationSettingsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v14 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer;
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_subscriptionToken] = sub_20C13A914();
  v15 = [objc_allocWithZone(SMUNPSManager) init];
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_syncManager] = v15;
  sub_20C133AA4();
  v16 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform;
  v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform] = v22[0];
  v17 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D70);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus]);
  v18 = &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder];
  sub_20B51CC64(&v1[v14], &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder]);
  v18[40] = v1[v16];
  v19 = type metadata accessor for NotificationSettingsViewController();
  v21.receiver = v1;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t type metadata accessor for NotificationSettingsViewController()
{
  result = qword_27C771488;
  if (!qword_27C771488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFB2650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BFADCF8(a1, v4, v5, v6);
}

uint64_t sub_20BFB2704(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v32 - v4;
  v35 = sub_20C1377D4();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C1356C4();
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  if (a2 == 1)
  {
    v17 = sub_20C135584();
LABEL_5:
    v19 = v18;
    v32 = v17;
    (*(v9 + 16))(v11, v36, v8);
    (*(v5 + 104))(v7, *MEMORY[0x277D53690], v35);

    v20 = v16;
    v33 = v16;
    sub_20C135694();
    v21 = sub_20C13CDF4();
    v22 = v39;
    (*(*(v21 - 8) + 56))(v39, 1, 1, v21);
    v23 = v34;
    v24 = v37;
    (*(v12 + 16))(v34, v20, v37);
    sub_20C13CDA4();
    v25 = v38;
    v26 = sub_20C13CD94();
    v27 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 2) = v26;
    *(v28 + 3) = v29;
    *(v28 + 4) = v25;
    (*(v12 + 32))(&v28[v27], v23, v24);
    v30 = &v28[(v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v30 = v32;
    v30[1] = v19;
    sub_20B6383D0(0, 0, v22, &unk_20C1878B8, v28);

    return (*(v12 + 8))(v33, v24);
  }

  if (!a2)
  {
    v17 = sub_20C1355A4();
    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

void sub_20BFB2B50()
{
  v1 = sub_20C13A814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView;
  v6 = [objc_opt_self() smu_contentUnavailableView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView;
  v10 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  *(v0 + v11) = [objc_opt_self() invalidToken];
  (*(v2 + 104))(v4, *MEMORY[0x277D4F070], v1);
  v12[15] = 1;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

uint64_t _s9SeymourUI34NotificationSettingsViewControllerC16numberOfSections2inSiSo07UITableE0C_tF_0()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v2 = sub_20C13AC74();
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v3 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v4 = *(v3 + 16);

  v5 = *(sub_20B756D68(v2, v4 != 0, *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform)) + 2);

  return v5;
}

uint64_t sub_20BFB2E2C(unint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v4 = sub_20C13AC74();
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v5 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v6 = *(v5 + 16);

  result = sub_20B756D68(v4, v6 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = *(result + a1 + 32);

  if (v8 == 5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_20BFB2F2C(unint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v4 = sub_20C13AC74();
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v5 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v6 = *(v5 + 16);

  result = sub_20B756D68(v4, v6 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result[2] <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = *(result + a1 + 32);

  return sub_20B755FE0(v4, v8);
}

void *sub_20BFB3038(unint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v5 = sub_20C13AC74();
  v6 = v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v7 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v8 = *(v7 + 16);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v9 = sub_20C13AC74();
  result = sub_20B756D68(v9, v8 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result[2] <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = *(result + a1 + 32);

  v12 = *(v6 + 8) == 0;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus + 24));
  v13 = sub_20C138964() & 1;

  return sub_20B756618(v5, v12, v13, v11);
}

void sub_20BFB31BC()
{
  sub_20B52432C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI34NotificationSettingsViewControllerC011FitnessPlusD6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_20BFB3318(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1356C4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20B52AC14;

  return sub_20BFB179C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_20BFB3454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BFAE060(a1, v4, v5, v6);
}

uint64_t sub_20BFB3550(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20BFB3648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionBlurView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BFB36B0(uint64_t result)
{
  if (result > 3u)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        sub_20C1380F4();
      }

      else
      {
        sub_20C1380F4();
        v1 = objc_opt_self();
        v2 = [v1 mainScreen];
        [v2 nativeBounds];
        v4 = v3;
        v6 = v5;
        v8 = v7;
        v10 = v9;

        v23.origin.x = v4;
        v23.origin.y = v6;
        v23.size.width = v8;
        v23.size.height = v10;
        CGRectGetWidth(v23);
        v11 = [v1 mainScreen];
        [v11 nativeScale];
      }

      sub_20C138104();
      return sub_20C138104();
    }
  }

  else if (result - 2 >= 2)
  {
    if (result)
    {
      sub_20C1380F4();
      v12 = objc_opt_self();
      v13 = [v12 mainScreen];
      [v13 nativeBounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v24.origin.x = v15;
      v24.origin.y = v17;
      v24.size.width = v19;
      v24.size.height = v21;
      CGRectGetWidth(v24);
      v22 = [v12 mainScreen];
      [v22 nativeScale];

      sub_20C138104();
      return sub_20C138104();
    }
  }

  else
  {
    sub_20C1380F4();
    sub_20C138104();
    return sub_20C138104();
  }

  return result;
}

char *sub_20BFB39E0(char a1, char a2)
{
  v3 = v2;
  v6 = sub_20C13C0B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48[-1] - v11;
  v13 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v3[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_guideConstraints] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets] = a1;
  if (_UISolariumEnabled())
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_20C13C0A4();
    (*(v7 + 16))(v9, v12, v6);
    v48[3] = sub_20C13C0D4();
    v48[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v48);
    sub_20C13C0E4();
    sub_20C13D564();
    (*(v7 + 8))(v12, v6);
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [v14 setClipsToBounds_];
  }

  else
  {
    v15 = [objc_opt_self() smu:10.0 effectWithBlurRadius:?];
    v16 = [objc_opt_self() sessionColorDark];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C151490;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    v18 = objc_allocWithZone(MEMORY[0x277D75D68]);
    sub_20B51C88C(0, &qword_27C7663F0);
    v19 = sub_20C13CC54();

    v20 = [v18 initWithBackgroundEffects_];

    v14 = v20;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [v14 setClipsToBounds_];
    v21 = sub_20C13C914();
    [v14 setSmu:v21 groupName:?];
  }

  *&v3[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView] = v14;
  sub_20C1380F4();
  v22 = objc_opt_self();
  v23 = [v22 mainScreen];
  [v23 nativeBounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v50.origin.x = v25;
  v50.origin.y = v27;
  v50.size.width = v29;
  v50.size.height = v31;
  Width = CGRectGetWidth(v50);
  v33 = [v22 mainScreen];
  [v33 nativeScale];
  v35 = v34;

  if (a2)
  {
    v36 = sub_20C138104();
    v37 = sub_20C138104();
    v38 = 30.0;
    if (v36 != v37)
    {
      v38 = 16.0;
      if (Width / v35 > 375.0)
      {
        v38 = 22.5;
        if (Width / v35 < 834.0)
        {
          v38 = 18.0;
        }
      }
    }
  }

  else
  {
    v39 = sub_20C138104();
    if (v39 == sub_20C138104())
    {
      v38 = 40.0;
    }

    else
    {
      v38 = 30.0;
      if (Width / v35 <= 375.0)
      {
        v38 = 20.0;
      }
    }
  }

  *&v3[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_cornerRadius] = v38;
  v40 = type metadata accessor for SessionElementBackdropView();
  v49.receiver = v3;
  v49.super_class = v40;
  v41 = objc_msgSendSuper2(&v49, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v42 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView;
  v43 = *&v41[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView];
  v44 = v41;
  [v44 addSubview_];
  [v44 addLayoutGuide_];
  v45 = [*&v41[v42] layer];
  [v45 setCornerCurve_];

  sub_20BFB3FE4();
  sub_20BFB4340();

  return v44;
}

void sub_20BFB3FE4()
{
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView];
  v5 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v3 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v3 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = 1148846080;
  [v15 setPriority_];
  v17 = v15;
  v18 = [v3 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = [v3 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v12;
  *(inited + 40) = v17;
  *(inited + 48) = v20;
  *(inited + 56) = v24;

  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F580;
  *(v28 + 32) = v2;
  v29 = v2;
  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500);
  v30 = sub_20C13CC54();

  [v27 activateConstraints_];
}

void sub_20BFB4340()
{
  v21 = objc_opt_self();
  v1 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_guideConstraints;
  sub_20B51C88C(0, &qword_281100500);

  v2 = sub_20C13CC54();

  [v21 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide];
  v5 = [v4 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets;
  sub_20BFB36B0(v0[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets]);
  v9 = [v5 constraintEqualToAnchor:v6 constant:v8];

  *(v3 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v0 trailingAnchor];
  sub_20BFB36B0(v0[v7]);
  v13 = [v10 constraintEqualToAnchor:v11 constant:-v12];

  *(v3 + 40) = v13;
  v14 = [v4 topAnchor];
  v15 = [v0 topAnchor];
  sub_20BFB36B0(v0[v7]);
  v16 = [v14 constraintEqualToAnchor:v15 constant:?];

  *(v3 + 48) = v16;
  v17 = [v4 bottomAnchor];
  v18 = [v0 bottomAnchor];
  sub_20BFB36B0(v0[v7]);
  v20 = [v17 constraintEqualToAnchor:v18 constant:-v19];

  *(v3 + 56) = v20;
  *&v0[v1] = v3;

  v22 = sub_20C13CC54();

  [v21 activateConstraints_];
}

id sub_20BFB46F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionElementBackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BFB47BC()
{
  result = qword_27C771550;
  if (!qword_27C771550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771550);
  }

  return result;
}

uint64_t sub_20BFB4810@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - v13;
  v22[0] = sub_20C134324();
  v15 = *MEMORY[0x277D517A8];
  v16 = sub_20C1352F4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_20B58C2C8(*(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext), *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext + 8));
  sub_20C134334();
  v18 = sub_20C132C14();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_20C134404();
  v19 = sub_20C135ED4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_20C136914();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  return sub_20C133384();
}

uint64_t sub_20BFB4BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_20C134414();
  v5 = sub_20C135B04();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_20BFB4CD8(v4);
  v7 = sub_20C1390D4();
  v8 = MEMORY[0x277D54278];
  if (v6 != 1)
  {
    v8 = MEMORY[0x277D54280];
  }

  return (*(*(v7 - 8) + 104))(a1, *v8, v7);
}

uint64_t sub_20BFB4CD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BFB4D40(uint64_t a1, int a2)
{
  LODWORD(v164) = a2;
  v3 = sub_20C134214();
  v170 = *(v3 - 8);
  v171 = v3;
  MEMORY[0x28223BE20](v3);
  v160 = v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_20C13BB84();
  v165 = *(v169 - 1);
  MEMORY[0x28223BE20](v169);
  v174 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v149 = *(v6 - 8);
  v150 = v6;
  MEMORY[0x28223BE20](v6);
  v148 = (v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = sub_20C132EE4();
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v152 = *(v9 - 8);
  v153 = v9;
  MEMORY[0x28223BE20](v9);
  v151 = v147 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8);
  MEMORY[0x28223BE20](v11 - 8);
  v157 = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v156 = v147 - v14;
  v15 = sub_20C135524();
  v162 = *(v15 - 1);
  v163 = v15;
  MEMORY[0x28223BE20](v15);
  v155 = v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v154 = v147 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810);
  MEMORY[0x28223BE20](v19 - 8);
  v168 = (v147 - v20);
  v166 = sub_20C1351B4();
  v21 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = (v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_20C137F24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v147 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v147 - v31;
  v33 = a1;
  sub_20C134204();
  v161 = sub_20C137EF4();
  v35 = v34;
  v36 = *(v24 + 8);
  v36(v32, v23);
  if (!v35)
  {
    sub_20C13B534();
    v75 = v160;
    (*(v170 + 16))(v160, v33, v171);
    v76 = sub_20C13BB74();
    v77 = sub_20C13D1D4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v192 = v177;
      *v78 = 136446210;
      LODWORD(v176) = v77;
      sub_20C134204();
      v175 = sub_20C137ED4();
      v80 = v79;
      v36(v26, v23);
      (*(v170 + 8))(v75, v171);
      v81 = sub_20B51E694(v175, v80, &v192);

      *(v78 + 4) = v81;
      _os_log_impl(&dword_20B517000, v76, v176, "TrainerBioShelf not updating without bio for %{public}s", v78, 0xCu);
      v82 = v177;
      __swift_destroy_boxed_opaque_existential_1(v177);
      MEMORY[0x20F2F6A40](v82, -1, -1);
      MEMORY[0x20F2F6A40](v78, -1, -1);
    }

    else
    {

      (*(v170 + 8))(v75, v171);
    }

    return (*(v165 + 8))(v174, v169);
  }

  v165 = v35;
  sub_20C134204();
  v37 = sub_20C137EE4();
  v36(v29, v23);
  v38 = v37 + 56;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 56);
  v158 = (v173 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer);
  v42 = (v39 + 63) >> 6;
  v169 = (v21 + 8);
  v170 = v21 + 16;
  v174 = v37;

  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  v159 = xmmword_20C14F980;
  v47 = v166;
  v46 = v167;
  v171 = v37 + 56;
  v172 = v21;
LABEL_5:
  v160 = v45;
  v48 = v44;
  if (!v41)
  {
    goto LABEL_7;
  }

  do
  {
    v44 = v48;
LABEL_10:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    (*(v21 + 16))(v46, *(v174 + 48) + *(v21 + 72) * (v49 | (v44 << 6)), v47);
    v50 = sub_20C1351A4();
    v52 = v51;
    *&v192 = v50;
    *(&v192 + 1) = v51;
    v54 = v53 & 1;
    LOBYTE(v193) = v53 & 1;
    LOBYTE(v183) = 0;
    sub_20BFBF908();
    sub_20BFBF95C();
    v55 = sub_20C133C04();
    sub_20B583F4C(v50, v52, v54);
    if (v55)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEC8);
      v56 = type metadata accessor for LinkAnnotation();
      v57 = (*(*(v56 - 8) + 80) + 32) & ~*(*(v56 - 8) + 80);
      v147[3] = *(*(v56 - 8) + 72);
      v58 = swift_allocObject();
      *(v58 + 16) = v159;
      v147[1] = v57;
      v147[2] = v58;
      v59 = (v58 + v57);
      __swift_project_boxed_opaque_existential_1(v158, v158[3]);
      v60 = sub_20C138D34();
      v62 = v61;
      v147[4] = v56;
      sub_20C135194();
      *v59 = v60;
      v59[1] = v62;
      v45 = v160;
      v63 = *(v160 + 2);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v64 = *(v45 + 3) >> 1, v64 <= v63))
      {
        result = sub_20BC08234(result, v63 + 1, 1, v45);
        v45 = result;
        v64 = *(result + 24) >> 1;
      }

      v38 = v171;
      v21 = v172;
      v46 = v167;
      if (v64 <= *(v45 + 2))
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      ++*(v45 + 2);
      v47 = v166;
      result = (*v169)(v46, v166);
      goto LABEL_5;
    }

    result = (*v169)(v46, v47);
    v48 = v44;
    v38 = v171;
    v21 = v172;
  }

  while (v41);
  while (1)
  {
LABEL_7:
    v44 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v44);
    ++v48;
    if (v41)
    {
      goto LABEL_10;
    }
  }

  v65 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter;
  v66 = v173;
  swift_beginAccess();
  v67 = v168;
  sub_20B52F9E8(v66 + v65, v168, &qword_27C766810);
  v68 = sub_20B84AFA0(v67);
  sub_20B520158(v67, &qword_27C766810);
  if (v68)
  {
    goto LABEL_21;
  }

  v69 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
  swift_beginAccess();
  v70 = v66 + v69;
  v71 = v156;
  sub_20B52F9E8(v70, v156, &qword_27C769EC8);
  v73 = v162;
  v72 = v163;
  if ((*(v162 + 48))(v71, 1, v163) == 1)
  {
    sub_20B520158(v71, &qword_27C769EC8);
LABEL_21:
    v74 = v164;
  }

  else
  {
    v83 = v154;
    (*(v73 + 32))(v154, v71, v72);
    v84 = sub_20BB110D4();
    (*(v73 + 8))(v83, v72);
    v74 = !v84 & v164;
  }

  v85 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v66 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = v74 & 1;
  __swift_project_boxed_opaque_existential_1(v158, v158[3]);
  v86 = sub_20C138D34();
  v88 = v87;
  v89 = v66 + v65;
  v90 = v168;
  sub_20B52F9E8(v89, v168, &qword_27C766810);
  v91 = sub_20B84AFA0(v90);
  sub_20B520158(v90, &qword_27C766810);
  if (v91)
  {
LABEL_30:
    v97 = 0;
  }

  else
  {
    v92 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
    swift_beginAccess();
    v93 = v66 + v92;
    v94 = v157;
    sub_20B52F9E8(v93, v157, &qword_27C769EC8);
    v96 = v162;
    v95 = v163;
    if ((*(v162 + 48))(v94, 1, v163) == 1)
    {
      sub_20B520158(v94, &qword_27C769EC8);
      goto LABEL_30;
    }

    v98 = v155;
    (*(v96 + 32))(v155, v94, v95);
    v97 = sub_20BB110D4();
    (*(v96 + 8))(v98, v95);
  }

  v99 = v161;
  v100 = swift_allocObject();
  v101 = v165;
  *(v100 + 16) = v99;
  *(v100 + 24) = v101;
  *(v100 + 32) = 1;
  *(v100 + 40) = v86;
  *(v100 + 48) = v88;
  *(v100 + 56) = v97;
  *(v100 + 57) = 1;
  *(v100 + 64) = v160;
  v102 = v100 | 0x2000000000000003;
  v103 = v173;
  v104 = *(v173 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v173 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v100 | 0x2000000000000003;

  sub_20B9EAE04(v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v105 = swift_allocObject();
  *(v105 + 16) = v159;
  *(v105 + 32) = v102;
  v106 = *(v103 + v85);
  v183 = 0uLL;
  LOBYTE(v184) = 1;
  *&v185 = 0;
  *(&v184 + 1) = 0;
  BYTE8(v185) = 0x80;
  BYTE9(v185) = v106;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  LOBYTE(v189) = 0;
  *(&v189 + 1) = v105;
  *&v190[0] = MEMORY[0x277D84F90];
  *(&v190[1] + 8) = 0u;
  *(v190 + 8) = 0u;
  *(&v190[2] + 1) = 0;
  v191 = 2;
  nullsub_1(&v183);
  v107 = v103 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v108 = *(v107 + 144);
  v200 = *(v107 + 128);
  v201 = v108;
  v202 = *(v107 + 160);
  v109 = *(v107 + 80);
  v196 = *(v107 + 64);
  v197 = v109;
  v110 = *(v107 + 112);
  v198 = *(v107 + 96);
  v199 = v110;
  v111 = *(v107 + 16);
  v192 = *v107;
  v193 = v111;
  v112 = *(v107 + 48);
  v194 = *(v107 + 32);
  v195 = v112;
  v113 = v190[2];
  *(v107 + 128) = v190[1];
  *(v107 + 144) = v113;
  *(v107 + 160) = v191;
  v114 = v188;
  *(v107 + 64) = v187;
  *(v107 + 80) = v114;
  v115 = v190[0];
  *(v107 + 96) = v189;
  *(v107 + 112) = v115;
  v116 = v184;
  *v107 = v183;
  *(v107 + 16) = v116;
  v117 = v186;
  *(v107 + 32) = v185;
  *(v107 + 48) = v117;

  sub_20B520158(&v192, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v119 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_53;
  }

  if (![*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_52:
    sub_20C0C2D50(0);
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v163 = v119;
  v120 = v151;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v121 = v153;
  v122 = sub_20C13BE74();
  result = (*(v152 + 8))(v120, v121);
  v171 = *(v122 + 16);
  v172 = v122;
  if (!v171)
  {
LABEL_50:

    goto LABEL_52;
  }

  v123 = 0;
  v169 = (v172 + 32);
  v170 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v167 = (v175 + 8);
  v168 = (v175 + 16);
  while (2)
  {
    if (v123 < *(v172 + 16))
    {
      v124 = &v169[3 * v123];
      v125 = v124[1];
      v166 = *v124;
      v126 = v124[2];
      ++v123;
      (*v168)(v176, v173 + v170, v177);
      v127 = *(v125 + 16);

      v174 = v126;

      v128 = 0;
      do
      {
        if (v127 == v128)
        {
          (*v167)(v176, v177);
          goto LABEL_39;
        }

        v129 = v128 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v130 = sub_20C13C894();
        v128 = v129;
      }

      while ((v130 & 1) == 0);
      (*v167)(v176, v177);
      v131 = *(v107 + 128);
      v132 = *(v107 + 144);
      v133 = *(v107 + 96);
      v179[7] = *(v107 + 112);
      v180 = v131;
      v181 = v132;
      v182 = *(v107 + 160);
      v134 = *(v107 + 80);
      v179[4] = *(v107 + 64);
      v179[5] = v134;
      v179[6] = v133;
      v135 = *(v107 + 16);
      v179[0] = *v107;
      v179[1] = v135;
      v136 = *(v107 + 48);
      v179[2] = *(v107 + 32);
      v179[3] = v136;
      v137 = sub_20B5EAF8C(v179);
      if (v137 == 1)
      {
        v138 = 0;
        v139 = 0;
      }

      else
      {
        v138 = *(&v180 + 1);
        v139 = v181;
      }

      v140 = v174;
      v164 = v147;
      v178[0] = v138;
      v178[1] = v139;
      MEMORY[0x28223BE20](v137);
      v147[-2] = v178;
      v141 = sub_20B796758(sub_20B5EB0CC, &v147[-4], v140);

      if ((v141 & 1) == 0)
      {
LABEL_39:

        if (v123 == v171)
        {
          goto LABEL_50;
        }

        continue;
      }

      sub_20B5E2E18();
      v142 = sub_20C13D374();
      v144 = v148;
      v143 = v149;
      *v148 = v142;
      v145 = v150;
      (*(v143 + 104))(v144, *MEMORY[0x277D85200], v150);
      v146 = sub_20C13C584();
      result = (*(v143 + 8))(v144, v145);
      if ((v146 & 1) == 0)
      {
        goto LABEL_60;
      }

      sub_20B61F5C0(v166, v125, v174, v173, 1, v163);

LABEL_53:

      swift_unknownObjectRelease();
    }

    break;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_20BFB6054(uint64_t a1, char a2)
{
  v150 = 0;
  v151 = a1;
  v4 = sub_20C13C554();
  v140 = *(v4 - 8);
  v141 = v4;
  MEMORY[0x28223BE20](v4);
  v139 = (&v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v154 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v153 = &v136 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v144 = *(v11 - 8);
  v145 = v11;
  MEMORY[0x28223BE20](v11);
  v143 = (&v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v142 = (&v136 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v136 - v16;
  v18 = sub_20C134734();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v146 = (&v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v136 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v136 - v25;
  v149 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = a2;
  v152 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v147 = sub_20C138D34();
  v148 = v27;
  sub_20C135CB4();
  sub_20C134714();
  v28 = *(v19 + 8);
  v28(v26, v18);
  v29 = sub_20C134284();
  v30 = (*(*(v29 - 8) + 48))(v17, 1, v29);
  sub_20B520158(v17, &unk_27C7623C0);
  if (v30 != 1)
  {
    sub_20C135CB4();
    v56 = sub_20C134724();
    v58 = v57;
    v28(v23, v18);
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    *(v59 + 24) = v58;
    *(v59 + 32) = 1;
    v60 = v148;
    *(v59 + 40) = v147;
    *(v59 + 48) = v60;
    *(v59 + 56) = 512;
    v61 = MEMORY[0x277D84F90];
    *(v59 + 64) = MEMORY[0x277D84F90];
    v62 = v152;
    v63 = *(v152 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
    *(v152 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v59 | 0x2000000000000003;

    sub_20B9EAE04(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_20C14F980;
    *(v64 + 32) = v59 | 0x2000000000000003;
    v65 = v59;
    v66 = *(v62 + v149);
    v172 = 0uLL;
    LOBYTE(v173) = 1;
    *(&v173 + 1) = *v171;
    DWORD1(v173) = *&v171[3];
    *(&v173 + 1) = 0;
    *&v174 = 0;
    BYTE8(v174) = 0x80;
    BYTE9(v174) = v66;
    *(&v174 + 10) = v169;
    HIWORD(v174) = v170;
    LOBYTE(v178) = 0;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    *(&v178 + 1) = *v168;
    DWORD1(v178) = *&v168[3];
    *(&v178 + 1) = v64;
    *&v179[0] = v61;
    *(v179 + 8) = 0u;
    *(&v179[1] + 8) = 0u;
    *(&v179[2] + 1) = 0;
    v180 = 2;
    nullsub_1(&v172);
    v67 = v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
    v68 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
    v189 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
    v190 = v68;
    v191 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
    v69 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
    v185 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
    v186 = v69;
    v70 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
    v187 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
    v188 = v70;
    v71 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
    v181 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
    v182 = v71;
    v72 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
    v183 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
    v184 = v72;
    v73 = v179[2];
    *(v67 + 128) = v179[1];
    *(v67 + 144) = v73;
    *(v67 + 160) = v180;
    v74 = v177;
    *(v67 + 64) = v176;
    *(v67 + 80) = v74;
    v75 = v179[0];
    *(v67 + 96) = v178;
    *(v67 + 112) = v75;
    v76 = v173;
    *v67 = v172;
    *(v67 + 16) = v76;
    v77 = v175;
    *(v67 + 32) = v174;
    *(v67 + 48) = v77;

    sub_20B520158(&v181, &qword_27C762340);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
      {
        v138 = Strong;
        if ([*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
          if (swift_dynamicCastClass())
          {
            v136 = v65;
            v137 = v58;
            v103 = v142;
            sub_20C13BFA4();
            swift_unknownObjectRelease();
            v104 = v145;
            v105 = sub_20C13BE74();
            result = (*(v144 + 8))(v103, v104);
            v151 = v105;
            v149 = *(v105 + 16);
            if (v149)
            {
              v106 = 0;
              v147 = v151 + 32;
              v148 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
              v145 = (v7 + 8);
              v146 = (v7 + 16);
              while (2)
              {
                if (v106 < *(v151 + 16))
                {
                  v107 = (v147 + 24 * v106);
                  v108 = v107[1];
                  v144 = *v107;
                  v109 = v107[2];
                  v106 = (v106 + 1);
                  (*v146)(v153, v152 + v148, v6);
                  v110 = *(v108 + 16);

                  v154 = v109;

                  v111 = 0;
                  do
                  {
                    if (v110 == v111)
                    {
                      (*v145)(v153, v6);

                      goto LABEL_31;
                    }

                    v112 = v111 + 1;
                    sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
                    v113 = sub_20C13C894();
                    v111 = v112;
                  }

                  while ((v113 & 1) == 0);
                  v142 = v106;
                  (*v145)(v153, v6);
                  v114 = *(v67 + 128);
                  v115 = *(v67 + 144);
                  v116 = *(v67 + 96);
                  v164 = *(v67 + 112);
                  v165 = v114;
                  v166 = v115;
                  v167 = *(v67 + 160);
                  v117 = *(v67 + 80);
                  v161 = *(v67 + 64);
                  v162 = v117;
                  v163 = v116;
                  v118 = *(v67 + 16);
                  v157 = *v67;
                  v158 = v118;
                  v119 = *(v67 + 48);
                  v159 = *(v67 + 32);
                  v160 = v119;
                  v120 = sub_20B5EAF8C(&v157);
                  if (v120 == 1)
                  {
                    v121 = 0;
                    v122 = 0;
                  }

                  else
                  {
                    v121 = *(&v165 + 1);
                    v122 = v166;
                  }

                  v123 = v154;
                  v143 = &v136;
                  v155 = v121;
                  v156 = v122;
                  MEMORY[0x28223BE20](v120);
                  *(&v136 - 2) = &v155;
                  v124 = v150;
                  v125 = sub_20B796758(sub_20B5EB0CC, (&v136 - 4), v123);
                  v150 = v124;

                  if ((v125 & 1) == 0)
                  {

                    v106 = v142;
LABEL_31:
                    if (v106 == v149)
                    {
                      break;
                    }

                    continue;
                  }

                  sub_20B5E2E18();
                  v131 = sub_20C13D374();
                  v133 = v139;
                  v132 = v140;
                  *v139 = v131;
                  v134 = v141;
                  (*(v132 + 104))(v133, *MEMORY[0x277D85200], v141);
                  v135 = sub_20C13C584();
                  result = (*(v132 + 8))(v133, v134);
                  if ((v135 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  sub_20B61F5C0(v144, v108, v154, v152, 1, v138);

                  swift_unknownObjectRelease();
                }

                goto LABEL_54;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        sub_20C0C2D50(0);
      }

      swift_unknownObjectRelease();
    }

LABEL_9:
  }

  v31 = v146;
  sub_20C135CB4();
  v32 = sub_20C134724();
  v34 = v33;
  v28(v31, v18);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v34;
  *(v35 + 32) = 1;
  v36 = v148;
  *(v35 + 40) = v147;
  *(v35 + 48) = v36;
  *(v35 + 56) = 256;
  v37 = MEMORY[0x277D84F90];
  *(v35 + 64) = MEMORY[0x277D84F90];
  v38 = v152;
  v39 = *(v152 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v152 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v35 | 0x2000000000000003;

  sub_20B9EAE04(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C14F980;
  *(v40 + 32) = v35 | 0x2000000000000003;
  v41 = *(v38 + v149);
  v172 = 0uLL;
  LOBYTE(v173) = 1;
  *(&v173 + 1) = *v171;
  DWORD1(v173) = *&v171[3];
  *(&v173 + 1) = 0;
  *&v174 = 0;
  BYTE8(v174) = 0x80;
  BYTE9(v174) = v41;
  *(&v174 + 10) = v169;
  HIWORD(v174) = v170;
  LOBYTE(v178) = 0;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  *(&v178 + 1) = *v168;
  DWORD1(v178) = *&v168[3];
  *(&v178 + 1) = v40;
  *&v179[0] = v37;
  v42 = v35;
  *(v179 + 8) = 0u;
  *(&v179[1] + 8) = 0u;
  *(&v179[2] + 1) = 0;
  v180 = 2;
  nullsub_1(&v172);
  v43 = v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v44 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v189 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v190 = v44;
  v191 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v45 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v185 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v186 = v45;
  v46 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v187 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v188 = v46;
  v47 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v181 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v182 = v47;
  v48 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v183 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v184 = v48;
  v49 = v179[2];
  *(v43 + 128) = v179[1];
  *(v43 + 144) = v49;
  *(v43 + 160) = v180;
  v50 = v177;
  *(v43 + 64) = v176;
  *(v43 + 80) = v50;
  v51 = v179[0];
  *(v43 + 96) = v178;
  *(v43 + 112) = v51;
  v52 = v173;
  *v43 = v172;
  *(v43 + 16) = v52;
  v53 = v175;
  *(v43 + 32) = v174;
  *(v43 + 48) = v53;

  sub_20B520158(&v181, &qword_27C762340);
  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
    goto LABEL_9;
  }

  v55 = v54;
  v149 = v34;
  if (*(v54 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

LABEL_5:
    swift_unknownObjectRelease();
  }

  v137 = v42;
  if (![*(v54 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_44:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v136 = v55;
  v79 = v143;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v80 = v145;
  v81 = sub_20C13BE74();
  result = (*(v144 + 8))(v79, v80);
  v151 = v81;
  v148 = *(v81 + 16);
  if (!v148)
  {
LABEL_41:

    goto LABEL_44;
  }

  v83 = 0;
  v146 = (v151 + 32);
  v147 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v144 = v7 + 8;
  v145 = (v7 + 16);
  while (2)
  {
    if (v83 < *(v151 + 16))
    {
      v84 = &v146[3 * v83];
      v85 = v84[1];
      v143 = *v84;
      v86 = v84[2];
      ++v83;
      (*v145)(v154, v152 + v147, v6);
      v87 = *(v85 + 16);

      v153 = v86;

      v88 = 0;
      do
      {
        if (v87 == v88)
        {
          (*v144)(v154, v6);

          goto LABEL_16;
        }

        v89 = v88 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v90 = sub_20C13C894();
        v88 = v89;
      }

      while ((v90 & 1) == 0);
      v138 = v83;
      (*v144)(v154, v6);
      v91 = *(v43 + 128);
      v92 = *(v43 + 144);
      v93 = *(v43 + 96);
      v164 = *(v43 + 112);
      v165 = v91;
      v166 = v92;
      v167 = *(v43 + 160);
      v94 = *(v43 + 80);
      v161 = *(v43 + 64);
      v162 = v94;
      v163 = v93;
      v95 = *(v43 + 16);
      v157 = *v43;
      v158 = v95;
      v96 = *(v43 + 48);
      v159 = *(v43 + 32);
      v160 = v96;
      v97 = sub_20B5EAF8C(&v157);
      if (v97 == 1)
      {
        v98 = 0;
        v99 = 0;
      }

      else
      {
        v98 = *(&v165 + 1);
        v99 = v166;
      }

      v100 = v153;
      v142 = &v136;
      v155 = v98;
      v156 = v99;
      MEMORY[0x28223BE20](v97);
      *(&v136 - 2) = &v155;
      v101 = v150;
      v102 = sub_20B796758(sub_20B5EB0CC, (&v136 - 4), v100);
      v150 = v101;

      if ((v102 & 1) == 0)
      {

        v83 = v138;
LABEL_16:
        if (v83 == v148)
        {
          goto LABEL_41;
        }

        continue;
      }

      sub_20B5E2E18();
      v126 = sub_20C13D374();
      v128 = v139;
      v127 = v140;
      *v139 = v126;
      v129 = v141;
      (*(v127 + 104))(v128, *MEMORY[0x277D85200], v141);
      v130 = sub_20C13C584();
      result = (*(v127 + 8))(v128, v129);
      if ((v130 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_20B61F5C0(v143, v85, v153, v152, 1, v136);

      goto LABEL_5;
    }

    break;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_20BFB7170(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_20C13C554();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C132EE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v69 - v10;
  v11 = sub_20C134314();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = a2;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v15 = sub_20C138D34();
  v84 = v16;
  v85 = v15;
  sub_20C135954();
  v17 = sub_20BFBE9B4();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_20C135954();
  v19 = sub_20BFB7C6C(v14);
  v18(v14, v11);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  v21 = v84;
  *(v20 + 40) = v85;
  *(v20 + 48) = v21;
  *(v20 + 56) = 768;
  *(v20 + 64) = v17;
  v22 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v20 | 0x2000000000000003;
  v23 = v19;

  v24 = v22;
  v25 = v20;
  sub_20B9EAE04(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  v27 = *(v3 + v86);
  *(v26 + 32) = v20 | 0x2000000000000003;
  v96 = 0uLL;
  LOBYTE(v97) = 1;
  *(&v97 + 1) = *v95;
  DWORD1(v97) = *&v95[3];
  *(&v97 + 1) = 0;
  *&v98 = 0;
  BYTE8(v98) = 0x80;
  BYTE9(v98) = v27;
  *(&v98 + 10) = *&v93[7];
  HIWORD(v98) = v94;
  LOBYTE(v102) = 0;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  *(&v102 + 1) = *v93;
  DWORD1(v102) = *&v93[3];
  *(&v102 + 1) = v26;
  *&v103[0] = MEMORY[0x277D84F90];
  *(v103 + 8) = 0u;
  *(&v103[1] + 8) = 0u;
  *(&v103[2] + 1) = 0;
  v104 = 2;
  nullsub_1(&v96);
  v28 = v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v29 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v105[8] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v105[9] = v29;
  v106 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v30 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v105[4] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v105[5] = v30;
  v31 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v105[6] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v105[7] = v31;
  v32 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v105[0] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v105[1] = v32;
  v33 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v105[2] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v105[3] = v33;
  v34 = v103[2];
  *(v28 + 128) = v103[1];
  *(v28 + 144) = v34;
  *(v28 + 160) = v104;
  v35 = v101;
  *(v28 + 64) = v100;
  *(v28 + 80) = v35;
  v36 = v103[0];
  *(v28 + 96) = v102;
  *(v28 + 112) = v36;
  v37 = v97;
  *v28 = v96;
  *(v28 + 16) = v37;
  v38 = v99;
  *(v28 + 32) = v98;
  *(v28 + 48) = v38;

  sub_20B520158(v105, &qword_27C762340);
  v84 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v82 = v23;
  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
LABEL_3:

    swift_unknownObjectRelease();

    return;
  }

  v71 = v25;
  v70 = Strong;
  v40 = [*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v41 = v82;
  if (!v40)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v42 = v80;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v43 = v83;
  v44 = sub_20C13BE74();
  (*(v81 + 8))(v42, v43);
  v83 = v44;
  v81 = *(v44 + 16);
  if (!v81)
  {
LABEL_20:

    v41 = v82;
LABEL_22:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();

    return;
  }

  v45 = 0;
  v79 = v83 + 32;
  v80 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v77 = (v8 + 8);
  v78 = (v8 + 16);
  while (2)
  {
    if (v45 < *(v83 + 16))
    {
      v46 = (v79 + 24 * v45);
      v47 = v46[1];
      v76 = *v46;
      v48 = v46[2];
      v85 = v45 + 1;
      (*v78)(v87, &v80[v84], v7);
      v49 = *(v47 + 16);

      v86 = v48;

      v50 = 0;
      do
      {
        if (v49 == v50)
        {
          (*v77)(v87, v7);
          goto LABEL_10;
        }

        v51 = v50 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v52 = sub_20C13C894();
        v50 = v51;
      }

      while ((v52 & 1) == 0);
      (*v77)(v87, v7);
      v53 = *(v28 + 128);
      v54 = *(v28 + 144);
      v55 = *(v28 + 96);
      v89[7] = *(v28 + 112);
      v90 = v53;
      v91 = v54;
      v92 = *(v28 + 160);
      v56 = *(v28 + 80);
      v89[4] = *(v28 + 64);
      v89[5] = v56;
      v89[6] = v55;
      v57 = *(v28 + 16);
      v89[0] = *v28;
      v89[1] = v57;
      v58 = *(v28 + 48);
      v89[2] = *(v28 + 32);
      v89[3] = v58;
      v59 = sub_20B5EAF8C(v89);
      if (v59 == 1)
      {
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v60 = *(&v90 + 1);
        v61 = v91;
      }

      v62 = v86;
      v75 = &v69;
      v88[0] = v60;
      v88[1] = v61;
      MEMORY[0x28223BE20](v59);
      *(&v69 - 2) = v88;
      v63 = sub_20B796758(sub_20B5EB0CC, (&v69 - 4), v62);

      if ((v63 & 1) == 0)
      {
LABEL_10:

        v45 = v85;
        if (v85 == v81)
        {
          goto LABEL_20;
        }

        continue;
      }

      sub_20B5E2E18();
      v64 = sub_20C13D374();
      v66 = v72;
      v65 = v73;
      *v72 = v64;
      v67 = v74;
      (*(v65 + 104))(v66, *MEMORY[0x277D85200], v74);
      v68 = sub_20C13C584();
      (*(v65 + 8))(v66, v67);
      if ((v68 & 1) == 0)
      {
        goto LABEL_27;
      }

      sub_20B61F5C0(v76, v47, v86, v84, 1, v70);

      goto LABEL_3;
    }

    break;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_20BFB7ABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_20C1351A4();
  v6 = v5;
  v8 = v7 & 1;
  sub_20BFBF908();
  sub_20BFBF95C();
  v9 = sub_20C133C04();
  sub_20B583F4C(v4, v6, v8);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEC8);
    v10 = *(type metadata accessor for LinkAnnotation() - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20C14F980;
    v13 = (v12 + v11);
    v14 = sub_20C137F04();
    v16 = v15;
    sub_20C135194();
    *v13 = v14;
    v13[1] = v16;

    result = sub_20B8DB830(v12);
  }

  else
  {
  }

  *a2 = v3;
  return result;
}

uint64_t sub_20BFB7C6C(uint64_t a1)
{
  v2 = sub_20C1385B4();
  v141 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v140 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_20C137F24();
  v151 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v170 = &v136 - v7;
  v149 = sub_20C13BB84();
  v142 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v150 = &v136 - v11;
  v12 = sub_20C1335F4();
  v155 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v148 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v171 = (&v136 - v15);
  v16 = sub_20C138094();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v166 = (&v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v165 = &v136 - v20;
  MEMORY[0x28223BE20](v21);
  v164 = (&v136 - v22);
  MEMORY[0x28223BE20](v23);
  v163 = &v136 - v24;
  MEMORY[0x28223BE20](v25);
  v162 = &v136 - v26;
  MEMORY[0x28223BE20](v27);
  v161 = &v136 - v28;
  MEMORY[0x28223BE20](v29);
  v160 = (&v136 - v30);
  MEMORY[0x28223BE20](v31);
  v159 = (&v136 - v32);
  MEMORY[0x28223BE20](v33);
  v158 = (&v136 - v34);
  MEMORY[0x28223BE20](v35);
  *&v157 = &v136 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = (&v136 - v38);
  MEMORY[0x28223BE20](v40);
  *(&v136 - v41) = 2;
  v172 = &v136 - v41;
  swift_storeEnumTagMultiPayload();
  v143 = a1;
  *v39 = sub_20C1342F4();
  v39[1] = v42;
  v168 = v16;
  swift_storeEnumTagMultiPayload();
  v43 = sub_20BC060E4(0, 1, 1, MEMORY[0x277D84F90]);
  v45 = v43[2];
  v44 = v43[3];
  if (v45 >= v44 >> 1)
  {
    v43 = sub_20BC060E4(v44 > 1, v45 + 1, 1, v43);
  }

  v43[2] = v45 + 1;
  v174 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v173 = *(v17 + 72);
  sub_20BC9EFAC(v39, v43 + v174 + v173 * v45);
  v46 = sub_20C1342B4();
  v47 = *(v46 + 16);
  v167 = v9;
  v154 = v12;
  if (v47)
  {
    v48 = sub_20BEDEBF0(v47, 0);
    v49 = sub_20BEE2700(v175, &v48[(*(v155 + 80) + 32) & ~*(v155 + 80)], v47, v46);
    v156 = v175[3];
    v153 = v175[4];

    sub_20B583EDC();
    if (v49 != v47)
    {
      __break(1u);
LABEL_50:

      __break(1u);
      return result;
    }

    v12 = v154;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  v138 = v2;
  v175[0] = v48;

  v47 = 0;
  sub_20BFBB578(v175);

  v51 = v175[0][2];
  v52 = &unk_20C14F000;
  v147 = v5;
  if (v51)
  {
    v137 = 0;
    v53 = *(v155 + 16);
    v54 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v136 = v175[0];
    v55 = v175[0] + v54;
    v152 = *(v155 + 72);
    v155 += 16;
    v156 = (v155 - 8);
    v146 = (v142 + 8);
    *&v50 = 136446210;
    v144 = v50;
    v56 = v150;
    v153 = v53;
    do
    {
      v59 = v56;
      v60 = v53;
      (v53)(v171, v55, v12);
      v61 = sub_20C1335C4();
      if (v62)
      {
        v63 = v61;
        v64 = v62;
        sub_20B634348(v172, v157);
        v66 = v43[2];
        v65 = v43[3];
        v67 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v43 = sub_20BC060E4(v65 > 1, v66 + 1, 1, v43);
        }

        v43[2] = v67;
        sub_20BC9EFAC(v157, v43 + v174 + v66 * v173);
        sub_20B634348(v172, v158);
        v68 = v43[3];
        if ((v66 + 2) > (v68 >> 1))
        {
          v43 = sub_20BC060E4(v68 > 1, v66 + 2, 1, v43);
        }

        v43[2] = v66 + 2;
        sub_20BC9EFAC(v158, v43 + v174 + v67 * v173);
        v69 = sub_20C1335D4();
        v70 = v159;
        *v159 = v69;
        v70[1] = v71;
        v70[2] = 0;
        v70[3] = 0;
        swift_storeEnumTagMultiPayload();
        v73 = v43[2];
        v72 = v43[3];
        v74 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v43 = sub_20BC060E4(v72 > 1, v73 + 1, 1, v43);
        }

        v43[2] = v74;
        sub_20BC9EFAC(v159, v43 + v174 + v73 * v173);
        sub_20B634348(v172, v160);
        v75 = v43[3];
        v76 = v73 + 2;
        if ((v73 + 2) > (v75 >> 1))
        {
          v43 = sub_20BC060E4(v75 > 1, v73 + 2, 1, v43);
        }

        v43[2] = v76;
        sub_20BC9EFAC(v160, v43 + v174 + v74 * v173);
        v77 = v161;
        *v161 = v63;
        *(v77 + 8) = v64;
        swift_storeEnumTagMultiPayload();
        v78 = v43[3];
        v79 = v73 + 3;
        if ((v73 + 3) > (v78 >> 1))
        {
          v43 = sub_20BC060E4(v78 > 1, v73 + 3, 1, v43);
        }

        v56 = v150;
        v12 = v154;
        (*v156)(v171, v154);
        v43[2] = v79;
        sub_20BC9EFAC(v161, v43 + v174 + v76 * v173);
      }

      else
      {
        v80 = v12;
        sub_20C13B534();
        v81 = v148;
        v60(v148, v171, v80);
        v56 = v59;
        v82 = sub_20C13BB74();
        v83 = sub_20C13D1F4();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v175[0] = v145;
          *v84 = v144;
          v85 = sub_20C1335B4();
          v87 = v86;
          v88 = *v156;
          (*v156)(v81, v154);
          v89 = sub_20B51E694(v85, v87, v175);
          v56 = v150;

          *(v84 + 4) = v89;
          _os_log_impl(&dword_20B517000, v82, v83, "No bio available for %{public}s, skipping", v84, 0xCu);
          v90 = v145;
          __swift_destroy_boxed_opaque_existential_1(v145);
          MEMORY[0x20F2F6A40](v90, -1, -1);
          v12 = v154;
          MEMORY[0x20F2F6A40](v84, -1, -1);

          (*v146)(v56, v149);
          v88(v171, v12);
        }

        else
        {
          v57 = v80;

          v58 = *v156;
          (*v156)(v81, v57);
          (*v146)(v56, v149);
          v58(v171, v57);
          v12 = v57;
        }
      }

      v55 += v152;
      --v51;
      v53 = v153;
    }

    while (v51);

    v52 = &unk_20C14F000;
    v47 = v137;
  }

  else
  {
  }

  v175[0] = sub_20C134304();

  sub_20BFBB65C(v175);
  v91 = v151;
  if (v47)
  {
    goto LABEL_50;
  }

  v93 = v175[0][2];
  if (v93)
  {
    v96 = *(v91 + 16);
    v94 = v91 + 16;
    v95 = v96;
    v97 = (*(v94 + 64) + 32) & ~*(v94 + 64);
    v156 = v175[0];
    v98 = v175[0] + v97;
    v161 = *(v94 + 56);
    v171 = (v94 - 8);
    v159 = (v142 + 8);
    *&v92 = v52[314];
    v157 = v92;
    v151 = v94;
    v160 = v96;
    v96(v170, v175[0] + v97, v169);
    while (1)
    {
      v101 = sub_20C137EF4();
      if (v102)
      {
        v103 = v101;
        v104 = v102;
        sub_20B634348(v172, v162);
        v106 = v43[2];
        v105 = v43[3];
        v107 = v106 + 1;
        if (v106 >= v105 >> 1)
        {
          v43 = sub_20BC060E4(v105 > 1, v106 + 1, 1, v43);
        }

        v43[2] = v107;
        sub_20BC9EFAC(v162, v43 + v174 + v106 * v173);
        sub_20B634348(v172, v163);
        v108 = v43[3];
        if ((v106 + 2) > (v108 >> 1))
        {
          v43 = sub_20BC060E4(v108 > 1, v106 + 2, 1, v43);
        }

        v43[2] = v106 + 2;
        sub_20BC9EFAC(v163, v43 + v174 + v107 * v173);
        v109 = sub_20C137F04();
        v110 = v164;
        *v164 = v109;
        v110[1] = v111;
        v110[2] = 0;
        v110[3] = 0;
        swift_storeEnumTagMultiPayload();
        v113 = v43[2];
        v112 = v43[3];
        v114 = v113 + 1;
        if (v113 >= v112 >> 1)
        {
          v43 = sub_20BC060E4(v112 > 1, v113 + 1, 1, v43);
        }

        v43[2] = v114;
        sub_20BC9EFAC(v164, v43 + v174 + v113 * v173);
        sub_20B634348(v172, v165);
        v115 = v43[3];
        v116 = v113 + 2;
        if ((v113 + 2) > (v115 >> 1))
        {
          v43 = sub_20BC060E4(v115 > 1, v113 + 2, 1, v43);
        }

        v43[2] = v116;
        sub_20BC9EFAC(v165, v43 + v174 + v114 * v173);
        v117 = v166;
        *v166 = v103;
        v117[1] = v104;
        swift_storeEnumTagMultiPayload();
        v118 = v43[3];
        if ((v113 + 3) > (v118 >> 1))
        {
          v43 = sub_20BC060E4(v118 > 1, v113 + 3, 1, v43);
        }

        (*v171)(v170, v169);
        v43[2] = v113 + 3;
        sub_20BC9EFAC(v166, v43 + v174 + v116 * v173);
      }

      else
      {
        sub_20C13B534();
        v119 = v170;
        v120 = v147;
        v95(v147, v170, v169);
        v121 = sub_20C13BB74();
        v122 = sub_20C13D1F4();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v175[0] = v158;
          *v123 = v157;
          v124 = sub_20C137ED4();
          v126 = v125;
          v127 = *v171;
          (*v171)(v120, v169);
          v128 = sub_20B51E694(v124, v126, v175);

          *(v123 + 4) = v128;
          _os_log_impl(&dword_20B517000, v121, v122, "No bio available for %{public}s, skipping", v123, 0xCu);
          v129 = v158;
          __swift_destroy_boxed_opaque_existential_1(v158);
          MEMORY[0x20F2F6A40](v129, -1, -1);
          MEMORY[0x20F2F6A40](v123, -1, -1);

          (*v159)(v167, v149);
          v127(v170, v169);
        }

        else
        {

          v99 = *v171;
          v100 = v169;
          (*v171)(v120, v169);
          (*v159)(v167, v149);
          v99(v119, v100);
        }

        v95 = v160;
      }

      v98 += v161;
      if (!--v93)
      {
        break;
      }

      v95(v170, v98, v169);
    }
  }

  __swift_project_boxed_opaque_existential_1((v139 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder), *(v139 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder + 24));
  v130 = objc_opt_self();
  v131 = [v130 whiteColor];
  v132 = [v130 systemGrayColor];
  v133 = v140;
  sub_20C1385A4();

  v134 = sub_20C138524();

  (*(v141 + 8))(v133, v138);
  sub_20BE9B9EC(v172, MEMORY[0x277D53BC8]);
  return v134;
}

void sub_20BFB8DDC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v59 - v7;
  v76 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = 0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v8 = sub_20C138D34();
  v75 = v9;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder + 24));
  sub_20C1359E4();
  v10 = sub_20C138544();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = v75;
  *(v11 + 40) = v8;
  *(v11 + 48) = v12;
  *(v11 + 56) = 768;
  v13 = MEMORY[0x277D84F90];
  *(v11 + 64) = MEMORY[0x277D84F90];
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v11 | 0x2000000000000003;
  v15 = v10;

  sub_20B9EAE04(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14F980;
  *(v16 + 32) = v11 | 0x2000000000000003;
  v17 = *(v1 + v76);
  v83 = 0uLL;
  LOBYTE(v84) = 1;
  *(&v84 + 1) = 0;
  *&v85 = 0;
  BYTE8(v85) = 0x80;
  BYTE9(v85) = v17;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = v16;
  *&v90[0] = v13;
  *(&v90[1] + 8) = 0u;
  *(v90 + 8) = 0u;
  *(&v90[2] + 1) = 0;
  v91 = 2;
  nullsub_1(&v83);
  v18 = v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v92[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v92[9] = v19;
  v93 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v92[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v92[5] = v20;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v92[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v92[7] = v21;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v92[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v92[1] = v22;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v92[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v92[3] = v23;
  v24 = v90[2];
  *(v18 + 128) = v90[1];
  *(v18 + 144) = v24;
  *(v18 + 160) = v91;
  v25 = v88;
  *(v18 + 64) = v87;
  *(v18 + 80) = v25;
  v26 = v90[0];
  *(v18 + 96) = v89;
  *(v18 + 112) = v26;
  v27 = v84;
  *v18 = v83;
  *(v18 + 16) = v27;
  v28 = v86;
  *(v18 + 32) = v85;
  *(v18 + 48) = v28;

  sub_20B520158(v92, &qword_27C762340);
  v74 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_5;
  }

  v72 = v15;
  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
LABEL_3:

    swift_unknownObjectRelease();
    v15 = v72;
LABEL_5:

    return;
  }

  v61 = v11;
  v60 = Strong;
  v30 = [*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v31 = v72;
  if (!v30)
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v32 = v70;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v33 = v73;
  v34 = sub_20C13BE74();
  (*(v71 + 8))(v32, v33);
  v73 = v34;
  v71 = *(v34 + 16);
  if (!v71)
  {
LABEL_21:

    v31 = v72;
LABEL_23:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();

    return;
  }

  v35 = 0;
  v69 = v73 + 32;
  v70 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v67 = (v5 + 8);
  v68 = (v5 + 16);
  while (2)
  {
    if (v35 < *(v73 + 16))
    {
      v36 = (v69 + 24 * v35);
      v37 = v36[1];
      v66 = *v36;
      v38 = v36[2];
      v75 = v35 + 1;
      (*v68)(v77, &v70[v74], v4);
      v39 = *(v37 + 16);

      v76 = v38;

      v40 = 0;
      do
      {
        if (v39 == v40)
        {
          (*v67)(v77, v4);
          goto LABEL_11;
        }

        v41 = v40 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v42 = sub_20C13C894();
        v40 = v41;
      }

      while ((v42 & 1) == 0);
      (*v67)(v77, v4);
      v43 = *(v18 + 128);
      v44 = *(v18 + 144);
      v45 = *(v18 + 96);
      v79[7] = *(v18 + 112);
      v80 = v43;
      v81 = v44;
      v82 = *(v18 + 160);
      v46 = *(v18 + 80);
      v79[4] = *(v18 + 64);
      v79[5] = v46;
      v79[6] = v45;
      v47 = *(v18 + 16);
      v79[0] = *v18;
      v79[1] = v47;
      v48 = *(v18 + 48);
      v79[2] = *(v18 + 32);
      v79[3] = v48;
      v49 = sub_20B5EAF8C(v79);
      if (v49 == 1)
      {
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v50 = *(&v80 + 1);
        v51 = v81;
      }

      v52 = v76;
      v65 = &v59;
      v78[0] = v50;
      v78[1] = v51;
      MEMORY[0x28223BE20](v49);
      *(&v59 - 2) = v78;
      v53 = sub_20B796758(sub_20B5EB0CC, (&v59 - 4), v52);

      if ((v53 & 1) == 0)
      {
LABEL_11:

        v35 = v75;
        if (v75 == v71)
        {
          goto LABEL_21;
        }

        continue;
      }

      sub_20B5E2E18();
      v54 = sub_20C13D374();
      v56 = v62;
      v55 = v63;
      *v62 = v54;
      v57 = v64;
      (*(v55 + 104))(v56, *MEMORY[0x277D85200], v64);
      v58 = sub_20C13C584();
      (*(v55 + 8))(v56, v57);
      if ((v58 & 1) == 0)
      {
        goto LABEL_28;
      }

      sub_20B61F5C0(v66, v37, v76, v74, 1, v60);

      goto LABEL_3;
    }

    break;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_20BFB9660(void *a1, void *a2, int a3, char a4, int a5, int a6)
{
  LODWORD(v80) = a6;
  LODWORD(v81) = a5;
  LODWORD(v79) = a3;
  v10 = sub_20C13C554();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = (v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_20C132EE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v71 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v75 = (v67 - v16);
  v78 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  v82 = v6;
  *(v6 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = a4;
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v17 = sub_20C138D34();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = a2;
  LOBYTE(a2) = v79 & 1;
  *(v20 + 32) = v79 & 1;
  *(v20 + 40) = v17;
  *(v20 + 48) = v19;
  *(v20 + 56) = v80 & 1;
  *(v20 + 57) = v81;
  *(v20 + 64) = MEMORY[0x277D84F90];
  v22 = v82;
  v23 = *(v82 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v82 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v20 | 0x2000000000000003;

  sub_20B7D4748(a1, v21, a2);
  sub_20B9EAE04(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14F980;
  *(v24 + 32) = v20 | 0x2000000000000003;
  v25 = *(v22 + v78);
  v88 = 0uLL;
  LOBYTE(v89) = 1;
  *(&v89 + 1) = 0;
  *&v90 = 0;
  BYTE8(v90) = 0x80;
  BYTE9(v90) = v25;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v24;
  *&v95[0] = MEMORY[0x277D84F90];
  *(&v95[1] + 8) = 0u;
  *(v95 + 8) = 0u;
  *(&v95[2] + 1) = 0;
  v96 = 2;
  nullsub_1(&v88);
  v26 = v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v27 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v97[8] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v97[9] = v27;
  v98 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v28 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v97[4] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v97[5] = v28;
  v29 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v97[6] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v97[7] = v29;
  v30 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v97[0] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v97[1] = v30;
  v31 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v97[2] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v97[3] = v31;
  v32 = v95[2];
  *(v26 + 128) = v95[1];
  *(v26 + 144) = v32;
  *(v26 + 160) = v96;
  v33 = v93;
  *(v26 + 64) = v92;
  *(v26 + 80) = v33;
  v34 = v95[0];
  *(v26 + 96) = v94;
  *(v26 + 112) = v34;
  v35 = v89;
  *v26 = v88;
  *(v26 + 16) = v35;
  v36 = v91;
  *(v26 + 32) = v90;
  *(v26 + 48) = v36;

  sub_20B520158(v97, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    goto LABEL_23;
  }

  v67[1] = v20;
  v67[0] = Strong;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v39 = v75;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v40 = v77;
  v41 = sub_20C13BE74();
  result = (*(v76 + 8))(v39, v40);
  v78 = *(v41 + 16);
  v79 = v41;
  v42 = v71;
  if (!v78)
  {
LABEL_20:

LABEL_22:
    sub_20C0C2D50(0);
LABEL_23:

    return swift_unknownObjectRelease();
  }

  v43 = 0;
  v76 = v79 + 32;
  v77 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v74 = (v13 + 8);
  v75 = (v13 + 16);
  while (2)
  {
    if (v43 < *(v79 + 16))
    {
      v44 = (v76 + 24 * v43);
      v45 = v44[1];
      v73 = *v44;
      v46 = v44[2];
      v80 = v43 + 1;
      (*v75)(v42, v82 + v77, v12);
      v47 = *(v45 + 16);

      v81 = v46;

      v48 = 0;
      do
      {
        if (v47 == v48)
        {
          (*v74)(v42, v12);
          goto LABEL_10;
        }

        v49 = v48 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v50 = sub_20C13C894();
        v48 = v49;
      }

      while ((v50 & 1) == 0);
      (*v74)(v42, v12);
      v51 = *(v26 + 128);
      v52 = *(v26 + 144);
      v53 = *(v26 + 96);
      v84[7] = *(v26 + 112);
      v85 = v51;
      v86 = v52;
      v87 = *(v26 + 160);
      v54 = *(v26 + 80);
      v84[4] = *(v26 + 64);
      v84[5] = v54;
      v84[6] = v53;
      v55 = *(v26 + 16);
      v84[0] = *v26;
      v84[1] = v55;
      v56 = *(v26 + 48);
      v84[2] = *(v26 + 32);
      v84[3] = v56;
      v57 = sub_20B5EAF8C(v84);
      if (v57 == 1)
      {
        v58 = 0;
        v59 = 0;
      }

      else
      {
        v58 = *(&v85 + 1);
        v59 = v86;
      }

      v60 = v81;
      v72 = v67;
      v83[0] = v58;
      v83[1] = v59;
      MEMORY[0x28223BE20](v57);
      v67[-2] = v83;
      v61 = sub_20B796758(sub_20B5EB0CC, &v67[-4], v60);

      if ((v61 & 1) == 0)
      {
LABEL_10:

        v43 = v80;
        if (v80 == v78)
        {
          goto LABEL_20;
        }

        continue;
      }

      sub_20B5E2E18();
      v62 = sub_20C13D374();
      v64 = v68;
      v63 = v69;
      *v68 = v62;
      v65 = v70;
      (*(v63 + 104))(v64, *MEMORY[0x277D85200], v70);
      v66 = sub_20C13C584();
      result = (*(v63 + 8))(v64, v65);
      if ((v66 & 1) == 0)
      {
        goto LABEL_28;
      }

      sub_20B61F5C0(v73, v45, v81, v82, 1, v67[0]);

      goto LABEL_23;
    }

    break;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20BFB9E98(char *a1)
{
  v2 = sub_20C13C554();
  v126 = *(v2 - 8);
  v127 = v2;
  MEMORY[0x28223BE20](v2);
  v125 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_20C132EE4();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v129 = *(v5 - 8);
  v130 = v5;
  MEMORY[0x28223BE20](v5);
  v128 = &v119 - v6;
  v139 = sub_20C135524();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v131 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8);
  MEMORY[0x28223BE20](v8 - 8);
  v132 = (&v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v135 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810);
  MEMORY[0x28223BE20](v12 - 8);
  v138 = &v119 - v13;
  v14 = sub_20C134EC4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v134 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v119 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v119 - v26;
  v28 = *(v15 + 16);
  v136 = a1;
  v28(&v119 - v26, a1, v14, v25);
  (*(v15 + 56))(v27, 0, 1, v14);
  v29 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterRoot;
  v30 = *(v18 + 56);
  sub_20B52F9E8(v27, v20, &qword_27C7649E0);
  v133 = v29;
  sub_20B52F9E8(v140 + v29, &v20[v30], &qword_27C7649E0);
  v31 = *(v15 + 48);
  if (v31(v20, 1, v14) == 1)
  {
    sub_20B520158(v27, &qword_27C7649E0);
    if (v31(&v20[v30], 1, v14) == 1)
    {
      sub_20B520158(v20, &qword_27C7649E0);
      v33 = v139;
      v32 = v140;
      goto LABEL_8;
    }

    return sub_20B520158(v20, &qword_27C7649D8);
  }

  sub_20B52F9E8(v20, v23, &qword_27C7649E0);
  if (v31(&v20[v30], 1, v14) == 1)
  {
    sub_20B520158(v27, &qword_27C7649E0);
    (*(v15 + 8))(v23, v14);
    return sub_20B520158(v20, &qword_27C7649D8);
  }

  v35 = v134;
  (*(v15 + 32))(v134, &v20[v30], v14);
  sub_20BFBF8A4(&qword_27C7649E8, MEMORY[0x277D512A8]);
  v36 = sub_20C13C894();
  v37 = *(v15 + 8);
  v37(v35, v14);
  sub_20B520158(v27, &qword_27C7649E0);
  v37(v23, v14);
  result = sub_20B520158(v20, &qword_27C7649E0);
  v33 = v139;
  v32 = v140;
  if ((v36 & 1) == 0)
  {
    return result;
  }

LABEL_8:
  v38 = type metadata accessor for FilterResultUpdated();
  v39 = *(v38 + 20);
  v40 = sub_20C133E24();
  v41 = *(v40 - 8);
  v42 = v136;
  v43 = &v136[v39];
  v44 = v138;
  (*(v41 + 16))(v138, v43, v40);
  (*(v41 + 56))(v44, 0, 1, v40);
  v45 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter;
  swift_beginAccess();
  sub_20B5DF2D4(v44, v32 + v45, &qword_27C766810);
  swift_endAccess();
  v46 = *(v38 + 24);
  v47 = v137;
  v48 = v135;
  (*(v137 + 16))(v135, &v42[v46], v33);
  (*(v47 + 56))(v48, 0, 1, v33);
  v49 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
  swift_beginAccess();
  sub_20B5DF2D4(v48, v32 + v49, &qword_27C769EC8);
  result = swift_endAccess();
  v50 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem;
  v51 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  if ((~v51 & 0xF000000000000007) == 0 || ((v51 >> 57) & 0x78 | v51 & 7) != 0x13)
  {
    return result;
  }

  v52 = v51 & 0xFFFFFFFFFFFFFF8;
  v54 = *(v52 + 16);
  v53 = *(v52 + 24);
  v55 = *(v52 + 32);
  v56 = *(v52 + 48);
  v122 = *(v52 + 40);
  LODWORD(v135) = *(v52 + 56);
  v121 = *(v52 + 57);
  v57 = *(v52 + 64);
  v58 = v32 + v45;
  v59 = v53;
  v60 = v138;
  sub_20B52F9E8(v58, v138, &qword_27C766810);
  v136 = v54;
  LODWORD(v134) = v55;
  sub_20B7D4748(v54, v59, v55);
  v123 = v56;

  v124 = v57;

  LOBYTE(v55) = sub_20B84AFA0(v60);
  sub_20B520158(v60, &qword_27C766810);
  if ((v55 & 1) == 0)
  {
    v61 = v132;
    sub_20B52F9E8(v32 + v49, v132, &qword_27C769EC8);
    v62 = v137;
    v63 = v139;
    if ((*(v137 + 48))(v61, 1, v139) == 1)
    {
      sub_20B520158(v61, &qword_27C769EC8);
    }

    else
    {
      v64 = v131;
      (*(v62 + 32))(v131, v61, v63);
      v65 = sub_20BB110D4();
      (*(v62 + 8))(v64, v63);
      LODWORD(v135) = v65 | v135;
    }
  }

  v66 = v134;
  v67 = v136;
  v69 = v122;
  v68 = v123;
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  *(v70 + 24) = v59;
  *(v70 + 32) = v66;
  *(v70 + 40) = v69;
  *(v70 + 48) = v68;
  *(v70 + 56) = v135 & 1;
  *(v70 + 57) = v121;
  *(v70 + 64) = v124;
  v71 = *(v32 + v50);
  *(v32 + v50) = v70 | 0x2000000000000003;
  sub_20B7D4748(v67, v59, v66);

  sub_20B9EAE04(v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14F980;
  v73 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow);
  *(v72 + 32) = v70 | 0x2000000000000003;
  v149 = 0uLL;
  LOBYTE(v150) = 1;
  *(&v150 + 1) = 0;
  *&v151 = 0;
  BYTE8(v151) = 0x80;
  BYTE9(v151) = v73;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  LOBYTE(v155) = 0;
  *(&v155 + 1) = v72;
  *&v156[0] = MEMORY[0x277D84F90];
  *(&v156[1] + 8) = 0u;
  *(v156 + 8) = 0u;
  *(&v156[2] + 1) = 0;
  v157 = 2;
  nullsub_1(&v149);
  v74 = v67;
  v75 = v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v76 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v158[8] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v158[9] = v76;
  v159 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v77 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v158[4] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v158[5] = v77;
  v78 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v158[6] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v158[7] = v78;
  v79 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v158[0] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v158[1] = v79;
  v80 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v158[2] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v158[3] = v80;
  v81 = v156[2];
  *(v75 + 128) = v156[1];
  *(v75 + 144) = v81;
  *(v75 + 160) = v157;
  v82 = v154;
  *(v75 + 64) = v153;
  *(v75 + 80) = v82;
  v83 = v156[0];
  *(v75 + 96) = v155;
  *(v75 + 112) = v83;
  v84 = v150;
  *v75 = v149;
  *(v75 + 16) = v84;
  v85 = v152;
  *(v75 + 32) = v151;
  *(v75 + 48) = v85;

  sub_20B520158(v158, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_20B9E75BC(v74, v59, v66);
  }

  v87 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v88 = v136;
    v89 = v59;
    v90 = v66;
LABEL_36:
    sub_20B9E75BC(v88, v89, v90);

    return swift_unknownObjectRelease();
  }

  if (![*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_35:
    sub_20C0C2D50(0);
    v88 = v136;
    v89 = v59;
    v90 = v134;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v123 = v70;
  v124 = v87;
  v91 = v128;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v92 = v130;
  v93 = sub_20C13BE74();
  result = (*(v129 + 8))(v91, v92);
  v137 = *(v93 + 16);
  v138 = v93;
  if (!v137)
  {
LABEL_33:

    goto LABEL_35;
  }

  v94 = 0;
  v95 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v135 = v138 + 32;
  v132 = (v141 + 8);
  v133 = (v141 + 16);
  v120 = v59;
  v130 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  while (2)
  {
    if (v94 < *(v138 + 16))
    {
      v96 = (v135 + 24 * v94);
      v97 = v96[1];
      v131 = *v96;
      v98 = v96[2];
      ++v94;
      (*v133)(v142, v140 + v95, v143);
      v99 = *(v97 + 16);

      v139 = v98;

      v100 = 0;
      do
      {
        if (v99 == v100)
        {
          (*v132)(v142, v143);

          goto LABEL_23;
        }

        v101 = v100 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v102 = sub_20C13C894();
        v100 = v101;
      }

      while ((v102 & 1) == 0);
      (*v132)(v142, v143);
      v103 = *(v75 + 128);
      v104 = *(v75 + 144);
      v105 = *(v75 + 96);
      v145[7] = *(v75 + 112);
      v146 = v103;
      v147 = v104;
      v148 = *(v75 + 160);
      v106 = *(v75 + 80);
      v145[4] = *(v75 + 64);
      v145[5] = v106;
      v145[6] = v105;
      v107 = *(v75 + 16);
      v145[0] = *v75;
      v145[1] = v107;
      v108 = *(v75 + 48);
      v145[2] = *(v75 + 32);
      v145[3] = v108;
      v109 = sub_20B5EAF8C(v145);
      if (v109 == 1)
      {
        v110 = 0;
        v111 = 0;
      }

      else
      {
        v110 = *(&v146 + 1);
        v111 = v147;
      }

      v112 = v139;
      v144[0] = v110;
      v144[1] = v111;
      MEMORY[0x28223BE20](v109);
      *(&v119 - 2) = v144;
      v113 = sub_20B796758(sub_20B5EB0CC, (&v119 - 4), v112);

      if ((v113 & 1) == 0)
      {

        v95 = v130;
LABEL_23:
        v59 = v120;
        if (v94 == v137)
        {
          goto LABEL_33;
        }

        continue;
      }

      sub_20B5E2E18();
      v114 = sub_20C13D374();
      v116 = v125;
      v115 = v126;
      *v125 = v114;
      v117 = v127;
      (*(v115 + 104))(v116, *MEMORY[0x277D85200], v127);
      v118 = sub_20C13C584();
      result = (*(v115 + 8))(v116, v117);
      if ((v118 & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_20B61F5C0(v131, v97, v139, v140, 1, v124);
      sub_20B9E75BC(v136, v120, v134);

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_20BFBAE78()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer);
  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterRoot, &qword_27C7649E0);

  sub_20B9EAE04(*(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter, &qword_27C766810);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult, &qword_27C769EC8);
  return v0;
}

uint64_t sub_20BFBAFEC()
{
  sub_20BFBAE78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandingTextShelf()
{
  result = qword_27C771590;
  if (!qword_27C771590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFBB098()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BFBB278(319, &qword_27C7715A0, MEMORY[0x277D512A8]);
    if (v1 <= 0x3F)
    {
      sub_20BFBB278(319, &qword_27C769EB8, MEMORY[0x277D504B0]);
      if (v2 <= 0x3F)
      {
        sub_20BFBB278(319, &qword_27C769EC0, MEMORY[0x277D51980]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20BFBB278(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20BFBB2CC(char *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BFB9E98(a1);
  }

  return result;
}

uint64_t sub_20BFBB32C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFBB3A4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
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

uint64_t sub_20BFBB460()
{
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BFBF8A4(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BFBB578(void **a1)
{
  v2 = *(sub_20C1335F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0FB0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20BFBB740(v6, MEMORY[0x277D4FFF0], sub_20BFBBF90, sub_20BFBB890);
  *a1 = v3;
  return result;
}

uint64_t sub_20BFBB65C(void **a1)
{
  v2 = *(sub_20C137F24() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A103C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20BFBB740(v6, MEMORY[0x277D53B20], sub_20BFBCCC4, sub_20BFBBC88);
  *a1 = v3;
  return result;
}

uint64_t sub_20BFBB740(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_20C13DF84();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_20C13CCD4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_20BFBB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C1335F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v48 - v12;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - v14;
  v50 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v61 = (v18 - 8);
    v62 = v19;
    v57 = (v18 + 16);
    v58 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v55 = v18;
    v56 = -v20;
    v22 = a1 - a3;
    v49 = v20;
    v23 = v17 + v20 * a3;
    v63 = &v48 - v14;
    v60 = v8;
    while (2)
    {
      v53 = v21;
      v54 = a3;
      v51 = v23;
      v52 = v22;
      v25 = v21;
      while (1)
      {
        v26 = v62;
        v62(v16, v23, v8, v15);
        v26(v64, v25, v8);
        v27 = sub_20C1335E4();
        v29 = v28;
        v31 = v30;
        v32 = sub_20C1335E4();
        v35 = v34;
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (v34)
        {
          v36 = qword_20C187A70[v27] < qword_20C187A70[v32];
          v16 = v63;
          v8 = v60;
LABEL_15:
          v43 = *v61;
          (*v61)(v64, v8);
          v43(v16, v8);
          if ((v36 & 1) == 0)
          {
            goto LABEL_6;
          }

          if (!v58)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        sub_20B583F4C(v32, v33, 0);
        v8 = v60;
        v44 = *v61;
        (*v61)(v64, v60);
        v16 = v63;
        v44(v63, v8);
        if (!v58)
        {
LABEL_22:
          __break(1u);
          return;
        }

LABEL_19:
        v45 = *v57;
        v46 = v59;
        (*v57)(v59, v23, v8);
        swift_arrayInitWithTakeFrontToBack();
        v45(v25, v46, v8);
        v25 += v56;
        v23 += v56;
        if (__CFADD__(v22++, 1))
        {
          goto LABEL_6;
        }
      }

      v37 = v33;
      v38 = v32;
      sub_20B583F4C(v27, v29, 0);
      v8 = v60;
      if (v35)
      {
        goto LABEL_5;
      }

      sub_20B583F4C(v38, v37, 0);
      v16 = v63;
      v39 = sub_20C1335D4();
      v41 = v40;
      if (v39 == sub_20C1335D4() && v41 == v42)
      {

LABEL_5:
        v24 = *v61;
        (*v61)(v64, v8);
        v16 = v63;
        v24(v63, v8);
LABEL_6:
        a3 = v54 + 1;
        v21 = &v53[v49];
        v22 = v52 - 1;
        v23 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return;
        }

        continue;
      }

      break;
    }

    v36 = sub_20C13DFF4();

    goto LABEL_15;
  }
}

void sub_20BFBBC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C137F24();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C137F04();
      v27 = v26;
      if (sub_20C137F04() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BFBBF90(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_20C1335F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v150 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v164 = &v142 - v12;
  MEMORY[0x28223BE20](v13);
  v170 = &v142 - v14;
  MEMORY[0x28223BE20](v15);
  v169 = &v142 - v16;
  MEMORY[0x28223BE20](v17);
  v160 = &v142 - v18;
  MEMORY[0x28223BE20](v19);
  v159 = &v142 - v20;
  MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v22);
  v157 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_116:
    a3 = *v146;
    if (!*v146)
    {
      goto LABEL_156;
    }

    a4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v136 = a4;
    }

    else
    {
LABEL_150:
      v136 = sub_20B6A07A0(a4);
    }

    v171 = v136;
    a4 = *(v136 + 2);
    if (a4 >= 2)
    {
      while (*v157)
      {
        v137 = *&v136[16 * a4];
        v138 = v136;
        v139 = *&v136[16 * a4 + 24];
        sub_20BFBD874(&(*v157)[v9[9] * v137], &(*v157)[v9[9] * *&v136[16 * a4 + 16]], &(*v157)[v9[9] * v139], a3);
        if (v5)
        {
          goto LABEL_127;
        }

        if (v139 < v137)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_20B6A07A0(v138);
        }

        if (a4 - 2 >= *(v138 + 2))
        {
          goto LABEL_144;
        }

        v140 = &v138[16 * a4];
        *v140 = v137;
        *(v140 + 1) = v139;
        v171 = v138;
        sub_20B6A0714(a4 - 1);
        v136 = v171;
        a4 = *(v171 + 2);
        if (a4 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_154;
    }

    goto LABEL_127;
  }

  v144 = &v142 - v23;
  v143 = v24;
  v27 = 0;
  v167 = v9 + 2;
  v168 = v9 + 1;
  v166 = v9 + 4;
  v28 = MEMORY[0x277D84F90];
  v155 = v9;
  v161 = v8;
  v145 = a4;
  while (1)
  {
    v151 = v28;
    if (v27 + 1 < v26)
    {
      v158 = v26;
      v29 = *v157;
      v30 = v9[9];
      v147 = v27;
      v31 = &v29[v30 * (v27 + 1)];
      v32 = v9[2];
      v32(v144, v31, v8, v25);
      v165 = v29;
      v33 = &v29[v30 * v147];
      v34 = v143;
      v162 = v32;
      (v32)(v143, v33, v8);
      LODWORD(v163) = sub_20B80531C();
      if (!v5)
      {
        v148 = 0;
        v35 = *v168;
        (*v168)(v34, v8);
        v156 = v35;
        (v35)(v144, v8);
        v36 = v147 + 2;
        a3 = v165 + v30 * (v147 + 2);
        v37 = v30;
        v165 = v30;
        while (1)
        {
          v40 = v158;
          if (v158 == v36)
          {
            break;
          }

          v41 = v162;
          (v162)(v159, a3, v8);
          v41(v160, v31, v8);
          v42 = sub_20C1335E4();
          v44 = v43;
          v46 = v45;
          v47 = sub_20C1335E4();
          v50 = v47;
          v51 = v49;
          if (v46)
          {
            if (v49)
            {
              v38 = qword_20C187A70[v42] < qword_20C187A70[v47];
            }

            else
            {
              sub_20B583F4C(v47, v48, 0);
              v38 = 1;
            }
          }

          else
          {
            v52 = v48;
            sub_20B583F4C(v42, v44, 0);
            v38 = 0;
            if ((v51 & 1) == 0)
            {
              sub_20B583F4C(v50, v52, 0);
              v53 = sub_20C1335D4();
              v55 = v54;
              if (v53 == sub_20C1335D4() && v55 == v56)
              {

                v38 = 0;
              }

              else
              {
                v38 = sub_20C13DFF4();
              }
            }
          }

          v8 = v161;
          v39 = v156;
          (v156)(v160, v161);
          v39(v159, v8);
          ++v36;
          v37 = v165;
          a3 += v165;
          v31 += v165;
          v9 = v155;
          if ((v163 ^ v38))
          {
            v40 = v36 - 1;
            break;
          }
        }

        v5 = v148;
        v57 = v151;
        a4 = v145;
        v27 = v147;
        if (v163)
        {
          if (v40 < v147)
          {
            goto LABEL_149;
          }

          if (v147 < v40)
          {
            v58 = v37 * (v40 - 1);
            v59 = v40 * v37;
            v158 = v40;
            v60 = v40;
            v61 = v147;
            v62 = v147 * v37;
            do
            {
              if (v61 != --v60)
              {
                v63 = *v157;
                if (!*v157)
                {
                  goto LABEL_153;
                }

                a3 = &v63[v62];
                v163 = *v166;
                v163(v150, &v63[v62], v161, v57);
                if (v62 < v58 || a3 >= &v63[v59])
                {
                  v8 = v161;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v8 = v161;
                  if (v62 != v58)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                (v163)(&v63[v58], v150, v8);
                v5 = v148;
                v57 = v151;
                v37 = v165;
              }

              ++v61;
              v58 -= v37;
              v59 -= v37;
              v62 += v37;
            }

            while (v61 < v60);
            a4 = v145;
            v27 = v147;
            v40 = v158;
          }
        }

        goto LABEL_34;
      }

      v141 = *v168;
      (*v168)(v34, v8);
      v141(v144, v8);
LABEL_127:

      return;
    }

    v40 = v27 + 1;
LABEL_34:
    v64 = v157[1];
    if (v40 >= v64)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v40, v27))
    {
      goto LABEL_146;
    }

    if (v40 - v27 >= a4)
    {
LABEL_43:
      v66 = v40;
      if (v40 < v27)
      {
        goto LABEL_145;
      }

      goto LABEL_44;
    }

    if (__OFADD__(v27, a4))
    {
      goto LABEL_147;
    }

    if ((v27 + a4) >= v64)
    {
      v65 = v157[1];
    }

    else
    {
      v65 = v27 + a4;
    }

    if (v65 < v27)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v40 == v65)
    {
      goto LABEL_43;
    }

    v148 = v5;
    v111 = *v157;
    v112 = v9[9];
    v165 = v9[2];
    v113 = &v111[v112 * (v40 - 1)];
    v162 = -v112;
    v147 = v27;
    v114 = v27 - v40;
    v163 = v111;
    v149 = v112;
    v115 = &v111[v40 * v112];
    v152 = v65;
LABEL_97:
    v158 = v40;
    v153 = v115;
    v154 = v114;
    v116 = v115;
    v156 = v113;
    v117 = v113;
LABEL_98:
    v118 = v165;
    (v165)(v169, v116, v8, v25);
    v118(v170, v117, v8);
    v119 = sub_20C1335E4();
    v121 = v120;
    v123 = v122;
    v124 = sub_20C1335E4();
    v127 = v126;
    if (v123)
    {
      break;
    }

    v128 = v125;
    v129 = v124;
    sub_20B583F4C(v119, v121, 0);
    if (v127)
    {
      goto LABEL_95;
    }

    sub_20B583F4C(v129, v128, 0);
    v130 = sub_20C1335D4();
    v132 = v131;
    if (v130 != sub_20C1335D4() || v132 != v133)
    {
      a4 = sub_20C13DFF4();

      v8 = v161;
      goto LABEL_105;
    }

LABEL_95:
    a4 = v168;
    a3 = *v168;
    v8 = v161;
    (*v168)(v170, v161);
    (a3)(v169, v8);
LABEL_96:
    v40 = v158 + 1;
    v113 = &v156[v149];
    v114 = v154 - 1;
    v115 = &v153[v149];
    v66 = v152;
    if (v158 + 1 != v152)
    {
      goto LABEL_97;
    }

    v5 = v148;
    v9 = v155;
    v27 = v147;
    if (v152 < v147)
    {
      goto LABEL_145;
    }

LABEL_44:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = v151;
    }

    else
    {
      v28 = sub_20BC05740(0, *(v151 + 2) + 1, 1, v151);
    }

    a3 = *(v28 + 2);
    v67 = *(v28 + 3);
    a4 = a3 + 1;
    if (a3 >= v67 >> 1)
    {
      v28 = sub_20BC05740((v67 > 1), a3 + 1, 1, v28);
    }

    *(v28 + 2) = a4;
    v68 = &v28[16 * a3];
    *(v68 + 4) = v27;
    *(v68 + 5) = v66;
    v69 = *v146;
    if (!*v146)
    {
      goto LABEL_155;
    }

    v152 = v66;
    if (a3)
    {
      while (2)
      {
        v70 = a4 - 1;
        if (a4 >= 4)
        {
          v75 = &v28[16 * a4 + 32];
          v76 = *(v75 - 64);
          v77 = *(v75 - 56);
          v81 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          if (v81)
          {
            goto LABEL_132;
          }

          v80 = *(v75 - 48);
          v79 = *(v75 - 40);
          v81 = __OFSUB__(v79, v80);
          v73 = v79 - v80;
          v74 = v81;
          if (v81)
          {
            goto LABEL_133;
          }

          v82 = &v28[16 * a4];
          v84 = *v82;
          v83 = *(v82 + 1);
          v81 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v81)
          {
            goto LABEL_135;
          }

          v81 = __OFADD__(v73, v85);
          v86 = v73 + v85;
          if (v81)
          {
            goto LABEL_138;
          }

          if (v86 >= v78)
          {
            v104 = &v28[16 * v70 + 32];
            v106 = *v104;
            v105 = *(v104 + 1);
            v81 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v81)
            {
              goto LABEL_142;
            }

            if (v73 < v107)
            {
              v70 = a4 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v74)
            {
              goto LABEL_134;
            }

            v87 = &v28[16 * a4];
            v89 = *v87;
            v88 = *(v87 + 1);
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_137;
            }

            v93 = &v28[16 * v70 + 32];
            v95 = *v93;
            v94 = *(v93 + 1);
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_141;
            }

            if (v91 + v96 < v73)
            {
              goto LABEL_77;
            }

            if (v73 < v96)
            {
              v70 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v71 = *(v28 + 4);
            v72 = *(v28 + 5);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
            goto LABEL_63;
          }

          v97 = &v28[16 * a4];
          v99 = *v97;
          v98 = *(v97 + 1);
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_77:
          if (v92)
          {
            goto LABEL_136;
          }

          v100 = &v28[16 * v70];
          v102 = *(v100 + 4);
          v101 = *(v100 + 5);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_139;
          }

          if (v103 < v91)
          {
            break;
          }
        }

        a3 = v70 - 1;
        if (v70 - 1 >= a4)
        {
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
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v108 = v28;
        a4 = *&v28[16 * a3 + 32];
        v109 = *&v28[16 * v70 + 40];
        sub_20BFBD874(&(*v157)[v9[9] * a4], &(*v157)[v9[9] * *&v28[16 * v70 + 32]], &(*v157)[v9[9] * v109], v69);
        if (v5)
        {
          goto LABEL_127;
        }

        if (v109 < a4)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_20B6A07A0(v108);
        }

        if (a3 >= *(v108 + 2))
        {
          goto LABEL_131;
        }

        v110 = &v108[16 * a3];
        *(v110 + 4) = a4;
        *(v110 + 5) = v109;
        v171 = v108;
        sub_20B6A0714(v70);
        v28 = v171;
        a4 = *(v171 + 2);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = v157[1];
    v27 = v152;
    a4 = v145;
    if (v152 >= v26)
    {
      goto LABEL_116;
    }
  }

  if ((v126 & 1) == 0)
  {
    sub_20B583F4C(v124, v125, 0);
    v134 = *v168;
    (*v168)(v170, v8);
    v134(v169, v8);
    if (!v163)
    {
      goto LABEL_151;
    }

    goto LABEL_109;
  }

  a4 = qword_20C187A70[v119] < qword_20C187A70[v124];
LABEL_105:
  a3 = *v168;
  (*v168)(v170, v8);
  (a3)(v169, v8);
  if ((a4 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (v163)
  {
LABEL_109:
    a3 = *v166;
    a4 = v164;
    (*v166)(v164, v116, v8);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v117, a4, v8);
    v117 += v162;
    v116 += v162;
    if (__CFADD__(v114++, 1))
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_20BFBCCC4(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C137F24();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20BFBE080(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_20C137F04();
      v37 = v36;
      v38 = sub_20C137F04();
      v132 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C137F04();
        v52 = v51;
        if (sub_20C137F04() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20BFBE080(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C137F04();
    v69 = v68;
    if (sub_20C137F04() == v5 && v70 == v69)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

void sub_20BFBD874(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_20C1335F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v85 = &v73 - v14;
  MEMORY[0x28223BE20](v15);
  v84 = &v73 - v16;
  v79 = *(v17 + 72);
  if (!v79)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v79 == -1)
  {
    goto LABEL_81;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v79 == -1)
  {
    goto LABEL_82;
  }

  v19 = (a2 - a1) / v79;
  v88 = a1;
  v87 = a4;
  v83 = v8;
  if (v19 >= v18 / v79)
  {
    v21 = v18 / v79 * v79;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v21 < 1)
    {
      v50 = a4 + v21;
    }

    else
    {
      v48 = -v79;
      v76 = (v9 + 8);
      v77 = (v9 + 16);
      v49 = a4 + v21;
      v50 = a4 + v21;
      v82 = a4;
      v84 = -v79;
      do
      {
        v73 = v50;
        v51 = a2;
        v52 = a2 + v48;
        v53 = v48;
        v78 = v51;
        v79 = v52;
        while (1)
        {
          if (v51 <= a1)
          {
            v88 = v51;
            v86 = v73;
            goto LABEL_79;
          }

          v54 = a3;
          v75 = v50;
          v55 = *v77;
          v85 = &v53[v49];
          (v55)(v80);
          (v55)(v81, v52, v8);
          v56 = sub_20C1335E4();
          v58 = v57;
          v60 = v59;
          v61 = sub_20C1335E4();
          v64 = v63;
          if (v60)
          {
            if (v63)
            {
              v65 = qword_20C187A70[v56] < qword_20C187A70[v61];
            }

            else
            {
              sub_20B583F4C(v61, v62, 0);
              v65 = 1;
            }
          }

          else
          {
            v74 = v62;
            v66 = v61;
            sub_20B583F4C(v56, v58, 0);
            v65 = 0;
            if ((v64 & 1) == 0)
            {
              sub_20B583F4C(v66, v74, 0);
              v67 = sub_20C1335D4();
              v69 = v68;
              if (v67 == sub_20C1335D4() && v69 == v70)
              {

                v65 = 0;
              }

              else
              {
                v65 = sub_20C13DFF4();
              }
            }
          }

          v8 = v83;
          v53 = v84;
          a3 = (v54 + v84);
          v71 = *v76;
          (*v76)(v81, v83);
          v71(v80, v8);
          if (v65)
          {
            break;
          }

          v72 = v85;
          v50 = v85;
          v52 = v79;
          if (v54 < v49 || a3 >= v49)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v54 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v50;
          v51 = v78;
          if (v72 <= v82)
          {
            a2 = v78;
            goto LABEL_78;
          }
        }

        a2 = v79;
        if (v54 < v78 || a3 >= v78)
        {
          swift_arrayInitWithTakeFrontToBack();
          v50 = v75;
        }

        else
        {
          v50 = v75;
          if (v54 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v48 = v84;
      }

      while (v49 > v82);
    }

LABEL_78:
    v88 = a2;
    v86 = v50;
  }

  else
  {
    v20 = v19 * v79;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v81 = (a4 + v20);
    v86 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v9 + 16);
      v80 = (v9 + 16);
      v77 = (v9 + 8);
      v78 = v23;
      v24 = v85;
      do
      {
        v25 = a3;
        v26 = v78;
        (v78)(v84, a2, v8);
        (v26)(v24, a4, v8);
        v27 = sub_20C1335E4();
        v29 = v28;
        LOBYTE(v26) = v30;
        v31 = sub_20C1335E4();
        v34 = v33;
        if (v26)
        {
          if ((v33 & 1) == 0)
          {
            sub_20B583F4C(v31, v32, 0);
            v44 = *v77;
            v8 = v83;
            (*v77)(v85, v83);
            v44(v84, v8);
            a3 = v25;
            goto LABEL_32;
          }

          v35 = qword_20C187A70[v27] < qword_20C187A70[v31];
          v8 = v83;
        }

        else
        {
          v82 = a4;
          v36 = a2;
          v37 = v32;
          v38 = v31;
          sub_20B583F4C(v27, v29, 0);
          if (v34)
          {
            goto LABEL_28;
          }

          sub_20B583F4C(v38, v37, 0);
          v39 = sub_20C1335D4();
          v41 = v40;
          if (v39 == sub_20C1335D4() && v41 == v42)
          {

LABEL_28:
            v43 = *v77;
            v8 = v83;
            (*v77)(v85, v83);
            v43(v84, v8);
            a2 = v36;
            a4 = v82;
            a3 = v25;
LABEL_36:
            v46 = v79;
            v47 = a4 + v79;
            if (a1 < a4 || a1 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v87 = v47;
            a4 += v46;
            goto LABEL_44;
          }

          v35 = sub_20C13DFF4();

          a2 = v36;
          a4 = v82;
          v8 = v83;
        }

        a3 = v25;
        v45 = *v77;
        (*v77)(v85, v8);
        v45(v84, v8);
        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_32:
        v46 = v79;
        if (a1 < a2 || a1 >= a2 + v79)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v46;
LABEL_44:
        a1 += v46;
        v88 = a1;
      }

      while (a4 < v81 && a2 < a3);
    }
  }

LABEL_79:
  sub_20B6A0990(&v88, &v87, &v86);
}

void sub_20BFBE080(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_20C137F24();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C137F04();
            v51 = v50;
            if (sub_20C137F04() == v49 && v52 == v51)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C137F04();
        v31 = v30;
        if (sub_20C137F04() == v29 && v32 == v31)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A0AD4(&v73, &v72, &v71);
}

uint64_t sub_20BFBE714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  sub_20B5D8060(v18);
  v6 = v18[9];
  *(v5 + 128) = v18[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v19;
  v7 = v18[5];
  *(v5 + 64) = v18[4];
  *(v5 + 80) = v7;
  v8 = v18[7];
  *(v5 + 96) = v18[6];
  *(v5 + 112) = v8;
  v9 = v18[1];
  *v5 = v18[0];
  *(v5 + 16) = v9;
  v10 = v18[3];
  *(v5 + 32) = v18[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = 0xF000000000000007;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = 1;
  v11 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter;
  v12 = sub_20C133E24();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
  v14 = sub_20C135524();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_eventHub) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v17, v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder);
  sub_20B52F9E8(a2, v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterRoot, &qword_27C7649E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v17, v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_20C13A914();
  sub_20B520158(a2, &qword_27C7649E0);
  *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_subscriptionToken) = v15;
  return v3;
}

uint64_t sub_20BFBE9B4()
{
  v0 = sub_20C137F24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134304();
  v16 = MEMORY[0x277D84F90];
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = *(v6 + 64);
    v13[1] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v14 = *(v6 + 56);
    v15 = v7;
    do
    {
      v15(v3, v9, v0);
      v10 = sub_20C137EE4();
      MEMORY[0x28223BE20](v10);
      v13[-2] = v3;
      v11 = sub_20BE15A0C(MEMORY[0x277D84F90], sub_20BFBF8EC, &v13[-4], v10);

      (*(v6 - 8))(v3, v0);
      sub_20B8DB830(v11);
      v9 += v14;
      --v5;
    }

    while (v5);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_20BFBEB8C(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v113 = *(v2 - 8);
  v114 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C554();
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v107 = (&v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C132EE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v117 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v111 = *(v10 - 8);
  v112 = v10;
  MEMORY[0x28223BE20](v10);
  v110 = &v99 - v11;
  v115 = sub_20C134F24();
  v12 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v99 - v16;
  v18 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v18);
  v20 = (&v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x13)
  {
    sub_20C13B534();

    v62 = sub_20C13BB74();
    v63 = sub_20C13D1D4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v132[0] = v65;
      *v64 = 136446210;
      *&v123 = a1;

      v66 = sub_20C13C9D4();
      v68 = sub_20B51E694(v66, v67, v132);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_20B517000, v62, v63, "Expanding text shelf action triggered for item: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x20F2F6A40](v65, -1, -1);
      MEMORY[0x20F2F6A40](v64, -1, -1);
    }

    return v113[1](v4, v114);
  }

  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v114 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v106 = v22;
  LODWORD(v105) = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
  v102 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
  v103 = v23;
  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x38);
  LODWORD(v101) = *(v21 + 57);
  v104 = *(v21 + 64);
  v25 = sub_20C136664();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = MEMORY[0x277D513E0];
  if (!v24)
  {
    v26 = MEMORY[0x277D513E8];
  }

  (*(v12 + 104))(v14, *v26, v115);
  v27 = v18[6];
  v28 = sub_20C132C14();
  (*(*(v28 - 8) + 56))(v20 + v27, 1, 1, v28);
  v29 = v18[8];
  v30 = sub_20C135ED4();
  (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
  v31 = v18[10];
  v32 = *MEMORY[0x277D51768];
  v33 = sub_20C1352E4();
  (*(*(v33 - 8) + 104))(v20 + v31, v32, v33);
  v34 = v18[11];
  v35 = sub_20C136E94();
  (*(*(v35 - 8) + 56))(v20 + v34, 1, 1, v35);
  v36 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20BABA860(v17, v20);
  (*(v12 + 32))(v20 + v18[5], v14, v115);
  *(v20 + v18[7]) = xmmword_20C16AC20;
  v37 = v20 + v18[9];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v20 + v18[12]) = v36;
  v38 = v116;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FE38(v38, v20, Strong);
    swift_unknownObjectRelease();
  }

  v113 = v20;
  v40 = swift_allocObject();
  v41 = v114;
  v42 = v106;
  *(v40 + 16) = v114;
  *(v40 + 24) = v42;
  v43 = v105;
  *(v40 + 32) = v105;
  *(v40 + 40) = v102;
  v44 = v104;
  *(v40 + 48) = v103;
  *(v40 + 56) = 1;
  *(v40 + 57) = v101;
  *(v40 + 64) = v44;
  v115 = v40 | 0x2000000000000003;
  v45 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v40 | 0x2000000000000003;

  sub_20B7D4748(v41, v42, v43);
  sub_20B9EAE04(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F980;
  *(v46 + 32) = v115;
  v47 = v40;
  v48 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow);
  v123 = 0uLL;
  LOBYTE(v124) = 1;
  *(&v124 + 1) = 0;
  *&v125 = 0;
  BYTE8(v125) = 0x80;
  BYTE9(v125) = v48;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  LOBYTE(v129) = 0;
  *(&v129 + 1) = v46;
  *&v130[0] = MEMORY[0x277D84F90];
  *(&v130[1] + 8) = 0u;
  *(v130 + 8) = 0u;
  *(&v130[2] + 1) = 0;
  v131 = 2;
  nullsub_1(&v123);
  v49 = v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v50 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v132[8] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v132[9] = v50;
  v133 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v51 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v132[4] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v132[5] = v51;
  v52 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v132[6] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v132[7] = v52;
  v53 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v132[0] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v132[1] = v53;
  v54 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v132[2] = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v132[3] = v54;
  v55 = v130[2];
  *(v49 + 128) = v130[1];
  *(v49 + 144) = v55;
  *(v49 + 160) = v131;
  v56 = v128;
  *(v49 + 64) = v127;
  *(v49 + 80) = v56;
  v57 = v130[0];
  *(v49 + 96) = v129;
  *(v49 + 112) = v57;
  v58 = v124;
  *v49 = v123;
  *(v49 + 16) = v58;
  v59 = v126;
  *(v49 + 32) = v125;
  *(v49 + 48) = v59;

  sub_20B520158(v132, &qword_27C762340);
  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {
    goto LABEL_9;
  }

  if (*&v60[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    swift_unknownObjectRelease();
LABEL_9:

LABEL_10:
    v61 = v113;
    return sub_20BE9B9EC(v61, type metadata accessor for ShelfMetricAction);
  }

  v101 = v47;
  v100 = v60;
  v70 = [*&v60[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v71 = v113;
  if (!v70)
  {
LABEL_31:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    v61 = v71;
    return sub_20BE9B9EC(v61, type metadata accessor for ShelfMetricAction);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v72 = v110;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v73 = v112;
  v74 = sub_20C13BE74();
  result = v111[1](v72, v73);
  v111 = *(v74 + 16);
  v112 = v74;
  if (!v111)
  {
LABEL_29:

    v71 = v113;
    goto LABEL_31;
  }

  v75 = 0;
  v110 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v105 = (v8 + 16);
  v106 = (v112 + 32);
  v104 = (v8 + 8);
  while (2)
  {
    if (v75 < *(v112 + 16))
    {
      v76 = &v106[24 * v75];
      v77 = v76[1];
      v103 = *v76;
      v78 = v76[2];
      v114 = (v75 + 1);
      (*v105)(v117, &v110[v38], v7);
      v79 = *(v77 + 16);

      v115 = v78;

      v80 = 0;
      do
      {
        if (v79 == v80)
        {
          (*v104)(v117, v7);
          goto LABEL_19;
        }

        v81 = v80 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v82 = sub_20C13C894();
        v80 = v81;
      }

      while ((v82 & 1) == 0);
      (*v104)(v117, v7);
      v83 = *(v49 + 128);
      v84 = *(v49 + 144);
      v85 = *(v49 + 96);
      v119[7] = *(v49 + 112);
      v120 = v83;
      v121 = v84;
      v122 = *(v49 + 160);
      v86 = *(v49 + 80);
      v119[4] = *(v49 + 64);
      v119[5] = v86;
      v119[6] = v85;
      v87 = *(v49 + 16);
      v119[0] = *v49;
      v119[1] = v87;
      v88 = *(v49 + 48);
      v119[2] = *(v49 + 32);
      v119[3] = v88;
      v89 = sub_20B5EAF8C(v119);
      if (v89 == 1)
      {
        v90 = 0;
        v91 = 0;
      }

      else
      {
        v90 = *(&v120 + 1);
        v91 = v121;
      }

      v92 = v115;
      v102 = &v99;
      v118[0] = v90;
      v118[1] = v91;
      MEMORY[0x28223BE20](v89);
      *(&v99 - 2) = v118;
      v93 = sub_20B796758(sub_20B5EAFA4, (&v99 - 4), v92);

      if ((v93 & 1) == 0)
      {
LABEL_19:

        v75 = v114;
        v38 = v116;
        if (v114 == v111)
        {
          goto LABEL_29;
        }

        continue;
      }

      sub_20B5E2E18();
      v94 = sub_20C13D374();
      v96 = v107;
      v95 = v108;
      *v107 = v94;
      v97 = v109;
      (*(v95 + 104))(v96, *MEMORY[0x277D85200], v109);
      v98 = sub_20C13C584();
      result = (*(v95 + 8))(v96, v97);
      if ((v98 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_20B61F5C0(v103, v77, v115, v116, 1, v100);

      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    break;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_20BFBF8A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BFBF908()
{
  result = qword_27C7715A8;
  if (!qword_27C7715A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7715A8);
  }

  return result;
}

unint64_t sub_20BFBF95C()
{
  result = qword_27C7715B0;
  if (!qword_27C7715B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7715B0);
  }

  return result;
}

id sub_20BFBF9B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonAction(0);
  sub_20B64EF10(v3 + *(v9 + 28), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
    v12 = *(v11 + 48);
    sub_20B520158(&v8[*(v11 + 64)], &unk_27C768660);
    sub_20B520158(&v8[v12], &qword_27C7622F0);
    if (v10)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
    }

    else
    {
      v13 = v3[4];
      v18 = v3[5];
      v14 = *v3;
      v15 = v3[1];
      v16 = v3[2];
      v17 = v3[3];
    }

    v28[0] = v13;
    v28[1] = v18;
    v28[2] = v14;
    v28[3] = v15;
    v28[4] = v16;
    v28[5] = v17;
    type metadata accessor for ActionLoadingButton();
    v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
    sub_20BAC1A24(v28);
    sub_20BAC1CF0(v13, v18);
  }

  else
  {
    sub_20BFBFCFC(v8);
    v19 = [objc_opt_self() whiteColor];
    type metadata accessor for RoundedButton();
    v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
    [v20 setTitle:0 forState:0];
    v21 = v20;
    v22 = [v21 titleLabel];
    if (v22)
    {
      v23 = v22;
      [v22 setAdjustsFontForContentSizeCategory_];
    }

    sub_20BD4F054(0, 0, 1, 0);
    [v21 setTintColor_];

    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v21 setBackgroundColor_];
    [v21 setTintColor_];
    if (v3[5])
    {
      v24 = sub_20C13C914();
    }

    else
    {
      v24 = 0;
    }

    [v21 setTitle:v24 forState:0];

    if (v3[3])
    {
      v25 = sub_20C13C914();
      v26 = [objc_opt_self() systemImageNamed_];

      [v21 setImage:v26 forState:0];
    }
  }

  return v21;
}

uint64_t sub_20BFBFCFC(uint64_t a1)
{
  v2 = type metadata accessor for ButtonAction.ActionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SMUTVFocusableTextView.withPadding(_:)()
{
  sub_20BFBFE48();

  return swift_unknownObjectRetain();
}

uint64_t SMUTVFocusableTextView.withMaximumNumberOfLines(_:)(uint64_t a1)
{
  sub_20BFBFE70(a1);

  return swift_unknownObjectRetain();
}

uint64_t SMUTVFocusableTextView.withDescriptionTextColor(_:)(uint64_t a1)
{
  sub_20BFBFE9C(a1);

  return swift_unknownObjectRetain();
}

uint64_t SMUTVFocusableTextView.withMoreLabelTextColor(_:)(uint64_t a1)
{
  sub_20BFBFEC8(a1);

  return swift_unknownObjectRetain();
}

uint64_t SMUTVFocusableTextView.withDescriptionTextFocusedColor(_:)(uint64_t a1)
{
  sub_20BFBFEF4(a1);

  return swift_unknownObjectRetain();
}

uint64_t SMUTVFocusableTextView.withFocusedBackgroundColor(_:)(uint64_t a1)
{
  sub_20BFBFF20(a1);

  return swift_unknownObjectRetain();
}

id sub_20BFBFF7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopTransitionAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BFBFFD4(id a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI21PopTransitionAnimator_isPresenting) == 1)
  {
    v3 = [a1 viewControllerForKey_];
    if (!v3)
    {
      return;
    }

    v4 = v3;
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];

      v7 = [a1 containerView];
      v8 = [v4 view];
      if (v8)
      {
        v9 = v8;
        v59 = v1;
        [v7 addSubview_];

        v10 = [v4 view];
        if (v10)
        {
          v11 = v10;
          v61 = objc_opt_self();
          v12 = [a1 containerView];
          v14 = *MEMORY[0x277D768C8];
          v13 = *(MEMORY[0x277D768C8] + 8);
          v15 = *(MEMORY[0x277D768C8] + 16);
          v16 = *(MEMORY[0x277D768C8] + 24);
          v17 = [v11 leadingAnchor];
          v18 = [v12 leadingAnchor];
          v19 = [v17 constraintEqualToAnchor:v18 constant:v13];

          LODWORD(v20) = 1148846080;
          [v19 setPriority_];
          v60 = v19;
          v21 = [v11 trailingAnchor];
          v22 = [v12 trailingAnchor];
          v23 = [v21 &selRef_passwordEntryCancelledHandler + 6];

          LODWORD(v24) = 1148846080;
          [v23 &selRef_meterUnit];
          v25 = v23;
          v26 = [v11 topAnchor];
          v27 = [v12 topAnchor];
          v28 = [v26 &selRef_passwordEntryCancelledHandler + 6];

          LODWORD(v29) = 1148846080;
          [v28 &selRef_meterUnit];
          v30 = [v11 bottomAnchor];
          v31 = [v12 bottomAnchor];
          v32 = [v30 constraintEqualToAnchor:v31 constant:-v15];

          LODWORD(v33) = 1148846080;
          [v32 &selRef_meterUnit];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_20C14FE90;
          *(v34 + 32) = v60;
          *(v34 + 40) = v25;
          *(v34 + 48) = v28;
          *(v34 + 56) = v32;
          v35 = v28;

          sub_20B5E29D0();
          v36 = sub_20C13CC54();

          [v61 activateConstraints_];

          v37 = [v4 view];
          if (v37)
          {
            v38 = v37;
            [v37 setAlpha_];

            v39 = [v4 view];
            if (v39)
            {
              v40 = v39;
              aBlock.a = 1.0;
              aBlock.b = 0.0;
              aBlock.c = 0.0;
              aBlock.d = 1.0;
              aBlock.tx = 0.0;
              aBlock.ty = 0.0;
              [v39 setTransform_];

              v41 = [v4 view];
              if (v41)
              {
                v42 = v41;
                CGAffineTransformMakeScale(&aBlock, 0.88, 0.88);
                [v42 setTransform_];

                [v59 transitionDuration_];
                v44 = v43;
                v45 = objc_opt_self();
                v46 = swift_allocObject();
                *(v46 + 16) = v4;
                *&aBlock.tx = sub_20BFC095C;
                *&aBlock.ty = v46;
                *&aBlock.a = MEMORY[0x277D85DD0];
                *&aBlock.b = 1107296256;
                *&aBlock.c = sub_20B7B548C;
                *&aBlock.d = &block_descriptor_13_3;
                v47 = _Block_copy(&aBlock);
                v48 = v4;

                v49 = swift_allocObject();
                *(v49 + 16) = a1;
                *&aBlock.tx = sub_20BFC0964;
                *&aBlock.ty = v49;
                *&aBlock.a = MEMORY[0x277D85DD0];
                *&aBlock.b = 1107296256;
                *&aBlock.c = sub_20B5E3874;
                *&aBlock.d = &block_descriptor_19_5;
                v50 = _Block_copy(&aBlock);
                swift_unknownObjectRetain();

                [v45 animateWithDuration:v47 animations:v50 completion:v44];
                goto LABEL_12;
              }

LABEL_19:
              __break(1u);
              return;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v51 = [a1 viewControllerForKey_];
  if (!v51)
  {
    return;
  }

  v52 = v51;
  [v1 transitionDuration_];
  v54 = v53;
  v55 = objc_opt_self();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v1;
  *&aBlock.tx = sub_20BFC0954;
  *&aBlock.ty = v56;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_168;
  v47 = _Block_copy(&aBlock);
  v48 = v52;
  v57 = v1;

  v58 = swift_allocObject();
  *(v58 + 16) = a1;
  *&aBlock.tx = sub_20BFC09D0;
  *&aBlock.ty = v58;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B5E3874;
  *&aBlock.d = &block_descriptor_7_1;
  v50 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v55 animateWithDuration:v47 animations:v50 completion:v54];
LABEL_12:
  _Block_release(v50);
  _Block_release(v47);
}

void sub_20BFC0778(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];

    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      v6[0] = 0x3FF0000000000000;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BFC0820(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];

    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      CGAffineTransformMakeScale(&v6, 0.88, 0.88);
      [v5 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20BFC0968()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition_];
}

uint64_t ShareSheetError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BFC0A60()
{
  result = qword_27C7715D0;
  if (!qword_27C7715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7715D0);
  }

  return result;
}

uint64_t sub_20BFC0AC4(uint64_t a1)
{
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC0B60, 0, 0);
}

uint64_t sub_20BFC0B60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BFC0C50;

    return sub_20BFC5134();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BFC0C50()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_20BFC0DA8;
  v4 = *(v1 + 48);

  return sub_20B523A0C(v4);
}

uint64_t sub_20BFC0DA8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_20B520158(v2, &unk_27C76A970);

  return MEMORY[0x2822009F8](sub_20BFC54CC, v1, 0);
}

uint64_t sub_20BFC0EE4(uint64_t a1)
{
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC0F80, 0, 0);
}

uint64_t sub_20BFC0F80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_20BFC1070;

    return sub_20BFC5134();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BFC1070()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_20BFC11C8;
  v4 = *(v1 + 48);

  return sub_20B523A0C(v4);
}

uint64_t sub_20BFC11C8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_20B520158(v2, &unk_27C76A970);

  return MEMORY[0x2822009F8](sub_20BFC1304, v1, 0);
}

uint64_t sub_20BFC1304()
{
  swift_getObjectType();
  sub_20BCD7B4C();
  sub_20C13A764();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC13A8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20C13BB84();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC1468, v1, 0);
}

uint64_t sub_20BFC1468()
{
  v1 = *(v0[12] + 176);
  v0[16] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[17] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    *v2 = v0;
    v2[1] = sub_20BFC15D4;
    v5 = v0[11];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5, v1, v3, v4, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_20BFC1768;
    v8 = v0[11];

    return sub_20B523A0C(v8);
  }
}

uint64_t sub_20BFC15D4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_20BFC1878;
  }

  else
  {
    v4 = sub_20BFC1700;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20BFC1700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFC1768()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BFC1878()
{
  swift_getErrorValue();
  v1 = sub_20C134E24();
  v0[5] = v1;
  v0[6] = sub_20BC04434();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D511A8], v1);
  v3 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[18];
  if (v3)
  {
  }

  else
  {
    sub_20C13B454();
    v5 = v4;
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1D4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[18];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_20B517000, v6, v7, "[ActiveWorkoutPlanProvider] Failed to query workout plan with error: %@", v10, 0xCu);
      sub_20B520158(v11, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v11, -1, -1);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    else
    {
    }

    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  v14 = v0[11];
  v15 = sub_20C133954();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_20BFC1AFC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C13BB84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFC1BBC, v1, 0);
}

uint64_t sub_20BFC1BBC()
{
  v1 = *(v0[3] + 184);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    *v2 = v0;
    v2[1] = sub_20BFC1D28;
    v5 = v0[2];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5, v1, v3, v4, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_20BFC1EBC;
    v8 = v0[2];

    return sub_20BFC3B94(v8);
  }
}

uint64_t sub_20BFC1D28()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_20BFC1FCC;
  }

  else
  {
    v4 = sub_20BFC1E54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20BFC1E54()
{

  v1 = *(v0 + 8);

  return v1();
}