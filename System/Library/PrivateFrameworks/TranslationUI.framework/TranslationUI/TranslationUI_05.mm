void sub_26F41C7DC(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_26F41C844(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_26F41C8E4;
}

void sub_26F41C8E4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

char *LanguagesViewController.init(initialSelection:showsCloseButton:requireOnDevice:)(uint64_t a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl] = 0;
  v6 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v7 = type metadata accessor for LanguageSelectionModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v3[v6] = sub_26F3ED628();
  *&v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_subscriptions] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_showsCloseButton] = a2;
  v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_requireOnDevice] = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for LanguagesViewController();
  v10 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v11 = *&v10[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDB8();
  return v10;
}

void (*sub_26F41CBFC(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v5[4] = v7;
  v5[5] = v8;
  v9 = *(v1 + v8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  return sub_26F41CD6C;
}

uint64_t sub_26F41CD80(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();
}

uint64_t sub_26F41CE10(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_26F3E718C(a1, &v16 - v12);
  v14 = *(*a2 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel);
  sub_26F3E718C(v13, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3E718C(v11, v8);

  sub_26F49DDB8();
  sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
  return sub_26F3B6B4C(v13, &qword_2806DEFD8, &qword_26F4A3670);
}

uint64_t sub_26F41CF94()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();
}

uint64_t sub_26F41D030(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel);
  sub_26F3E718C(a1, &v12 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3E718C(v9, v6);

  sub_26F49DDB8();
  sub_26F3B6B4C(a1, &qword_2806DEFD8, &qword_26F4A3670);
  return sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
}

void (*sub_26F41D164(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v5[4] = v7;
  v5[5] = v8;
  v9 = *(v1 + v8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  return sub_26F41D2D4;
}

void sub_26F41D2E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_26F3E718C((*a1)[4], v6);
    v9 = *(v8 + v4);
    sub_26F3E718C(v6, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F3E718C(v5, v7);

    sub_26F49DDB8();
    sub_26F3B6B4C(v5, &qword_2806DEFD8, &qword_26F4A3670);
  }

  else
  {
    v10 = *(v8 + v4);
    sub_26F3E718C((*a1)[4], v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F3E718C(v6, v5);

    sub_26F49DDB8();
  }

  sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v3, &qword_2806DEFD8, &qword_26F4A3670);
  free(v3);
  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

void sub_26F41D46C()
{
  v1 = v0;
  v96.receiver = v0;
  v96.super_class = type metadata accessor for LanguagesViewController();
  objc_msgSendSuper2(&v96, sel_viewDidLoad);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0140, &qword_26F4A6670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F4A3B80;
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v94 = objc_opt_self();
  v4 = [v94 bundleForClass_];
  v5 = sub_26F49D7D8();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v9 = [v94 byte_279DD743B];
  v10 = sub_26F49D7D8();
  v12 = v11;

  *(v2 + 88) = v8;
  *(v2 + 64) = v10;
  *(v2 + 72) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277D75A08]);
  v14 = sub_26F49FAD8();

  v15 = [v13 initWithItems_];

  [v15 addTarget:v1 action:sel_updateSelectedTarget forControlEvents:4096];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v93 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v17 = *&v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  [v16 setSelectedSegmentIndex_];
  [v16 sizeToFit];
  [v16 frame];
  Height = CGRectGetHeight(v97);
  v19 = *&v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl];
  *&v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl] = v16;
  v20 = v16;

  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v21 addSubview_];
  v92 = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D76118]) initWithContentView_];
  v23 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26F4A71F0;
  v25 = [v20 heightAnchor];
  v26 = [v25 constraintGreaterThanOrEqualToConstant_];

  *(v24 + 32) = v26;
  v27 = [v20 topAnchor];
  v28 = v22;
  v29 = [v28 topAnchor];
  v30 = [v27 constraintEqualToAnchor_];

  *(v24 + 40) = v30;
  v31 = [v20 leadingAnchor];
  v32 = [v28 safeAreaLayoutGuide];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:20.0];
  *(v24 + 48) = v34;
  v35 = [v28 safeAreaLayoutGuide];
  v36 = [v35 trailingAnchor];

  v37 = [v20 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:20.0];

  *(v24 + 56) = v38;
  v39 = [v28 bottomAnchor];

  v40 = [v20 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:8.0];

  *(v24 + 64) = v41;
  sub_26F3B0C24(0, &qword_2806E04A8, 0x277CCAAD0);
  v42 = sub_26F49FAD8();

  v91 = v23;
  [v23 activateConstraints_];

  [v28 setPreferredHeight_];
  v43 = [v1 navigationItem];
  [v43 _setBottomPalette_];

  v44 = [v1 navigationItem];
  v45 = [v94 bundleForClass_];
  sub_26F49D7D8();

  v46 = sub_26F49F898();

  [v44 setTitle_];

  if (v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_showsCloseButton] == 1)
  {
    v47 = [v1 navigationItem];
    v48 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_closeActionWithSender_];
    [v47 setRightBarButtonItem_];
  }

  v49 = [v1 view];
  if (!v49)
  {
    __break(1u);
    goto LABEL_17;
  }

  v50 = v49;
  v51 = [objc_opt_self() systemGroupedBackgroundColor];
  [v50 setBackgroundColor_];

  v52 = *&v1[v93];
  v53 = v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_requireOnDevice];
  type metadata accessor for LanguageSelectionModel();
  sub_26F41FE6C(&qword_2806E04B0, type metadata accessor for LanguageSelectionModel);

  sub_26F49E288();
  v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04B8, &unk_26F4A72F0));
  v55 = sub_26F49E858();
  v56 = [v55 view];
  if (!v56)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v57 = v56;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v59 = v58;
  v60 = [v55 view];
  if (!v60)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v61 = v60;
  [v59 addSubview_];

  [v55 didMoveToParentViewController_];
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26F4A7200;
  v63 = [v55 view];
  if (!v63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v64 = v63;
  v65 = [v63 topAnchor];

  v66 = [v1 view];
  if (!v66)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v67 = v66;
  v68 = [v66 topAnchor];

  v69 = [v65 constraintEqualToAnchor_];
  *(v62 + 32) = v69;
  v70 = [v55 view];
  if (!v70)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v71 = v70;
  v72 = [v70 leadingAnchor];

  v73 = [v1 view];
  if (!v73)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v74 = v73;
  v75 = [v73 leadingAnchor];

  v76 = [v72 constraintEqualToAnchor_];
  *(v62 + 40) = v76;
  v77 = [v1 view];
  if (!v77)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v78 = v77;
  v79 = [v77 trailingAnchor];

  v80 = [v55 view];
  if (!v80)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v81 = v80;
  v82 = [v80 trailingAnchor];

  v83 = [v79 constraintEqualToAnchor_];
  *(v62 + 48) = v83;
  v84 = [v1 view];
  if (!v84)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v85 = v84;
  v86 = [v84 bottomAnchor];

  v87 = [v55 view];
  if (v87)
  {
    v88 = [v87 bottomAnchor];

    v89 = [v86 constraintEqualToAnchor_];
    *(v62 + 56) = v89;
    v90 = sub_26F49FAD8();

    [v91 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_26F41E09C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F0, &qword_26F4A68A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04C0, &qword_26F4A7300);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04C8, &qword_26F4A7308);
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v54 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04D0, &qword_26F4A7310);
  v84 = *(v80 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v80);
  v18 = v54 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04D8, &qword_26F4A7318);
  v86 = *(v81 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x28223BE20](v81);
  v21 = v54 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04E0, &unk_26F4A7320);
  v87 = *(v82 - 8);
  v22 = *(v87 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = v54 - v23;
  v24 = type metadata accessor for LanguagesViewController();
  v89.receiver = v2;
  v89.super_class = v24;
  objc_msgSendSuper2(&v89, sel_viewWillAppear_, a1 & 1);
  v25 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_subscriptions;
  swift_beginAccess();
  v61 = v25;
  v26 = *&v2[v25];
  *&v2[v25] = MEMORY[0x277D84F90];

  v78 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v27 = *&v2[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel];
  swift_beginAccess();

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE08, &qword_26F4A5B18);
  sub_26F49DD78();
  swift_endAccess();

  v76 = sub_26F3B18CC(&qword_2806E04E8, &qword_2806E04C0, &qword_26F4A7300);
  v73 = v7;
  v69 = v11;
  sub_26F49DE18();
  v28 = *(v8 + 8);
  v74 = v8 + 8;
  v75 = v28;
  v28(v11, v7);
  v72 = sub_26F49DAB8();
  v71 = sub_26F3B18CC(&qword_2806E04F0, &qword_2806E04C8, &qword_26F4A7308);
  v68 = v12;
  v57 = v15;
  sub_26F49DDE8();
  v29 = *(v85 + 8);
  v85 += 8;
  v70 = v29;
  v29(v15, v12);
  v67 = sub_26F3B18CC(&qword_2806E04F8, &qword_2806E04D0, &qword_26F4A7310);
  v66 = sub_26F41FE6C(qword_2806E07F0, MEMORY[0x277CC9788]);
  v30 = v21;
  v31 = v80;
  sub_26F49DE28();
  v32 = *(v84 + 8);
  v84 += 8;
  v65 = v32;
  v32(v18, v31);
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v33 = sub_26F49FE58();
  v88 = v33;
  v63 = sub_26F49FE38();
  v34 = *(v63 - 8);
  v62 = *(v34 + 56);
  v64 = v34 + 56;
  v35 = v83;
  v62(v83, 1, 1, v63);
  v60 = sub_26F3B18CC(&qword_2806E0500, &qword_2806E04D8, &qword_26F4A7318);
  v59 = sub_26F40DBE8();
  v36 = v79;
  v37 = v81;
  sub_26F49DE08();
  sub_26F3B6B4C(v35, &qword_2806E01F0, &qword_26F4A68A8);

  v38 = *(v86 + 8);
  v86 += 8;
  v58 = v38;
  v39 = v30;
  v38(v30, v37);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_26F3B18CC(&qword_2806E0508, &qword_2806E04E0, &unk_26F4A7320);
  v40 = v82;
  sub_26F49DE38();

  v41 = *(v87 + 8);
  v87 += 8;
  v55 = v41;
  v41(v36, v40);
  swift_beginAccess();
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0218, &unk_26F4A68D0);
  v54[0] = sub_26F3B18CC(&unk_280F656D0, &qword_2806E0218, &unk_26F4A68D0);
  sub_26F49DD38();
  swift_endAccess();

  v42 = *&v2[v78];
  swift_beginAccess();

  v43 = v69;
  sub_26F49DD78();
  swift_endAccess();

  v44 = v57;
  v45 = v73;
  sub_26F49DE18();
  v75(v43, v45);
  v46 = v68;
  sub_26F49DDE8();
  v70(v44, v46);
  v47 = v80;
  sub_26F49DE28();
  v65(v18, v47);
  v48 = sub_26F49FE58();
  v88 = v48;
  v49 = v83;
  v62(v83, 1, 1, v63);
  v50 = v79;
  v51 = v81;
  sub_26F49DE08();
  sub_26F3B6B4C(v49, &qword_2806E01F0, &qword_26F4A68A8);

  v58(v39, v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v82;
  sub_26F49DE38();

  v55(v50, v52);
  swift_beginAccess();
  sub_26F49DD38();
  swift_endAccess();
}

void sub_26F41EBB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v13 = sub_26F49DCA8();
  __swift_project_value_buffer(v13, qword_280F67EB8);
  v36 = *(v9 + 16);
  v36(v12, a1, v8);
  v14 = sub_26F49DC88();
  v15 = sub_26F49FDB8();
  v16 = os_log_type_enabled(v14, v15);
  v37 = v9;
  v38 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v35 = a2;
    v18 = v17;
    v33 = swift_slowAlloc();
    v34 = v7;
    v39[0] = v33;
    *v18 = 136446210;
    v39[7] = sub_26F49D988();
    v39[8] = v19;
    v39[4] = 45;
    v39[5] = 0xE100000000000000;
    v39[1] = 95;
    v39[2] = 0xE100000000000000;
    sub_26F3BDC0C();
    v20 = sub_26F49FFF8();
    v22 = v21;
    (*(v9 + 8))(v12, v8);

    v23 = sub_26F3B38D0(v20, v22, v39);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26F39E000, v14, v15, "Source language changed %{public}s", v18, 0xCu);
    v24 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    v7 = v34;
    MEMORY[0x274391F70](v24, -1, -1);
    MEMORY[0x274391F70](v18, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
    v27 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    v29 = *(v26 + 8);

    if (v28)
    {
      ObjectType = swift_getObjectType();
      v36(v7, v38, v8);
      (*(v37 + 56))(v7, 0, 1, v8);
      (*(v29 + 8))(v7, ObjectType, v29);

      sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    [v31 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_26F41EFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v13 = sub_26F49DCA8();
  __swift_project_value_buffer(v13, qword_280F67EB8);
  v36 = *(v9 + 16);
  v36(v12, a1, v8);
  v14 = sub_26F49DC88();
  v15 = sub_26F49FDB8();
  v16 = os_log_type_enabled(v14, v15);
  v37 = v9;
  v38 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v35 = a2;
    v18 = v17;
    v33 = swift_slowAlloc();
    v34 = v7;
    v39[0] = v33;
    *v18 = 136446210;
    v39[7] = sub_26F49D988();
    v39[8] = v19;
    v39[4] = 45;
    v39[5] = 0xE100000000000000;
    v39[1] = 95;
    v39[2] = 0xE100000000000000;
    sub_26F3BDC0C();
    v20 = sub_26F49FFF8();
    v22 = v21;
    (*(v9 + 8))(v12, v8);

    v23 = sub_26F3B38D0(v20, v22, v39);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26F39E000, v14, v15, "Target language changed %{public}s", v18, 0xCu);
    v24 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    v7 = v34;
    MEMORY[0x274391F70](v24, -1, -1);
    MEMORY[0x274391F70](v18, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
    v27 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    v29 = *(v26 + 8);

    if (v28)
    {
      ObjectType = swift_getObjectType();
      v36(v7, v38, v8);
      (*(v37 + 56))(v7, 0, 1, v8);
      (*(v29 + 16))(v7, ObjectType, v29);

      sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    [v31 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_26F41F450()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel);
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl);

  if (v2)
  {
    [v2 selectedSegmentIndex];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_26F49DDB8();
}

id LanguagesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26F49F898();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LanguagesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguagesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F41F730@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for LanguagesView(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LanguageSelectionModel();
  sub_26F41FE6C(&qword_2806E04B0, type metadata accessor for LanguageSelectionModel);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  v29 = v33;
  v13 = v34;
  v14 = MKBGetDeviceLockState();
  v15 = (v14 > 3) | (9u >> (v14 & 0xF));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v16 = v32;
  v17 = v9[6];
  v18 = v9[7];
  v19 = v9[9];
  *&v12[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  swift_storeEnumTagMultiPayload();
  v20 = &v12[v9[10]];
  *v20 = sub_26F4173A4;
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_26F3E5840(v8, v12);
  sub_26F3E5840(v5, &v12[v9[5]]);
  v21 = &v12[v9[11]];
  *v21 = v29;
  *(v21 + 2) = v13;
  *&v12[v17] = v16;
  v12[v9[8]] = v30;
  v12[v18] = v15 & 1;
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_26F49EEC8();
  v26 = v25;
  LOBYTE(v5) = v27;
  sub_26F41FE6C(&qword_2806E0510, type metadata accessor for LanguagesView);
  sub_26F49F008();
  sub_26F3B8D40(v24, v26, v5 & 1);

  return sub_26F4202EC(v12);
}

uint64_t sub_26F41FBCC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();
}

uint64_t sub_26F41FC58(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_26F3E718C(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3E718C(v10, v8);

  sub_26F49DDB8();
  return sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
}

uint64_t sub_26F41FD78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F41FDF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F41FE6C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F420130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F420178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F4201E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_26F41F730(*(v1 + 16), a1);
}

uint64_t sub_26F4201F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F420270(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F4202EC(uint64_t a1)
{
  v2 = type metadata accessor for LanguagesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.languageLabelContext.getter()
{
  sub_26F3EA5CC();
  sub_26F49E688();
  return v1;
}

uint64_t sub_26F4203EC()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for LIDOrLanguagePicker() + 36);
  result = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {
    v8 = *v6;

    sub_26F49FDE8();
    v9 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v8, 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return result;
}

uint64_t LIDOrLanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v13 = sub_26F49F628();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0518, &unk_26F4A7490);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  v15 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0520, &unk_26F4A74A0);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806E0528, &qword_2806E0520, &unk_26F4A74A0);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806E0530, &qword_2806E0518, &unk_26F4A7490);
  sub_26F49F1A8();
  (*(v2 + 8))(v5, v13);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26F4207B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v55 = sub_26F49F4A8();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCC8, &qword_26F4A5640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v49 - v10;
  v11 = type metadata accessor for LIDOrLanguagePicker();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0558, &qword_26F4A75C0);
  v61 = *(v57 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v57);
  v59 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v49 - v17;
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  sub_26F420E24();
  v24 = v23;
  v53 = v25;
  v66 = v23;
  KeyPath = swift_getKeyPath();
  v58 = a1;
  sub_26F423E44(a1, &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LIDOrLanguagePicker);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v54 = v13;
  v27 = swift_allocObject();
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F423EAC(v52, v27 + v26, type metadata accessor for LIDOrLanguagePicker);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0560, &qword_26F4A75F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0568, &qword_26F4A75F8);
  sub_26F3B18CC(&qword_2806E0570, &qword_2806E0560, &qword_26F4A75F0);
  sub_26F423B00();
  v65 = v22;
  sub_26F49F4B8();
  v28 = *(v24 + 16);

  if (v28)
  {
    v29 = v50;
    sub_26F49F498();
    v30 = v64;
    v31 = v29;
    v32 = v55;
    (*(v3 + 32))(v64, v31, v55);
    v33 = 0;
    v34 = v32;
  }

  else
  {
    v33 = 1;
    v30 = v64;
    v34 = v55;
  }

  (*(v3 + 56))(v30, v33, 1, v34);
  v66 = v53;
  swift_getKeyPath();
  v35 = v52;
  sub_26F423E44(v58, v52, type metadata accessor for LIDOrLanguagePicker);
  v36 = swift_allocObject();
  sub_26F423EAC(v35, v36 + v26, type metadata accessor for LIDOrLanguagePicker);
  v37 = v56;
  sub_26F49F4B8();
  v39 = v60;
  v38 = v61;
  v40 = *(v61 + 16);
  v41 = v57;
  v40(v60, v65, v57);
  v42 = v30;
  v43 = v62;
  sub_26F3B8DD4(v42, v62, &qword_2806DFCC8, &qword_26F4A5640);
  v44 = v59;
  v40(v59, v37, v41);
  v45 = v63;
  v40(v63, v39, v41);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0590, &qword_26F4A7610);
  sub_26F3B8DD4(v43, &v45[*(v46 + 48)], &qword_2806DFCC8, &qword_26F4A5640);
  v40(&v45[*(v46 + 64)], v44, v41);
  v47 = *(v38 + 8);
  v47(v37, v41);
  sub_26F3B6B4C(v64, &qword_2806DFCC8, &qword_26F4A5640);
  v47(v65, v41);
  v47(v44, v41);
  sub_26F3B6B4C(v43, &qword_2806DFCC8, &qword_26F4A5640);
  return (v47)(v39, v41);
}

void sub_26F420E24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0598, &qword_26F4A7648);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v97 = &v95 - v3;
  v4 = type metadata accessor for LanguageOption();
  v112 = *(v4 - 8);
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v95 - v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v95 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v95 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - v15;
  v116 = sub_26F49DAB8();
  v16 = *(v116 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v116);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v95 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v95 - v24;
  v26 = type metadata accessor for LIDOrLanguagePicker();
  v27 = v26;
  v28 = *(v26 + 20);
  v29 = *(v0 + v28);
  if (v29)
  {
    v30 = *(v0 + v28);
  }

  else
  {
    v47 = *(v0 + *(v26 + 28));
    if (!*(v47 + 16))
    {
      goto LABEL_53;
    }

    v101 = v0;
    sub_26F49D9D8();
    v48 = sub_26F49FAD8();

    v49 = *(v47 + 16);
    if (v49)
    {
      v113 = v7;
      v114 = v27;
      v117 = MEMORY[0x277D84F90];
      sub_26F40333C(0, v49, 0);
      v50 = v117;
      v115 = v16 + 32;
      v51 = v25;
      v52 = (v47 + 40);
      do
      {
        v54 = *(v52 - 1);
        v53 = *v52;

        sub_26F49D978();
        v117 = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_26F40333C(v55 > 1, v56 + 1, 1);
          v50 = v117;
        }

        *(v50 + 16) = v56 + 1;
        (*(v16 + 32))(v50 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v56, v51, v116);
        v52 += 6;
        --v49;
      }

      while (v49);
      v7 = v113;
      v27 = v114;
    }

    v84 = objc_opt_self();
    v85 = sub_26F49FAD8();

    v86 = [v84 lt:v48 bestMatchesForPreferredLocales:v85 fromSupportedLocales:?];

    v0 = v101;
    if (!v86)
    {
      goto LABEL_53;
    }

    v29 = sub_26F49FAF8();
  }

  v114 = *(v29 + 16);
  if (v114)
  {
    v31 = *(v0 + *(v27 + 28));
    v104 = *(v31 + 16);
    v101 = v0;
    if (v104)
    {
      v32 = 0;
      v103 = v31 + 32;
      v113 = (v16 + 16);
      v33 = MEMORY[0x277D84F90];
      v105 = MEMORY[0x277D84F90];
      v102 = v31;
      while (2)
      {
        if (v32 >= *(v31 + 16))
        {
LABEL_61:
          __break(1u);
          return;
        }

        v36 = (v103 + 48 * v32);
        v37 = v36[1];
        v115 = *v36;
        v109 = v36[2];
        v108 = *(v36 + 24);
        v38 = v36[5];
        v107 = v36[4];
        v110 = v32 + 1;
        v111 = v33;

        v106 = v38;

        v39 = 0;
        while (v114 != v39)
        {
          if (v39 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_61;
          }

          v40 = v116;
          (*(v16 + 16))(v22, v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v39++, v116);

          sub_26F49D978();
          v41 = MEMORY[0x27438E800](v22, v19);
          v42 = *(v16 + 8);
          v42(v19, v40);
          v42(v22, v40);
          if (v41)
          {
            v33 = v111;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_26F446268(0, *(v33 + 2) + 1, 1, v33);
            }

            v44 = *(v33 + 2);
            v43 = *(v33 + 3);
            v45 = v44 + 1;
            if (v44 >= v43 >> 1)
            {
              v34 = sub_26F446268((v43 > 1), v44 + 1, 1, v33);
              v33 = v34;
            }

            else
            {
              v34 = v33;
            }

            goto LABEL_7;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_26F446268(0, *(v105 + 2) + 1, 1, v105);
        }

        v33 = v111;
        v44 = *(v105 + 2);
        v46 = *(v105 + 3);
        v45 = v44 + 1;
        if (v44 < v46 >> 1)
        {
          v34 = v105;
        }

        else
        {
          v34 = sub_26F446268((v46 > 1), v44 + 1, 1, v105);
          v105 = v34;
        }

LABEL_7:
        *(v34 + 2) = v45;
        v35 = &v34[48 * v44];
        *(v35 + 4) = v115;
        *(v35 + 5) = v37;
        v32 = v110;
        *(v35 + 6) = v109;
        v35[56] = v108;
        *(v35 + 8) = v107;
        *(v35 + 9) = v106;
        v31 = v102;
        if (v32 != v104)
        {
          continue;
        }

        break;
      }

      v57 = v105;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
      v57 = MEMORY[0x277D84F90];
    }

    v58 = *(v33 + 2);
    v59 = MEMORY[0x277D84F90];
    if (v58)
    {
      v105 = v57;
      v117 = MEMORY[0x277D84F90];
      sub_26F4033A0(0, v58, 0);
      v60 = v117;
      v61 = (v33 + 40);
      v62 = v98;
      do
      {
        v63 = *(v61 - 1);
        v64 = *v61;

        sub_26F49D978();
        (*(v16 + 56))(v62, 0, 2, v116);
        v117 = v60;
        v66 = v60[2];
        v65 = v60[3];
        if (v66 >= v65 >> 1)
        {
          sub_26F4033A0(v65 > 1, v66 + 1, 1);
          v62 = v98;
          v60 = v117;
        }

        v60[2] = v66 + 1;
        sub_26F423EAC(v62, v60 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v66, type metadata accessor for LanguageOption);
        v61 += 6;
        --v58;
      }

      while (v58);
      v57 = v105;
      v59 = MEMORY[0x277D84F90];
      v67 = *(v105 + 2);
      if (v67)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
      v67 = *(v57 + 2);
      if (v67)
      {
LABEL_38:
        v111 = v33;
        v117 = v59;

        sub_26F4033A0(0, v67, 0);
        v68 = v117;
        v69 = (v16 + 56);
        v70 = (v57 + 40);
        v71 = v99;
        do
        {
          v72 = *(v70 - 1);
          v73 = *v70;

          sub_26F49D978();
          (*v69)(v71, 0, 2, v116);
          v117 = v68;
          v75 = *(v68 + 16);
          v74 = *(v68 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_26F4033A0(v74 > 1, v75 + 1, 1);
            v71 = v99;
            v68 = v117;
          }

          *(v68 + 16) = v75 + 1;
          sub_26F423EAC(v71, v68 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v75, type metadata accessor for LanguageOption);
          v70 += 6;
          --v67;
        }

        while (v67);

        goto LABEL_45;
      }
    }

    v68 = MEMORY[0x277D84F90];
LABEL_45:
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
    v77 = v100;
    MEMORY[0x274390240]();
    v78 = sub_26F42E338(v77, v60);

    sub_26F3C03B0(v77);
    if ((v78 & 1) == 0)
    {
      MEMORY[0x274390240](v76);
      v79 = sub_26F42E338(v77, v68);
      sub_26F3C03B0(v77);
      if ((v79 & 1) == 0)
      {
        v80 = v96;
        MEMORY[0x274390240](v76);
        v81 = v97;
        sub_26F423EAC(v80, v97, type metadata accessor for LanguageOption);
        v82 = v60[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v60;
        if (!isUniquelyReferenced_nonNull_native || v82 >= v60[3] >> 1)
        {
          v117 = sub_26F446388(isUniquelyReferenced_nonNull_native, v82 + 1, 1, v60);
        }

        sub_26F42321C(0, 0, 1, v81);
      }
    }

    return;
  }

LABEL_53:
  v87 = *(v0 + *(v27 + 28));
  v88 = *(v87 + 16);
  if (v88)
  {
    v117 = MEMORY[0x277D84F90];
    sub_26F4033A0(0, v88, 0);
    v89 = v117;
    v90 = (v87 + 40);
    do
    {
      v91 = *(v90 - 1);
      v92 = *v90;

      sub_26F49D978();
      (*(v16 + 56))(v7, 0, 2, v116);
      v117 = v89;
      v94 = *(v89 + 16);
      v93 = *(v89 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_26F4033A0(v93 > 1, v94 + 1, 1);
        v89 = v117;
      }

      *(v89 + 16) = v94 + 1;
      sub_26F423EAC(v7, v89 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v94, type metadata accessor for LanguageOption);
      v90 += 6;
      --v88;
    }

    while (v88);
  }
}

uint64_t sub_26F421910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LanguageOption();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F423E44(a1, v12, type metadata accessor for LanguageOption);
  if ((*(v5 + 48))(v12, 2, v4))
  {
    result = LanguageOption.title(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = sub_26F49D988();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v14 = v17;
    result = v15;
  }

  *a2 = result;
  a2[1] = v14;
  return result;
}

uint64_t sub_26F421AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a1;
  v47 = a2;
  v4 = type metadata accessor for LIDOrLanguagePicker();
  v5 = *(v4 - 8);
  v48 = v4 - 8;
  v6 = v5;
  v46 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v8;
  v9 = type metadata accessor for LanguageOption();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v12;
  v45 = v12;
  v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LanguageOption;
  sub_26F423E44(a1, v14, type metadata accessor for LanguageOption);
  sub_26F423E44(v2, v8, type metadata accessor for LIDOrLanguagePicker);
  sub_26F49FBD8();
  v15 = sub_26F49FBC8();
  v16 = *(v10 + 80);
  v17 = (v16 + 32) & ~v16;
  v18 = *(v6 + 80);
  v19 = (v13 + v18 + v17) & ~v18;
  v44 = v16 | v18;
  v20 = v46;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v15;
  *(v21 + 24) = v22;
  v23 = v21 + v17;
  v24 = v43;
  sub_26F423EAC(v14, v23, v43);
  v25 = v21 + v19;
  v26 = v42;
  sub_26F423EAC(v42, v25, type metadata accessor for LIDOrLanguagePicker);
  sub_26F423E44(v50, v26, type metadata accessor for LIDOrLanguagePicker);
  sub_26F423E44(v49, v14, v24);
  v27 = sub_26F49FBC8();
  v28 = (v18 + 32) & ~v18;
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = MEMORY[0x277D85700];
  sub_26F423EAC(v26, v29 + v28, type metadata accessor for LIDOrLanguagePicker);
  sub_26F423EAC(v14, v29 + ((v20 + v16 + v28) & ~v16), v24);
  sub_26F49F478();
  v30 = v51;
  v31 = v52;
  LOBYTE(v26) = v53;
  v32 = v49;
  v33 = LanguageOption.title(_:)(0);
  v35 = v34;
  v36 = LanguageOption.subtitle(opposite:)(v50 + *(v48 + 32));
  v38 = v37;
  LOBYTE(v32) = sub_26F422210(v32);
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = (v32 & 1) == 0;
  v41 = v47;
  *v47 = v30;
  v41[1] = v31;
  *(v41 + 16) = v26;
  v41[3] = v33;
  v41[4] = v35;
  v41[5] = v36;
  v41[6] = v38;
  v41[7] = KeyPath;
  v41[8] = sub_26F3E2D78;
  v41[9] = result;
  return result;
}

uint64_t sub_26F421E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LanguageOption();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240](v11);
  v12 = sub_26F4203EC();
  v13 = LanguageOption.title(_:)(v12);
  v15 = v14;
  sub_26F3C03B0(v5);
  v18[0] = v13;
  v18[1] = v15;
  sub_26F3BDC0C();
  sub_26F49F328();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78);
  sub_26F3E900C();
  sub_26F49EF38();
  (*(v7 + 8))(v10, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  v17 = (a1 + *(result + 36));
  *v17 = sub_26F3E9060;
  v17[1] = 0;
  return result;
}

uint64_t sub_26F422054@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for LanguageOption();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240](v8);
  LOBYTE(a1) = _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(a1, v7);
  result = sub_26F3C03B0(v7);
  *a2 = a1 & 1;
  return result;
}

void sub_26F422108(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for LanguageOption();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v14 - v12;
  if (*a1 == 1)
  {
    sub_26F423E44(a5, &v14 - v12, type metadata accessor for LanguageOption);
    sub_26F423E44(v13, v10, type metadata accessor for LanguageOption);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
    sub_26F49F458();
    sub_26F3C03B0(v13);
  }
}

uint64_t sub_26F422210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v72 - v4;
  v5 = type metadata accessor for LanguageOption();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  sub_26F423E44(a1, v8, type metadata accessor for LanguageOption);
  v23 = v10[6];
  if (v23(v8, 2, v9))
  {
    sub_26F3C03B0(v8);
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v24 = sub_26F49DCA8();
    __swift_project_value_buffer(v24, qword_280F67E98);
    v25 = sub_26F49DC88();
    v26 = sub_26F49FDD8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26F39E000, v25, v26, "LanguageOption does not contain a locale", v27, 2u);
      MEMORY[0x274391F70](v27, -1, -1);
    }

    goto LABEL_28;
  }

  v77 = v13;
  v75 = a1;
  v28 = v10[4];
  v28(v19, v8, v9);
  v28(v22, v19, v9);
  v78 = v10;
  v29 = v10[2];
  v76 = v16;
  v29(v16, v22, v9);
  v30 = type metadata accessor for LIDOrLanguagePicker();
  v31 = v80;
  sub_26F3B8DD4(v79 + *(v30 + 24), v80, &qword_2806DEFD8, &qword_26F4A3670);
  if (v23(v31, 1, v9) == 1)
  {
    v32 = v77;
    v29(v77, v22, v9);
    v33 = v22;
    if (v23(v80, 1, v9) != 1)
    {
      sub_26F3B6B4C(v80, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {
    v34 = v77;
    v28(v77, v80, v9);
    v32 = v34;
    v33 = v22;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v36 = v76;
  v37 = sub_26F49D9F8();
  v38 = sub_26F49D9F8();
  v39 = [v35 initWithSourceLocale:v37 targetLocale:v38];

  v40 = v78 + 1;
  v41 = v78[1];
  v41(v32, v9);
  v41(v36, v9);
  v42 = [v39 isVariantPair];
  if (v42)
  {
    goto LABEL_12;
  }

  v78 = v40;
  v43 = v9;
  v80 = v30;
  v44 = v79;
  v45 = *(v79 + *(v30 + 28));
  MEMORY[0x28223BE20](v42);
  *(&v72 - 2) = v75;
  sub_26F4006DC(sub_26F4240C4, v46, &v81);
  v47 = v82;
  if (!v82)
  {
LABEL_12:
    v41(v33, v9);

    goto LABEL_28;
  }

  v48 = v83;
  v49 = v84;
  v75 = v85;
  v76 = v39;
  v73 = v81;
  v74 = v86;
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v51 = v50;
  v52 = sub_26F49F898();
  v53 = [v51 BOOLForKey_];

  v54 = [objc_opt_self() sharedConnection];
  v77 = v43;
  if (!v54)
  {

    v59 = v47;
    v58 = v48;
    sub_26F4240E4(v73, v59);
    if (!v53)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v55 = v54;
  v56 = [v54 isOnDeviceOnlyTranslationForced];

  v57 = v47;
  v58 = v48;
  sub_26F4240E4(v73, v57);
  if ((v56 | v53))
  {
LABEL_19:
    if ((v49 & (v58 == 0)) != 0)
    {
      goto LABEL_20;
    }

    v41(v33, v77);

LABEL_28:
    v70 = 0;
    return v70 & 1;
  }

LABEL_20:
  v60 = *(v44 + *(v80 + 32));
  v61 = v33;
  v62 = v76;
  if (v60 == 1)
  {
    v63 = sub_26F49D9F8();
    v64 = [v63 languageIdentifier];

    if (!v64)
    {
      sub_26F49F8C8();
      v64 = sub_26F49F898();
    }

    v65 = [objc_opt_self() baseLanguageFromLanguage_];

    v66 = sub_26F49F8C8();
    v68 = v67;

    if (qword_280F66B48 != -1)
    {
      swift_once();
    }

    v69 = qword_280F67EB0;

    v70 = sub_26F47A700(v66, v68, v69);

    v41(v61, v77);
  }

  else
  {
    v41(v33, v77);

    v70 = 1;
  }

  return v70 & 1;
}

uint64_t sub_26F4229AC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0550, &unk_26F4A75B0);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v39 - v9;
  v10 = type metadata accessor for LanguageOption();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v24 = *a1;
  v23 = a1[1];

  sub_26F49D978();
  v25 = *(v5 + 56);
  v25(v22, 0, 1, v4);
  sub_26F423E44(a2, v13, type metadata accessor for LanguageOption);
  v26 = *(v5 + 48);
  v27 = v26(v13, 2, v4);
  v42 = v5;
  if (v27)
  {
    sub_26F3C03B0(v13);
    v28 = 1;
  }

  else
  {
    (*(v5 + 32))(v19, v13, v4);
    v28 = 0;
  }

  v25(v19, v28, 1, v4);
  v29 = *(v43 + 48);
  v30 = v44;
  sub_26F3B8DD4(v22, v44, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(v19, v30 + v29, &qword_2806DEFD8, &qword_26F4A3670);
  if (v26(v30, 1, v4) != 1)
  {
    v32 = v41;
    sub_26F3B8DD4(v30, v41, &qword_2806DEFD8, &qword_26F4A3670);
    if (v26((v30 + v29), 1, v4) != 1)
    {
      v33 = v30;
      v34 = v42;
      v35 = v40;
      (*(v42 + 32))(v40, v33 + v29, v4);
      sub_26F423AA8();
      v36 = v32;
      v31 = sub_26F49F868();
      v37 = *(v34 + 8);
      v37(v35, v4);
      sub_26F3B6B4C(v19, &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F3B6B4C(v22, &qword_2806DEFD8, &qword_26F4A3670);
      v37(v36, v4);
      sub_26F3B6B4C(v44, &qword_2806DEFD8, &qword_26F4A3670);
      return v31 & 1;
    }

    sub_26F3B6B4C(v19, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v22, &qword_2806DEFD8, &qword_26F4A3670);
    (*(v42 + 8))(v32, v4);
    goto LABEL_9;
  }

  sub_26F3B6B4C(v19, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v22, &qword_2806DEFD8, &qword_26F4A3670);
  if (v26((v30 + v29), 1, v4) != 1)
  {
LABEL_9:
    sub_26F3B6B4C(v30, &qword_2806E0550, &unk_26F4A75B0);
    v31 = 0;
    return v31 & 1;
  }

  sub_26F3B6B4C(v30, &qword_2806DEFD8, &qword_26F4A3670);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_26F422EA4@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v13 = sub_26F49F628();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0518, &unk_26F4A7490);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  v15 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0520, &unk_26F4A74A0);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806E0528, &qword_2806E0520, &unk_26F4A74A0);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806E0530, &qword_2806E0518, &unk_26F4A7490);
  sub_26F49F1A8();
  (*(v2 + 8))(v5, v13);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26F423120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F423A54();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.languageLabelContext.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_26F3EA5CC();
  sub_26F49E688();
  return sub_26F4231E4;
}

uint64_t sub_26F4231E4(void *a1)
{
  a1[1] = *a1;
  v1 = a1 + 1;
  v3 = v1[1];
  v2 = v1[2];
  return sub_26F49E698();
}

unint64_t sub_26F42321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LanguageOption();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_26F3B6B4C(a4, &qword_2806E0598, &qword_26F4A7648);
  }

  if (v17 < 1)
  {
    return sub_26F3B6B4C(a4, &qword_2806E0598, &qword_26F4A7648);
  }

  result = sub_26F423E44(a4, v15, type metadata accessor for LanguageOption);
  if (v12 >= v17)
  {
    return sub_26F3B6B4C(a4, &qword_2806E0598, &qword_26F4A7648);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s13TranslationUI19LIDOrLanguagePickerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0550, &unk_26F4A75B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = type metadata accessor for LanguageOption();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240]();
  MEMORY[0x274390240](v22);
  v23 = _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(v21, v18);
  sub_26F3C03B0(v18);
  sub_26F3C03B0(v21);
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = type metadata accessor for LIDOrLanguagePicker();
  v25 = v24[5];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_13;
    }

    v28 = *(a2 + v25);

    v29 = sub_26F42DB78(v26, v27);

    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v27)
  {
    goto LABEL_13;
  }

  v30 = v24[6];
  v31 = *(v11 + 48);
  sub_26F3B8DD4(a1 + v30, v14, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(a2 + v30, &v14[v31], &qword_2806DEFD8, &qword_26F4A3670);
  v32 = v41;
  v33 = *(v41 + 48);
  if (v33(v14, 1, v4) == 1)
  {
    if (v33(&v14[v31], 1, v4) == 1)
    {
      sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
LABEL_16:
      v34 = sub_26F42DD8C(*(a1 + v24[7]), *(a2 + v24[7]));
      return v34 & 1;
    }

    goto LABEL_12;
  }

  sub_26F3B8DD4(v14, v10, &qword_2806DEFD8, &qword_26F4A3670);
  if (v33(&v14[v31], 1, v4) == 1)
  {
    (*(v32 + 8))(v10, v4);
LABEL_12:
    sub_26F3B6B4C(v14, &qword_2806E0550, &unk_26F4A75B0);
    goto LABEL_13;
  }

  v36 = &v14[v31];
  v37 = v40;
  (*(v32 + 32))(v40, v36, v4);
  sub_26F423AA8();
  v38 = sub_26F49F868();
  v39 = *(v32 + 8);
  v39(v37, v4);
  v39(v10, v4);
  sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
  if (v38)
  {
    goto LABEL_16;
  }

LABEL_13:
  v34 = 0;
  return v34 & 1;
}

uint64_t type metadata accessor for LIDOrLanguagePicker()
{
  result = qword_2806E0538;
  if (!qword_2806E0538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F423864()
{
  sub_26F4239E0(319, &qword_2806DEDC8, type metadata accessor for LanguageOption, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_26F3C0298();
    if (v1 <= 0x3F)
    {
      sub_26F4239E0(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26F3EA0A0(319, &qword_280F656F8, &type metadata for LanguageModel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26F3EA0A0(319, &qword_280F65768, &type metadata for DisplayNameContext, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F4239E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F423A54()
{
  result = qword_2806E0548;
  if (!qword_2806E0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0548);
  }

  return result;
}

unint64_t sub_26F423AA8()
{
  result = qword_2806E07F0[0];
  if (!qword_2806E07F0[0])
  {
    sub_26F49DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2806E07F0);
  }

  return result;
}

unint64_t sub_26F423B00()
{
  result = qword_2806E0578;
  if (!qword_2806E0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0568, &qword_26F4A75F8);
    sub_26F3B18CC(&qword_2806E0580, &qword_2806E0588, &unk_26F4A7600);
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0578);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for LIDOrLanguagePicker();
  v13 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = *(v2 + 1);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050) + 32);
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(&v2[v5], 2, v6))
  {
    (*(v7 + 8))(&v2[v5], v6);
  }

  v9 = *&v2[v1[5]];

  v10 = v1[6];
  if (!v8(&v2[v10], 1, v6))
  {
    (*(v7 + 8))(&v2[v10], v6);
  }

  v11 = *&v2[v1[7]];

  sub_26F3E1E08(*&v2[v1[9]], v2[v1[9] + 8]);

  return swift_deallocObject();
}

__n128 sub_26F423DB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LIDOrLanguagePicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_26F421AAC(a1, v9);
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v9[4];
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_26F423E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F423EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F423F14@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for LanguageOption() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LIDOrLanguagePicker() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_26F422054(v1 + v4, a1);
}

void sub_26F423FEC(_BYTE *a1)
{
  v3 = *(type metadata accessor for LIDOrLanguagePicker() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LanguageOption() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_26F422108(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_26F4240E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t Locale.ltLanguageCode.getter()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_26F49DAA8();
  sub_26F49DA58();
  (*(v1 + 8))(v4, v0);
  v9 = sub_26F49D9B8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26F3EB7AC(v8);
    return 0;
  }

  else
  {
    v12 = sub_26F49D998();
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

void Locale.ltDefaultTarget(for:availableLocales:map:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26F49D9F8();
  v5 = sub_26F49D9F8();
  sub_26F49DAB8();
  v6 = sub_26F49FAD8();
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A0, &qword_26F4A7650);
    a3 = sub_26F49F7E8();
  }

  v7 = [objc_opt_self() lt:v4 defaultTargetForSource:v5 systemLocale:v6 availableLocales:a3 targetMap:?];

  sub_26F49DA18();
}

uint64_t static Locale.ensureSupported(locale:availableLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0168, &qword_26F4A66A0);
  v5 = sub_26F49DAB8();
  v15 = *(v5 - 8);
  v6 = *(v15 + 72);
  v7 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26F4A3150;
  (*(v15 + 16))(v8 + v7, a1, v5);
  v9 = sub_26F49FAD8();

  v10 = sub_26F49FAD8();
  v11 = [v4 lt:v9 bestMatchForPreferredLocales:v10 fromSupportedLocales:?];

  if (v11)
  {
    sub_26F49DA18();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v15 + 56);

  return v13(a2, v12, 1, v5);
}

void static Locale.fallback(for:)()
{
  v0 = objc_opt_self();
  v1 = sub_26F49D9F8();
  v2 = [v0 lt:v1 fallbackForLocale:?];

  sub_26F49DA18();
}

uint64_t Locale.ltIdentifier.getter()
{
  sub_26F49D988();
  sub_26F3BDC0C();
  v0 = sub_26F49FFF8();

  return v0;
}

uint64_t Locale.sqDisplayName(context:in:)(unint64_t a1)
{
  v2 = sub_26F49D9F8();
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = qword_26F4A7748[a1];
    v5 = sub_26F49D9F8();
    v6 = [v3 lt:v4 displayNameForContext:v5 inTargetLocale:?];

    if (!v6)
    {
      return 0;
    }

    v7 = sub_26F49F8C8();

    return v7;
  }

  return result;
}

uint64_t Locale.sqDisplaySubname(context:in:)(unint64_t a1)
{
  v2 = sub_26F49D9F8();
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = qword_26F4A7748[a1];
    v5 = sub_26F49D9F8();
    v6 = [v3 lt:v4 displaySubnameForContext:v5 inTargetLocale:?];

    if (!v6)
    {
      return 0;
    }

    v7 = sub_26F49F8C8();

    return v7;
  }

  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegion:context:short:)(Swift::String forRegion, NSFormattingContext context, Swift::Bool a3)
{
  v5 = sub_26F49D9F8();
  v6 = sub_26F49F898();
  v7 = [v5 localizedStringForRegion:v6 context:context short:a3];

  if (v7)
  {
    v8 = sub_26F49F8C8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = v8;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t Locale.languageIdentifier.getter()
{
  v0 = sub_26F49D9F8();
  v1 = [v0 languageIdentifier];

  v2 = sub_26F49F8C8();
  return v2;
}

uint64_t sub_26F4249C8()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F424A3C()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

unint64_t sub_26F424A80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26F4252E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::String __swiftcall Locale.ltLocalizedAppString(_:table:bundle:)(Swift::String _, Swift::String table, NSBundle bundle)
{
  v4 = [(objc_class *)bundle.super.isa localizations];
  if (!v4)
  {
    sub_26F49FAF8();
    v4 = sub_26F49FAD8();
  }

  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0160, &unk_26F4A7660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26F4A3150;
  *(v6 + 32) = sub_26F49D988();
  *(v6 + 40) = v7;
  v8 = sub_26F49FAD8();

  v9 = [v5 preferredLocalizationsFromArray:v4 forPreferences:v8];

  v10 = sub_26F49FAF8();
  if (v10[2])
  {
    v11 = sub_26F49F898();
    v12 = sub_26F49F898();
    v13 = sub_26F49F898();
    if (v10[2])
    {
      v14 = v10[4];
      v15 = v10[5];

      v16 = sub_26F49F898();
    }

    else
    {

      v16 = 0;
    }

    v17 = [(objc_class *)bundle.super.isa localizedStringForKey:v11 value:v12 table:v13 localization:v16];
  }

  else
  {

    v12 = sub_26F49F898();
    v13 = sub_26F49F898();
    v16 = sub_26F49F898();
    v17 = [(objc_class *)bundle.super.isa localizedStringForKey:v12 value:v13 table:v16];
  }

  v18 = sub_26F49F8C8();
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t Locale.isChinese.getter()
{
  v0 = sub_26F49D9F8();
  v1 = [v0 languageIdentifier];

  sub_26F49F8C8();
  LOBYTE(v0) = sub_26F49FA48();

  return v0 & 1;
}

Swift::Bool __swiftcall Locale.supportsVerticalText()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_26F49DAA8();
  sub_26F49DA58();
  (*(v1 + 8))(v4, v0);
  v9 = sub_26F49D9B8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26F3EB7AC(v8);
    v11 = 0;
  }

  else
  {
    v12 = sub_26F49D998();
    v14 = v13;
    (*(v10 + 8))(v8, v9);
    v15 = v12 == 24938 && v14 == 0xE200000000000000;
    if (v15 || (sub_26F4A0458() & 1) != 0 || (v12 == 26746 ? (v16 = v14 == 0xE200000000000000) : (v16 = 0), v16))
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_26F4A0458();
    }
  }

  return v11 & 1;
}

uint64_t NSLocale.sqDisplayName(context:in:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = qword_26F4A7748[a1];
    v4 = sub_26F49D9F8();
    v5 = [v2 lt:v3 displayNameForContext:v4 inTargetLocale:?];

    if (!v5)
    {
      return 0;
    }

    v6 = sub_26F49F8C8();

    return v6;
  }

  return result;
}

uint64_t NSLocale.sqDisplaySubname(context:in:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = qword_26F4A7748[a1];
    v4 = sub_26F49D9F8();
    v5 = [v2 lt:v3 displaySubnameForContext:v4 inTargetLocale:?];

    if (!v5)
    {
      return 0;
    }

    v6 = sub_26F49F8C8();

    return v6;
  }

  return result;
}

id sub_26F4251A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DA18();
  v13 = a1;
  a5(a3, v12);
  v15 = v14;

  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v16 = sub_26F49F898();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

unint64_t sub_26F4252E4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall Locale.isRTL()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DAA8();
  v5 = sub_26F49DA78();
  (*(v1 + 8))(v4, v0);
  return v5 == 2;
}

Swift::Bool __swiftcall Locale.isTraditionalChinese()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A8, &qword_26F4A7780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v27 - v7;
  if (sub_26F49D988() == 0x57545F687ALL && v9 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v10 = sub_26F4A0458();

  if (v10)
  {
    goto LABEL_5;
  }

  sub_26F49DAA8();
  sub_26F49DA88();
  (*(v1 + 8))(v4, v0);
  v13 = sub_26F49DA38();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_26F425724(v8);
    goto LABEL_9;
  }

  v20 = sub_26F49D998();
  v22 = v21;
  (*(v14 + 8))(v8, v13);
  v28 = v20;
  v29 = v22;
  sub_26F3BDC0C();
  v23 = sub_26F49FFD8();
  v25 = v24;

  if (v23 != 1414414664 || v25 != 0xE400000000000000)
  {
    v26 = sub_26F4A0458();

    if (v26)
    {
      goto LABEL_5;
    }

LABEL_9:
    v15 = sub_26F49D9F8();
    v16 = [v15 languageIdentifier];

    v17 = sub_26F49F8C8();
    v19 = v18;

    v28 = v17;
    v29 = v19;
    v27[0] = 0x2D746E61482DLL;
    v27[1] = 0xE600000000000000;
    sub_26F3BDC0C();
    v11 = sub_26F4A0028();

    return v11 & 1;
  }

LABEL_3:

LABEL_5:
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_26F425724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A8, &qword_26F4A7780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall Locale.isSimplifiedChinese()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A8, &qword_26F4A7780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v27 - v7;
  if (sub_26F49D988() == 0x4E435F687ALL && v9 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v10 = sub_26F4A0458();

  if (v10)
  {
    goto LABEL_5;
  }

  sub_26F49DAA8();
  sub_26F49DA88();
  (*(v1 + 8))(v4, v0);
  v13 = sub_26F49DA38();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_26F425724(v8);
    goto LABEL_9;
  }

  v20 = sub_26F49D998();
  v22 = v21;
  (*(v14 + 8))(v8, v13);
  v28 = v20;
  v29 = v22;
  sub_26F3BDC0C();
  v23 = sub_26F49FFD8();
  v25 = v24;

  if (v23 != 1397637448 || v25 != 0xE400000000000000)
  {
    v26 = sub_26F4A0458();

    if (v26)
    {
      goto LABEL_5;
    }

LABEL_9:
    v15 = sub_26F49D9F8();
    v16 = [v15 languageIdentifier];

    v17 = sub_26F49F8C8();
    v19 = v18;

    v28 = v17;
    v29 = v19;
    v27[0] = 0x2D736E61482DLL;
    v27[1] = 0xE600000000000000;
    sub_26F3BDC0C();
    v11 = sub_26F4A0028();

    return v11 & 1;
  }

LABEL_3:

LABEL_5:
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_26F425AB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_26F427178();
  v3 = sub_26F49FAF8();

  v2(v3);
}

uint64_t static LocaleService.lastTargetLocale.getter()
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v1 = v0;
  v2 = sub_26F49F898();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_26F49F8C8();
  }

  return sub_26F49D978();
}

void static LocaleService.localePairs(forSpeech:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_26F426F70;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F425AB4;
  v9[3] = &block_descriptor_6;
  v8 = _Block_copy(v9);

  [v6 availableLocalePairsForTask:v5 useDedicatedMachPort:1 completion:v8];
  _Block_release(v8);
}

size_t sub_26F425D00(unint64_t a1, void (*a2)(uint64_t, void, __n128), uint64_t a3)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680);
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v24);
  v10 = &v22 - v9;
  if (a1 >> 62)
  {
    v11 = sub_26F4A00A8();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_13:
    a2(v12, 0, v8);
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_26F4033E4(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v22 = a3;
    v23 = a2;
    v14 = 0;
    v12 = v25;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x274390F80](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = *(v24 + 48);
      v18 = [v15 sourceLocale];
      sub_26F49DA18();

      v19 = [v16 targetLocale];
      sub_26F49DA18();

      v25 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26F4033E4(v20 > 1, v21 + 1, 1);
        v12 = v25;
      }

      ++v14;
      *(v12 + 16) = v21 + 1;
      sub_26F427108(v10, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21);
    }

    while (v11 != v14);
    a2 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static LocaleService.sanitizeLocale(_:supportedLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  static Locale.ensureSupported(locale:availableLocales:)(a1, &v18 - v9);
  sub_26F3B8DD4(v10, v7, &qword_2806DEFD8, &qword_26F4A3670);
  v11 = sub_26F49DAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    v14 = objc_opt_self();
    v15 = sub_26F49D9F8();
    v16 = [v14 lt:v15 fallbackForLocale:?];

    sub_26F49DA18();
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    result = v13(v7, 1, v11);
    if (result != 1)
    {
      return sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    return (*(v12 + 32))(a2, v7, v11);
  }

  return result;
}

uint64_t static LocaleService.supportedTargetLocale(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26F426F90;
  *(v14 + 24) = v11;
  aBlock[4] = sub_26F4271D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F425AB4;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  [v13 availableLocalePairsForTask:5 useDedicatedMachPort:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_26F426360(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680);
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05B0, &unk_26F4A77A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v48 - v17);
  v19 = sub_26F49DAB8();
  v58 = *(v19 - 8);
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  if (a2)
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v26 = sub_26F49DCA8();
    __swift_project_value_buffer(v26, qword_280F67EB8);
    v27 = a1;
    v28 = sub_26F49DC88();
    v29 = sub_26F49FDD8();
    sub_26F4270FC(a1, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = sub_26F49D7E8();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_26F39E000, v28, v29, "Failed to obtain supported target locale: %@", v30, 0xCu);
      sub_26F3B6B4C(v31, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v31, -1, -1);
      MEMORY[0x274391F70](v30, -1, -1);
    }

    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    v33 = a1;
    a4(v18);
    return sub_26F3B6B4C(v18, &qword_2806E05B0, &unk_26F4A77A0);
  }

  else
  {
    v53 = v18;
    v35 = a1[2];
    if (v35)
    {
      v48 = &v48 - v24;
      v49 = a3;
      v50 = v15;
      v51 = a5;
      v52 = a4;
      v59 = MEMORY[0x277D84F90];
      sub_26F40333C(0, v35, 0);
      v36 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v54 = *(v10 + 72);
      v37 = v59;
      v38 = (v58 + 32);
      v39 = (v58 + 8);
      do
      {
        v40 = v56;
        sub_26F3B8DD4(v36, v56, &qword_2806E0150, &qword_26F4A6680);
        v41 = v55;
        sub_26F427108(v40, v55);
        v42 = *v38;
        (*v38)(v22, v41 + *(v57 + 48), v19);
        (*v39)(v41, v19);
        v59 = v37;
        v44 = *(v37 + 16);
        v43 = *(v37 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_26F40333C(v43 > 1, v44 + 1, 1);
          v37 = v59;
        }

        *(v37 + 16) = v44 + 1;
        v42((v37 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44), v22, v19);
        v36 += v54;
        --v35;
      }

      while (v35);
      a4 = v52;
      a3 = v49;
      v25 = v48;
    }

    v45 = v25;
    static LocaleService.sanitizeLocale(_:supportedLocales:)(a3, v25);

    v46 = v58;
    v47 = v53;
    (*(v58 + 16))(v53, v45, v19);
    swift_storeEnumTagMultiPayload();
    a4(v47);
    sub_26F3B6B4C(v47, &qword_2806E05B0, &unk_26F4A77A0);
    return (*(v46 + 8))(v45, v19);
  }
}

uint64_t static LocaleService.supportedTargetLocaleSync(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v34 - v5;
  v6 = sub_26F49F6E8();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v34 - v10;
  v11 = sub_26F49DAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = swift_allocBox();
  v36 = v14;
  v37 = v15;
  (*(v12 + 56))(v15, 1, 1, v11);
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v35 = *(v12 + 32);
  v35(v19 + v18, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v20 = (v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_26F426F94;
  v20[1] = v17;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26F4271D4;
  *(v22 + 24) = v19;
  aBlock[4] = sub_26F4271D8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F425AB4;
  aBlock[3] = &block_descriptor_24;
  v23 = _Block_copy(aBlock);
  v24 = v16;

  [v21 availableLocalePairsForTask:5 useDedicatedMachPort:1 completion:v23];

  _Block_release(v23);

  v25 = v38;
  sub_26F49F6D8();
  v26 = v39;
  sub_26F49F6F8();
  v27 = *(v40 + 8);
  v28 = v25;
  v29 = v41;
  v27(v28, v41);
  sub_26F49FE18();
  v30 = v42;
  v27(v26, v29);
  v31 = v37;
  swift_beginAccess();
  sub_26F3B8DD4(v31, v30, &qword_2806DEFD8, &qword_26F4A3670);
  v32 = *(v12 + 48);
  if (v32(v30, 1, v11) == 1)
  {
    sub_26F49D978();

    if (v32(v30, 1, v11) != 1)
    {
      sub_26F3B6B4C(v30, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {

    v35(v43, v30, v11);
  }
}

void sub_26F426D7C(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05B0, &unk_26F4A77A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = swift_projectBox();
  sub_26F3B8DD4(a1, v11, &qword_2806E05B0, &unk_26F4A77A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26F3B6B4C(v11, &qword_2806E05B0, &unk_26F4A77A0);
  }

  else
  {
    v13 = sub_26F49DAB8();
    v14 = *(v13 - 8);
    (*(v14 + 32))(v7, v11, v13);
    (*(v14 + 56))(v7, 0, 1, v13);
    swift_beginAccess();
    sub_26F3D27D4(v7, v12);
  }

  dispatch_group_leave(a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_26F42703C(void *a1, char a2)
{
  v5 = *(sub_26F49DAB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_26F426360(a1, a2 & 1, v2 + v6, v8, v9);
}

void sub_26F4270FC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26F427108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F427178()
{
  result = qword_280F65698;
  if (!qword_280F65698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F65698);
  }

  return result;
}

uint64_t sub_26F4271DC(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26F403404(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26F403404((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_26F3BE15C(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t NSArray.sortedLocalized(for:)()
{
  sub_26F49DAB8();
  sub_26F49FAE8();
  __break(1u);

  __break(1u);
  return result;
}

id sub_26F427514(void *a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DA18();
  v7 = a1;
  NSArray.sortedLocalized(for:)();

  (*(v3 + 8))(v6, v2);
  v8 = sub_26F49FAD8();

  return v8;
}

BOOL sub_26F427634()
{
  v0 = sub_26F49D9F8();
  v1 = sub_26F49D9F8();
  v2 = [v0 lt:0 displayNameForContext:v1 inTargetLocale:?];

  if (v2)
  {
    sub_26F49F8C8();
  }

  v3 = sub_26F49D9F8();
  v4 = sub_26F49D9F8();
  v5 = [v3 lt:0 displaySubnameForContext:v4 inTargetLocale:?];

  if (v5)
  {
    v6 = sub_26F49F8C8();
    v8 = v7;

    MEMORY[0x2743907E0](v6, v8);

    MEMORY[0x2743907E0](32, 0xE100000000000000);
  }

  v9 = sub_26F49D9F8();
  v10 = sub_26F49D9F8();
  v11 = [v9 lt:0 displayNameForContext:v10 inTargetLocale:?];

  if (v11)
  {
    sub_26F49F8C8();
  }

  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v12 lt:0 displaySubnameForContext:v13 inTargetLocale:?];

  if (v14)
  {
    v15 = sub_26F49F8C8();
    v17 = v16;

    MEMORY[0x2743907E0](v15, v17);

    MEMORY[0x2743907E0](32, 0xE100000000000000);
  }

  sub_26F3BDC0C();
  v18 = sub_26F4A0008();

  return v18 == -1;
}

uint64_t sub_26F4279E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26F49DC98();
}

uint64_t sub_26F427A58()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_2806EA8C0);
  __swift_project_value_buffer(v0, qword_2806EA8C0);
  return sub_26F49DC98();
}

uint64_t sub_26F427AD8()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_2806EA8D8);
  __swift_project_value_buffer(v0, qword_2806EA8D8);
  return sub_26F49DC98();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26F427BBC()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_280F67ED0);
  __swift_project_value_buffer(v0, qword_280F67ED0);
  return sub_26F49DC98();
}

uint64_t sub_26F427C3C()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_2806EA8F0);
  __swift_project_value_buffer(v0, qword_2806EA8F0);
  return sub_26F49DC98();
}

uint64_t LTUILocalizedStrings.string.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49D7D8();

  return v2;
}

uint64_t LTUILocalizedStrings.hashValue.getter()
{
  sub_26F4A0528();
  MEMORY[0x274391330](0);
  return sub_26F4A0568();
}

uint64_t sub_26F427DE4()
{
  sub_26F4A0528();
  MEMORY[0x274391330](0);
  return sub_26F4A0568();
}

uint64_t sub_26F427E50()
{
  sub_26F4A0528();
  MEMORY[0x274391330](0);
  return sub_26F4A0568();
}

unint64_t sub_26F427E94()
{
  result = qword_2806E05B8;
  if (!qword_2806E05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05B8);
  }

  return result;
}

uint64_t sub_26F427EF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6F4C746567726174;
  v6 = 0xEC000000656C6163;
  if (a1 != 5)
  {
    v5 = 0x6E656469666E6F63;
    v6 = 0xEA00000000006563;
  }

  v7 = 0x6F4C656372756F73;
  v8 = 0xEC000000656C6163;
  if (a1 != 3)
  {
    v7 = 0x7453746567726174;
    v8 = 0xEC000000676E6972;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7865646E69;
  if (a1 != 1)
  {
    v10 = 0x7453656372756F73;
    v9 = 0xEC000000676E6972;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v14 = 0xE500000000000000;
      if (v11 != 0x7865646E69)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v17 = 0x656372756F73;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 != 5)
      {
        v14 = 0xEA00000000006563;
        if (v11 != 0x6E656469666E6F63)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v13 = 0x746567726174;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v13 = 0x656372756F73;
LABEL_27:
      v15 = v13 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
      v16 = 1701601635;
      goto LABEL_33;
    }

    v17 = 0x746567726174;
  }

  v15 = v17 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
  v16 = 1735289202;
LABEL_33:
  v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v15)
  {
LABEL_37:
    v18 = sub_26F4A0458();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v14)
  {
    goto LABEL_37;
  }

  v18 = 1;
LABEL_38:

  return v18 & 1;
}

uint64_t sub_26F428114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7463416B63697571;
  v4 = a1;
  v5 = 0x800000026F4AC300;
  v6 = 0xD000000000000015;
  if (a1 != 5)
  {
    v6 = 0x657469726F766166;
    v5 = 0xEC00000062615473;
  }

  v7 = 0x61546172656D6163;
  v8 = 0xE900000000000062;
  if (a1 != 3)
  {
    v7 = 0x61737265766E6F63;
    v8 = 0xEF6261546E6F6974;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000011;
  v11 = 0x800000026F4AC2B0;
  v12 = 0x74616C736E617274;
  v13 = 0xEE006261546E6F69;
  if (a1 == 1)
  {
    v12 = 0x7463416B63697571;
    v13 = 0xEB000000006E6F69;
  }

  if (a1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a1 <= 2u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000026F4AC2B0;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEE006261546E6F69;
      if (v14 != 0x74616C736E617274)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000026F4AC300;
        if (v14 != 0xD000000000000015)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEC00000062615473;
        if (v14 != 0x657469726F766166)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000062;
      if (v14 != 0x61546172656D6163)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x61737265766E6F63;
    v2 = 0xEF6261546E6F6974;
  }

  if (v14 != v3)
  {
LABEL_37:
    v16 = sub_26F4A0458();
    goto LABEL_38;
  }

LABEL_34:
  if (v15 != v2)
  {
    goto LABEL_37;
  }

  v16 = 1;
LABEL_38:

  return v16 & 1;
}

uint64_t sub_26F428380(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6F4C656372756F73;
  v3 = a1;
  v4 = 0x6554656372756F73;
  if (a1 != 2)
  {
    v4 = 0x6554746567726174;
  }

  v5 = 0x6F4C746567726174;
  if (!a1)
  {
    v5 = 0x6F4C656372756F73;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3 <= 1)
  {
    v7 = 0xEC000000656C6163;
  }

  else
  {
    v7 = 0xEA00000000007478;
  }

  v8 = 0x6554656372756F73;
  if (a2 != 2)
  {
    v8 = 0x6554746567726174;
  }

  if (a2)
  {
    v2 = 0x6F4C746567726174;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = 0xEC000000656C6163;
  }

  else
  {
    v10 = 0xEA00000000007478;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t sub_26F4284CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x6C69614664616572;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0xD000000000000010;
    v12 = 0x800000026F4AC340;
    if (a1 != 1)
    {
      v11 = 0x546C6C6174736E69;
      v12 = 0xEE0074756F656D69;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0x6C69614664616572;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0xEB00000000657275;
    }
  }

  else
  {
    v5 = 0x800000026F4AC380;
    v6 = 0xD00000000000001ALL;
    if (a1 == 5)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x800000026F4AC3A0;
    }

    v7 = 0x466C6C6174736E69;
    v8 = 0xEE006572756C6961;
    if (a1 != 3)
    {
      v7 = 0x6E61697261567369;
      v8 = 0xE900000000000074;
    }

    if (a1 <= 4u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000026F4AC380;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x800000026F4AC3A0;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v13 = 0x466C6C6174736E69;
      v14 = 0x6572756C6961;
      goto LABEL_33;
    }

    v3 = 0x6E61697261567369;
    v2 = 0xE900000000000074;
    goto LABEL_36;
  }

  if (!a2)
  {
LABEL_36:
    if (v9 != v3)
    {
LABEL_40:
      v15 = sub_26F4A0458();
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (a2 != 1)
  {
    v13 = 0x546C6C6174736E69;
    v14 = 0x74756F656D69;
LABEL_33:
    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v2 = 0x800000026F4AC340;
  if (v9 != 0xD000000000000010)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_26F428744(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C62;
  v3 = 0x616C696176616E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656E6E6F63736964;
    }

    else
    {
      v5 = 0x616C696176616E75;
    }

    if (v4)
    {
      v6 = 0xEC00000064657463;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x72616C756C6C6563;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1768319351;
    }

    else
    {
      v5 = 0x6465726977;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x72616C756C6C6563;
  v9 = 0xE400000000000000;
  v10 = 1768319351;
  if (a2 != 3)
  {
    v10 = 0x6465726977;
    v9 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656E6E6F63736964;
    v2 = 0xEC00000064657463;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26F4A0458();
  }

  return v13 & 1;
}

uint64_t sub_26F4288C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656C676E41;
  v3 = 0x656E696C65736162;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6172546A6F7270;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006D726F6673;
    }

    else
    {
      v6 = 0x800000026F4AC610;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684108657;
    }

    else
    {
      v5 = 0x656E696C65736162;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED0000656C676E41;
    }
  }

  v7 = 0x6E6172546A6F7270;
  v8 = 0x800000026F4AC610;
  if (a2 == 2)
  {
    v8 = 0xED00006D726F6673;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 1684108657;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t sub_26F428A18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x67696C4174786574;
    v10 = 0xED0000746E656D6ELL;
    if (a1 != 6)
    {
      v9 = 0xD00000000000001BLL;
      v10 = 0x800000026F4AC6C0;
    }

    v11 = 0x664F7265626D756ELL;
    v12 = 0xED000073656E694CLL;
    if (a1 != 4)
    {
      v11 = 0xD000000000000015;
      v12 = 0x800000026F4AC690;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = 25705;
    v5 = 0x695473646E756F62;
    v6 = 0xEF706D617473656DLL;
    if (a1 != 2)
    {
      v5 = 0x7061726761726170;
      v6 = 0xEA00000000007368;
    }

    if (a1)
    {
      v4 = 0x73646E756F62;
      v3 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEF706D617473656DLL;
        if (v7 != 0x695473646E756F62)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xEA00000000007368;
        if (v7 != 0x7061726761726170)
        {
          goto LABEL_46;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x73646E756F62)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v7 != 25705)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0x800000026F4AC690;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v14 = 0x664F7265626D756ELL;
    v15 = 0x73656E694CLL;
    goto LABEL_35;
  }

  if (a2 == 6)
  {
    v14 = 0x67696C4174786574;
    v15 = 0x746E656D6ELL;
LABEL_35:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v7 != v14)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v13 = 0x800000026F4AC6C0;
  if (v7 != 0xD00000000000001BLL)
  {
LABEL_46:
    v16 = sub_26F4A0458();
    goto LABEL_47;
  }

LABEL_44:
  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_26F428CDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7466654C706F74;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x654C6D6F74746F62;
    }

    else
    {
      v4 = 0x69526D6F74746F62;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007466;
    }

    else
    {
      v5 = 0xEB00000000746867;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7468676952706F74;
    }

    else
    {
      v4 = 0x7466654C706F74;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x654C6D6F74746F62;
  v8 = 0xEA00000000007466;
  if (a2 != 2)
  {
    v7 = 0x69526D6F74746F62;
    v8 = 0xEB00000000746867;
  }

  if (a2)
  {
    v2 = 0x7468676952706F74;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t static NetworkPathService.isDisconnected()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F428ECC;

  return static NetworkPathService.read()(v0 + 24);
}

uint64_t sub_26F428ECC()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F428FC8, 0, 0);
}

uint64_t sub_26F428FC8()
{
  if (*(v0 + 24) > 1u)
  {
    *(v0 + 24);
LABEL_4:
    v1 = sub_26F4A0458();
    goto LABEL_5;
  }

  if (!*(v0 + 24))
  {
    goto LABEL_4;
  }

  v1 = 1;
LABEL_5:

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t NetworkPath.description.getter()
{
  v1 = *v0;
  v2 = 0x616C696176616E75;
  v3 = 0x72616C756C6C6563;
  v4 = 1768319351;
  if (v1 != 3)
  {
    v4 = 0x6465726977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6E6F63736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

TranslationUI::NetworkPath_optional __swiftcall NetworkPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26F4291E8()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F4292D0()
{
  *v0;
  *v0;
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F4293A4()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F429494(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C62;
  v4 = 0x616C696176616E75;
  v5 = 0xE800000000000000;
  v6 = 0x72616C756C6C6563;
  v7 = 0xE400000000000000;
  v8 = 1768319351;
  if (v2 != 3)
  {
    v8 = 0x6465726977;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E6E6F63736964;
    v3 = 0xEC00000064657463;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26F4295E8()
{
  v1 = *v0;
  v2 = 0x616C696176616E75;
  v3 = 0x72616C756C6C6563;
  v4 = 1768319351;
  if (v1 != 3)
  {
    v4 = 0x6465726977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6E6F63736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static NetworkPathService.read()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for Signpost() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F429718, 0, 0);
}

uint64_t sub_26F429718()
{
  v18 = v0;
  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67DF8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Network status read", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  sub_26F3B2404(&v17);
  if (v17 == 5)
  {
    v5 = v0[3];
    sub_26F43762C(12, 0, v5);
    v6 = sub_26F49DE98();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_26F49DE88();
    v0[4] = v9;
    v10 = swift_task_alloc();
    v0[5] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    v11 = *(MEMORY[0x277D859E0] + 4);
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_26F42994C;
    v13 = v0[2];

    return MEMORY[0x2822007B8](v13, 0, 0, 0x292864616572, 0xE600000000000000, sub_26F429DC4, v10, &type metadata for NetworkPath);
  }

  else
  {
    *v0[2] = v17;
    v14 = v0[3];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_26F42994C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26F429A64, 0, 0);
}

uint64_t sub_26F429A64()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_26F429DCC(v2);
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

void sub_26F429AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v5 = sub_26F49F6A8();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  (*(v13 + 16))(&v25 - v16, a1, v12, v15);
  sub_26F42A644(a3, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v10 + 80) + v19 + 8) & ~*(v10 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v18, v17, v12);
  *(v21 + v19) = v26;
  sub_26F42A6A8(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);

  sub_26F49DE58();
  sub_26F3B2E18();
  v23 = v27;
  v22 = v28;
  (*(v27 + 104))(v8, *MEMORY[0x277D851C8], v28);
  v24 = sub_26F49FE88();
  (*(v23 + 8))(v8, v22);
  sub_26F49DE68();
}

uint64_t sub_26F429DCC(uint64_t a1)
{
  v2 = type metadata accessor for Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F429E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a3;
  v25[2] = a4;
  v25[0] = a2;
  v4 = sub_26F49DE48();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49DEB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  sub_26F49DEC8();
  (*(v10 + 104))(v13, *MEMORY[0x277CD8F78], v9);
  sub_26F42A7FC();
  v17 = sub_26F49F868();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v16, v9);
  if (v17)
  {
    v19 = v5[13];
    v19(v8, *MEMORY[0x277CD8CA0], v4);
    v20 = sub_26F49DEA8();
    v21 = v5[1];
    v21(v8, v4);
    if (v20)
    {
      v26 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
    }

    else
    {
      v19(v8, *MEMORY[0x277CD8CA8], v4);
      v22 = sub_26F49DEA8();
      v21(v8, v4);
      if (v22)
      {
        v27 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
      }

      else
      {
        v19(v8, *MEMORY[0x277CD8CB8], v4);
        v23 = sub_26F49DEA8();
        v21(v8, v4);
        if (v23)
        {
          v28 = 2;
        }

        else
        {
          v29 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
      }
    }
  }

  else
  {
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
  }

  sub_26F49FB88();
  sub_26F49DE78();
  return sub_26F437AD0();
}

void sub_26F42A1D0(_BYTE *a1@<X8>)
{
  v2 = sub_26F49F958();
  v3 = getenv((v2 + 32));

  if (v3)
  {
    v4 = sub_26F49F9F8();
    v6 = sub_26F3CBEC4(v4, v5);

    if (v6)
    {
      sub_26F4A00F8();
      if (*(v6 + 16) && (v7 = sub_26F45FD44(v29), (v8 & 1) != 0))
      {
        sub_26F3B2DBC(*(v6 + 56) + 32 * v7, v30);
        sub_26F3B2D68(v29);

        if (swift_dynamicCast())
        {
          v9._countAndFlagsBits = 0x4F5754454E5F544CLL;
          v9._object = 0xEF485441505F4B52;
          NetworkPath.init(rawValue:)(v9);
          v10 = LOBYTE(v29[0]);
          if (LOBYTE(v29[0]) != 5)
          {
            if (qword_280F657C0 != -1)
            {
              swift_once();
            }

            v11 = sub_26F49DCA8();
            __swift_project_value_buffer(v11, qword_280F67DF8);
            v12 = sub_26F49DC88();
            v13 = sub_26F49FDB8();
            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              v29[0] = v15;
              v16 = 0xEB00000000656C62;
              v17 = 0x616C696176616E75;
              *v14 = 136315138;
              v18 = 0xE800000000000000;
              v19 = 0x72616C756C6C6563;
              v20 = 0xE400000000000000;
              v21 = 1768319351;
              if (v10 != 3)
              {
                v21 = 0x6465726977;
                v20 = 0xE500000000000000;
              }

              if (v10 != 2)
              {
                v19 = v21;
                v18 = v20;
              }

              if (v10)
              {
                v17 = 0x656E6E6F63736964;
                v16 = 0xEC00000064657463;
              }

              if (v10 <= 1)
              {
                v22 = v17;
              }

              else
              {
                v22 = v19;
              }

              if (v10 <= 1)
              {
                v23 = v16;
              }

              else
              {
                v23 = v18;
              }

              v24 = sub_26F3B38D0(v22, v23, v29);

              *(v14 + 4) = v24;
              _os_log_impl(&dword_26F39E000, v12, v13, "Network path fixture found %s", v14, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v15);
              MEMORY[0x274391F70](v15, -1, -1);
              MEMORY[0x274391F70](v14, -1, -1);
            }

            goto LABEL_30;
          }
        }
      }

      else
      {

        sub_26F3B2D68(v29);
      }
    }
  }

  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v25 = sub_26F49DCA8();
  __swift_project_value_buffer(v25, qword_280F67DF8);
  v26 = sub_26F49DC88();
  v27 = sub_26F49FDB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26F39E000, v26, v27, "Network path fixture not found", v28, 2u);
    MEMORY[0x274391F70](v28, -1, -1);
  }

  LOBYTE(v10) = 5;
LABEL_30:
  *a1 = v10;
}

unint64_t sub_26F42A57C()
{
  result = qword_2806E05C0;
  if (!qword_2806E05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05C0);
  }

  return result;
}

unint64_t sub_26F42A5F0()
{
  result = qword_2806E05C8;
  if (!qword_2806E05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05C8);
  }

  return result;
}

uint64_t sub_26F42A644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42A6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42A70C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Signpost() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_26F429E28(a1, v1 + v4, v7, v8);
}

unint64_t sub_26F42A7FC()
{
  result = qword_2806E05D8;
  if (!qword_2806E05D8)
  {
    sub_26F49DEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05D8);
  }

  return result;
}

uint64_t sub_26F42A858@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_26F49EAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0600, &qword_26F4A7A98);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0608, &qword_26F4A7AA0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0610, &qword_26F4A7AA8);
  v16 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v18 = &v48 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0618, &qword_26F4A7AB0);
  v19 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v48 - v20;
  sub_26F49EAD8();
  sub_26F49F5A8();
  sub_26F49E3D8();
  (*(v2 + 32))(v10, v5, v1);
  v22 = &v10[*(v7 + 44)];
  v23 = v57;
  *(v22 + 4) = v56;
  *(v22 + 5) = v23;
  *(v22 + 6) = v58;
  v24 = v53;
  *v22 = v52;
  *(v22 + 1) = v24;
  v25 = v55;
  *(v22 + 2) = v54;
  *(v22 + 3) = v25;
  sub_26F49F228();
  sub_26F49EAE8();
  v26 = sub_26F49F268();

  LOBYTE(v5) = sub_26F49EC48();
  sub_26F3BBAEC(v10, v15, &qword_2806E0600, &qword_26F4A7A98);
  v27 = &v15[*(v12 + 44)];
  *v27 = v26;
  v27[8] = v5;
  if (sub_26F49EAE8())
  {
    v28 = sub_26F49F288();
  }

  else
  {
    v29 = [objc_opt_self() systemBackgroundColor];
    v28 = sub_26F49F218();
  }

  v30 = v28;
  KeyPath = swift_getKeyPath();
  sub_26F3BBAEC(v15, v18, &qword_2806E0608, &qword_26F4A7AA0);
  v32 = &v18[*(v49 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_26F49ECA8();
  v33 = sub_26F49ECB8();

  v34 = swift_getKeyPath();
  sub_26F3BBAEC(v18, v21, &qword_2806E0610, &qword_26F4A7AA8);
  v35 = &v21[*(v50 + 36)];
  *v35 = v34;
  v35[1] = v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0620, &qword_26F4A7B18);
  v37 = v51;
  v38 = (v51 + *(v36 + 36));
  v39 = *(sub_26F49E3A8() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_26F49E7C8();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #10.0 }

  *v38 = _Q0;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20) + 36)] = 256;
  return sub_26F3BBAEC(v21, v37, &qword_2806E0618, &qword_26F4A7AB0);
}

uint64_t PanelButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_26F49EC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05E0, &qword_26F4A79C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14[-v9];
  (*(v3 + 16))(&v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v8);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v15 = a1;
  sub_26F49EBD8();
  sub_26F42B770(&qword_2806E05E8, MEMORY[0x277CDE500]);
  sub_26F49F398();
  sub_26F3B18CC(&qword_2806E05F0, &qword_2806E05E0, &qword_26F4A79C0);
  sub_26F42AFB0();
  sub_26F49EF58();
  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_26F42AFB0()
{
  result = qword_2806E05F8;
  if (!qword_2806E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05F8);
  }

  return result;
}

uint64_t sub_26F42B020(uint64_t a1)
{
  v2 = sub_26F49EC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05E0, &qword_26F4A79C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14[-v9];
  (*(v3 + 16))(&v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v8);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v15 = a1;
  sub_26F49EBD8();
  sub_26F42B770(&qword_2806E05E8, MEMORY[0x277CDE500]);
  sub_26F49F398();
  sub_26F3B18CC(&qword_2806E05F0, &qword_2806E05E0, &qword_26F4A79C0);
  sub_26F42AFB0();
  sub_26F49EF58();
  return (*(v6 + 8))(v10, v5);
}

uint64_t objectdestroyTm_10()
{
  v1 = sub_26F49EC08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F42B378()
{
  v1 = *(sub_26F49EC08() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26F49EBF8();
}

unint64_t sub_26F42B3D4()
{
  result = qword_2806E0628;
  if (!qword_2806E0628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0620, &qword_26F4A7B18);
    sub_26F42B48C();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0628);
  }

  return result;
}

unint64_t sub_26F42B48C()
{
  result = qword_2806E0630;
  if (!qword_2806E0630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0618, &qword_26F4A7AB0);
    sub_26F42B544();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0630);
  }

  return result;
}

unint64_t sub_26F42B544()
{
  result = qword_2806E0638;
  if (!qword_2806E0638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0610, &qword_26F4A7AA8);
    sub_26F42B5FC();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0638);
  }

  return result;
}

unint64_t sub_26F42B5FC()
{
  result = qword_2806E0640;
  if (!qword_2806E0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0608, &qword_26F4A7AA0);
    sub_26F42B6B4();
    sub_26F3B18CC(&qword_2806DF2E0, &qword_2806DF2E8, &qword_26F4A3D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0640);
  }

  return result;
}

unint64_t sub_26F42B6B4()
{
  result = qword_2806E0648;
  if (!qword_2806E0648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0600, &qword_26F4A7A98);
    sub_26F42B770(&qword_2806DECF8, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0648);
  }

  return result;
}

uint64_t sub_26F42B770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlayButton.Size.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t PlayButton.init(isPlaying:size:action:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 1) = v5;
  return result;
}

uint64_t PlayButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0650, &qword_26F4A7B28);
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v34 = &v29 - v3;
  v4 = sub_26F49E358();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0658, &qword_26F4A7B30);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0660, &qword_26F4A7B38);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *v1;
  v17 = v1[1];
  v18 = *(v1 + 1);
  v19 = *(v1 + 2);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 17) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  v37 = v16;
  v38 = v17;
  v21 = v15;
  v22 = v34;
  v39 = v18;
  v40 = v19;
  sub_26F3ACF68(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0668, &qword_26F4A7B40);
  sub_26F42C0EC();
  sub_26F49F398();
  sub_26F49E348();
  v23 = sub_26F3B18CC(&qword_2806E06B0, &qword_2806E0658, &qword_26F4A7B30);
  v24 = sub_26F42C2E8(&qword_2806DF160, MEMORY[0x277CDDB18]);
  sub_26F49EF48();
  (*(v36 + 8))(v7, v4);
  (*(v35 + 8))(v11, v8);
  v25 = *MEMORY[0x277CDFA00];
  v26 = sub_26F49E2C8();
  (*(*(v26 - 8) + 104))(v22, v25, v26);
  sub_26F42C2E8(&qword_2806E06B8, MEMORY[0x277CDFA28]);
  result = sub_26F49F868();
  if (result)
  {
    v41 = v8;
    v42 = v4;
    v43 = v23;
    v44 = v24;
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806E06C0, &qword_2806E0650, &qword_26F4A7B28);
    v28 = v31;
    sub_26F49EFF8();
    sub_26F3B6B4C(v22, &qword_2806E0650, &qword_26F4A7B28);
    return (*(v30 + 8))(v21, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26F42BD3C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t sub_26F42BD6C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = BYTE1(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06D0, &qword_26F4A7C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06A0, &qword_26F4A7B58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  if (v3 == 2)
  {
    v15 = sub_26F49F2B8();
    v16 = (v11 + *(v8 + 36));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA0, &qword_26F4A55E8) + 28);
    v18 = *MEMORY[0x277CE1048];
    v19 = sub_26F49F2E8();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v11 = v15;
    sub_26F42C7C0(v11, v14);
    sub_26F42C830(v14, v7);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0680, &qword_26F4A7B48);
    sub_26F42C178();
    sub_26F42C230();
    sub_26F49E928();
    return sub_26F3B6B4C(v14, &qword_2806E06A0, &qword_26F4A7B58);
  }

  else
  {
    v21 = sub_26F49F5A8();
    v23 = v22;
    sub_26F42C3A4(a1 & 0xFFFFFF01, &v34);
    v24 = v35;
    v25 = v36;
    v26 = BYTE1(v36);
    v30 = v34;
    v32 = v36;
    sub_26F49F5A8();
    sub_26F49E0C8();
    *&v33[6] = v34;
    *&v33[22] = v35;
    *&v33[38] = v36;
    *v7 = v21;
    *(v7 + 1) = v23;
    *(v7 + 1) = v30;
    *(v7 + 2) = v24;
    v7[48] = v25;
    v7[49] = v26;
    v27 = *v33;
    v28 = *&v33[16];
    v29 = *&v33[32];
    *(v7 + 12) = *&v33[46];
    *(v7 + 82) = v29;
    *(v7 + 66) = v28;
    *(v7 + 50) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0680, &qword_26F4A7B48);
    sub_26F42C178();
    sub_26F42C230();
    return sub_26F49E928();
  }
}

uint64_t sub_26F42C0D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_26F42BD6C(*(v1 + 16) | (*(v1 + 17) << 8), a1);
}

unint64_t sub_26F42C0EC()
{
  result = qword_2806E0670;
  if (!qword_2806E0670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0668, &qword_26F4A7B40);
    sub_26F42C178();
    sub_26F42C230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0670);
  }

  return result;
}

unint64_t sub_26F42C178()
{
  result = qword_2806E0678;
  if (!qword_2806E0678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0680, &qword_26F4A7B48);
    sub_26F3B18CC(&qword_2806E0688, &qword_2806E0690, &qword_26F4A7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0678);
  }

  return result;
}

unint64_t sub_26F42C230()
{
  result = qword_2806E0698;
  if (!qword_2806E0698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E06A0, &qword_26F4A7B58);
    sub_26F3B18CC(&qword_2806E06A8, &qword_2806DFCA0, &qword_26F4A55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0698);
  }

  return result;
}

uint64_t sub_26F42C2E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F42C334()
{
  result = qword_2806E06C8;
  if (!qword_2806E06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E06C8);
  }

  return result;
}

uint64_t sub_26F42C3A4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v3 = sub_26F49F2C8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49F2B8();
  v16 = *MEMORY[0x277CE0FE0];
  v15 = v4[13];
  v15(v7);
  v8 = sub_26F49F2F8();

  v9 = v4[1];
  v9(v7, v3);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_26F49F298();
  sub_26F49F2B8();
  (v15)(v7, v16, v3);
  v13 = sub_26F49F2F8();

  v9(v7, v3);
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t sub_26F42C604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_26F42C660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F42C6F8(uint64_t a1)
{
  v2 = sub_26F49F2E8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_26F49E428();
}

uint64_t sub_26F42C7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06A0, &qword_26F4A7B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42C830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06A0, &qword_26F4A7B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*EnvironmentValues.presentLanguageSelection.getter())()
{
  sub_26F42CA04();
  sub_26F49E688();
  *(swift_allocObject() + 16) = v1;
  return sub_26F42CA58;
}

uint64_t (*EnvironmentValues._presentLanguageSelection.getter())()
{
  sub_26F42CA04();
  sub_26F49E688();
  *(swift_allocObject() + 16) = v1;
  return sub_26F42CEC0;
}

unint64_t sub_26F42CA04()
{
  result = qword_2806E06D8;
  if (!qword_2806E06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E06D8);
  }

  return result;
}

uint64_t sub_26F42CA58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26F42CAA0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_26F42CA04();
  return sub_26F49E698();
}

uint64_t sub_26F42CB0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void (*EnvironmentValues.presentLanguageSelection.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_26F42CA04();
  sub_26F49E688();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_26F42CEC0;
  *(v4 + 8) = v5;
  return sub_26F42CBF4;
}

uint64_t sub_26F42CC30(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26F42CA04();

  return sub_26F49E698();
}

void (*EnvironmentValues._presentLanguageSelection.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_26F42CA04();
  sub_26F49E688();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_26F42CEC0;
  *(v4 + 8) = v5;
  return sub_26F42CD50;
}

void sub_26F42CD8C(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    v6[2] = a6;
    v6[3] = v12;

    sub_26F49E698();
    v13 = v6[1];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v7;
    v6[2] = a4;
    v6[3] = v15;
    sub_26F49E698();
  }

  free(v6);
}

double keypath_getTm@<D0>(_OWORD *a1@<X8>)
{
  sub_26F42CA04();
  sub_26F49E688();
  result = *&v3;
  *a1 = v3;
  return result;
}

void Reachability.networkStatus.getter(_BYTE *a1@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  sub_26F42D980(v21);
  v3 = LOBYTE(v21[0]);
  if (LOBYTE(v21[0]) == 3)
  {
    v4 = *(v1 + 48);
    if (v4 && (LODWORD(v21[0]) = 0, SCNetworkReachabilityGetFlags(v4, v21)) && (v21[0] & 2) != 0)
    {
      v16 = *(v1 + 48);
      if (v16 && (LODWORD(v21[0]) = 0, SCNetworkReachabilityGetFlags(v16, v21)) && (v21[0] & 4) != 0)
      {
        LOBYTE(v3) = 0;
        v17 = *(v1 + 48);
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v3) = 1;
        v17 = *(v1 + 48);
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v21[0]) = 0;
      if (SCNetworkReachabilityGetFlags(v17, v21) && (v21[0] & 0x20) != 0)
      {
        goto LABEL_29;
      }

      v18 = *(v1 + 48);
      if (!v18)
      {
        goto LABEL_19;
      }

      LODWORD(v21[0]) = 0;
      if (SCNetworkReachabilityGetFlags(v18, v21))
      {
        if ((v21[0] & 8) != 0)
        {
LABEL_29:
          v19 = *(v1 + 48);
          if (!v19 || (LODWORD(v21[0]) = 0, !SCNetworkReachabilityGetFlags(v19, v21)) || (v21[0] & 0x10) == 0)
          {
            LOBYTE(v3) = 1;
          }
        }
      }

      v20 = *(v1 + 48);
      if (v20)
      {
        LODWORD(v21[0]) = 0;
        if (SCNetworkReachabilityGetFlags(v20, v21))
        {
          if ((v21[0] & 0x40000) != 0)
          {
            LOBYTE(v3) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    if (qword_280F657C0 != -1)
    {
      swift_once();
    }

    v5 = sub_26F49DCA8();
    __swift_project_value_buffer(v5, qword_280F67DF8);
    v6 = sub_26F49DC88();
    v7 = sub_26F49FDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21[0] = v9;
      *v8 = 136446210;
      v10 = 0xE400000000000000;
      v11 = 1768319319;
      if (v3 != 1)
      {
        v11 = 0x72616C756C6C6543;
        v10 = 0xE800000000000000;
      }

      if (v3)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0x656E6E6F43206F4ELL;
      }

      if (v3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xED00006E6F697463;
      }

      v14 = sub_26F3B38D0(v12, v13, v21);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_26F39E000, v6, v7, "Using network status of '%{public}s' since the debug preference is set", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x274391F70](v9, -1, -1);
      MEMORY[0x274391F70](v8, -1, -1);
    }
  }

LABEL_19:
  *a1 = v3;
  v15 = *MEMORY[0x277D85DE8];
}

TranslationUI::NetworkStatus_optional __swiftcall NetworkStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NetworkStatus.rawValue.getter()
{
  v1 = 1768319319;
  if (*v0 != 1)
  {
    v1 = 0x72616C756C6C6543;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6E6F43206F4ELL;
  }
}

uint64_t sub_26F42D250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1768319319;
  if (v2 != 1)
  {
    v4 = 0x72616C756C6C6543;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E6E6F43206F4ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697463;
  }

  v7 = 0xE400000000000000;
  v8 = 1768319319;
  if (*a2 != 1)
  {
    v8 = 0x72616C756C6C6543;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E6E6F43206F4ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697463;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t sub_26F42D34C()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F42D3F4()
{
  *v0;
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F42D488()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F42D538(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697463;
  v4 = 0xE400000000000000;
  v5 = 1768319319;
  if (v2 != 1)
  {
    v5 = 0x72616C756C6C6543;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6E6F43206F4ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26F42D5B8()
{
  result = sub_26F49F898();
  qword_2806E06E0 = result;
  return result;
}

id static Reachability.reachibilityChangedNotification.getter()
{
  if (qword_2806DE7A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2806E06E0;

  return v1;
}

uint64_t Reachability.__allocating_init(networkReachability:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Reachability.init(networkReachability:)(a1);
  return v2;
}

uint64_t Reachability.init(networkReachability:)(uint64_t a1)
{
  v14 = a1;
  v13 = sub_26F49FE48();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49FE28();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_26F49F6C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v1 + 44) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 60) = 1;
  sub_26F3B2E18();
  sub_26F49F6B8();
  v15 = MEMORY[0x277D84F90];
  sub_26F42DA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06E8, &qword_26F4A7D10);
  sub_26F42DA5C();
  sub_26F4A0058();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v13);
  *(v1 + 64) = sub_26F49FE78();
  *(v1 + 72) = 0;
  *(v1 + 80) = [objc_opt_self() defaultCenter];
  v10 = *(v1 + 48);
  *(v1 + 48) = v14;

  return v1;
}

uint64_t Reachability.deinit()
{
  v1 = *(v0 + 24);
  sub_26F3ACE98(*(v0 + 16));
  v2 = *(v0 + 40);
  sub_26F3ACE98(*(v0 + 32));

  return v0;
}

uint64_t Reachability.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_26F3ACE98(*(v0 + 16));
  v2 = *(v0 + 40);
  sub_26F3ACE98(*(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_26F42D980(char *a1@<X8>)
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v3 = v2;
  v4 = sub_26F49F898();
  v5 = [v3 integerForKey_];

  if (v5 >= 4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 3 - v5;
  }

  *a1 = v6;
}

unint64_t sub_26F42DA04()
{
  result = qword_280F65690;
  if (!qword_280F65690)
  {
    sub_26F49FE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65690);
  }

  return result;
}

unint64_t sub_26F42DA5C()
{
  result = qword_280F656C0;
  if (!qword_280F656C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E06E8, &qword_26F4A7D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F656C0);
  }

  return result;
}

unint64_t sub_26F42DAC4()
{
  result = qword_2806E06F0;
  if (!qword_2806E06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E06F0);
  }

  return result;
}

uint64_t sub_26F42DB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_26F435E54(qword_2806E07F0, MEMORY[0x277CC9788]);
    v22 = sub_26F49F868();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F42DD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 48)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_26F4A0458() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        v10 = v8 ^ 1;
        if (v7 != (v5 != 0))
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v3 += 48;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26F42DE5C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
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
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x274390F80](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x274390F80](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = MEMORY[0x27438E800](v14 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale, v15 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;
      v23 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

      v4 = MEMORY[0x27438E800](a2 + v23, v22 + v23);

      v25 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v25)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_26F4A00A8();
  }

  result = sub_26F4A00A8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_26F42E0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_26F435F94(v14, v11, type metadata accessor for SharedTranslations.Translation);
      sub_26F435F94(v15, v7, type metadata accessor for SharedTranslations.Translation);
      if ((MEMORY[0x27438E800](v11, v7) & 1) == 0 || (MEMORY[0x27438E800](&v11[v4[5]], &v7[v4[5]]) & 1) == 0)
      {
        break;
      }

      v17 = v4[6];
      v18 = *&v11[v17];
      v19 = *&v11[v17 + 8];
      v20 = &v7[v17];
      v21 = v18 == *v20 && v19 == *(v20 + 1);
      if (!v21 && (sub_26F4A0458() & 1) == 0)
      {
        break;
      }

      v22 = v4[7];
      v23 = *&v11[v22];
      v24 = *&v11[v22 + 8];
      v25 = &v7[v22];
      if (v23 == *v25 && v24 == *(v25 + 1))
      {
        sub_26F435FFC(v7, type metadata accessor for SharedTranslations.Translation);
        sub_26F435FFC(v11, type metadata accessor for SharedTranslations.Translation);
      }

      else
      {
        v27 = sub_26F4A0458();
        sub_26F435FFC(v7, type metadata accessor for SharedTranslations.Translation);
        sub_26F435FFC(v11, type metadata accessor for SharedTranslations.Translation);
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_26F435FFC(v7, type metadata accessor for SharedTranslations.Translation);
    sub_26F435FFC(v11, type metadata accessor for SharedTranslations.Translation);
  }

  return 0;
}

uint64_t sub_26F42E338(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC28, &qword_26F4A8110);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for LanguageOption();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = *(a2 + 16);
  if (!v18)
  {
    return 0;
  }

  v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v20 = *(v14 + 72);
  v21 = (v4 + 48);
  v34 = (v4 + 8);
  v30 = (v4 + 32);
  v31 = v7;
  v35 = v20;
  v36 = v15;
  while (1)
  {
    sub_26F435F94(v19, v17, type metadata accessor for LanguageOption);
    v22 = *(v7 + 48);
    sub_26F435F94(v17, v10, type metadata accessor for LanguageOption);
    sub_26F435F94(v37, &v10[v22], type metadata accessor for LanguageOption);
    v23 = *v21;
    v24 = (*v21)(v10, 2, v3);
    if (v24)
    {
      break;
    }

    v25 = v36;
    sub_26F435F94(v10, v36, type metadata accessor for LanguageOption);
    if (v23(&v10[v22], 2, v3))
    {
      (*v34)(v25, v3);
      v20 = v35;
      goto LABEL_4;
    }

    v26 = v32;
    (*v30)(v32, &v10[v22], v3);
    v33 = MEMORY[0x27438E800](v25, v26);
    v27 = *v34;
    v28 = v26;
    v7 = v31;
    (*v34)(v28, v3);
    v27(v25, v3);
    sub_26F435FFC(v10, type metadata accessor for LanguageOption);
    sub_26F435FFC(v17, type metadata accessor for LanguageOption);
    v20 = v35;
    if (v33)
    {
      return 1;
    }

LABEL_5:
    v19 += v20;
    if (!--v18)
    {
      return 0;
    }
  }

  if (v24 != 1)
  {
    if (v23(&v10[v22], 2, v3) == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

  if (v23(&v10[v22], 2, v3) != 1)
  {
LABEL_4:
    sub_26F3B6B4C(v10, &qword_2806DFC28, &qword_26F4A8110);
    sub_26F435FFC(v17, type metadata accessor for LanguageOption);
    goto LABEL_5;
  }

LABEL_15:
  sub_26F435FFC(v10, type metadata accessor for LanguageOption);
  sub_26F435FFC(v17, type metadata accessor for LanguageOption);
  return 1;
}

uint64_t sub_26F42E750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_26F435F94(v10, v8, type metadata accessor for SharedTranslations.Translation);
      if (MEMORY[0x27438E800](v8, a1) & 1) != 0 && (MEMORY[0x27438E800](&v8[v4[5]], a1 + v4[5]) & 1) != 0 && ((v12 = v4[6], v13 = *&v8[v12], v14 = *&v8[v12 + 8], v15 = (a1 + v12), v13 == *v15) ? (v16 = v14 == v15[1]) : (v16 = 0), v16 || (sub_26F4A0458()))
      {
        v17 = v4[7];
        v18 = *&v8[v17];
        v19 = *&v8[v17 + 8];
        v20 = (a1 + v17);
        if (v18 == *v20 && v19 == v20[1])
        {
          sub_26F435FFC(v8, type metadata accessor for SharedTranslations.Translation);
          return 1;
        }

        v22 = sub_26F4A0458();
        sub_26F435FFC(v8, type metadata accessor for SharedTranslations.Translation);
        if (v22)
        {
          return 1;
        }
      }

      else
      {
        sub_26F435FFC(v8, type metadata accessor for SharedTranslations.Translation);
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

id sub_26F42E988()
{
  v1 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26F42EA3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_26F42EA94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_26F42EC90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  return sub_26F42ECE8(v1 + v3, a1);
}

uint64_t sub_26F42ECE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42EE98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42EEF8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26F42EEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42EF68(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_26F42ECE8(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42EEF8(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_26F42F088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_26F42F0F0()
{
  v1 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_26F42F138(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26F42F1F0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26F435DA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26F3ACF68(v4);
}

uint64_t sub_26F42F290(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26F435D9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26F3ACF68(v3);
  return sub_26F3ACE98(v8);
}

uint64_t sub_26F42F358()
{
  v1 = (v0 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_26F3ACF68(v3);
  return v3;
}

uint64_t sub_26F42F3B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26F3ACE98(v6);
}

uint64_t static SharedTranslations.translationGroupSharedTranslations()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = sub_26F49F898();
  v18 = [v16 containerURLForSecurityApplicationGroupIdentifier_];

  if (v18)
  {
    sub_26F49D848();

    v19 = sub_26F49D878();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v19 = sub_26F49D878();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  sub_26F42F7E8(v12, v15);
  sub_26F42ECE8(v15, v6);
  sub_26F49D878();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v6, 1, v19) == 1)
  {
    sub_26F3B6B4C(v6, &qword_2806DF2A0, &qword_26F4A7190);
    v22 = 1;
  }

  else
  {
    sub_26F49D838();
    (*(v20 + 8))(v6, v19);
    v22 = 0;
  }

  (*(v20 + 56))(v9, v22, 1, v19);
  sub_26F42ECE8(v9, v3);
  result = (v21)(v3, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = objc_allocWithZone(type metadata accessor for SharedTranslations(0));
    v25 = SharedTranslations.init(_:)(v3);
    sub_26F3B6B4C(v9, &qword_2806DF2A0, &qword_26F4A7190);
    sub_26F3B6B4C(v15, &qword_2806DF2A0, &qword_26F4A7190);
    return v25;
  }

  return result;
}

uint64_t sub_26F42F7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id SharedTranslations.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  *&v1[v10] = [objc_opt_self() mainQueue];
  v11 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  v12 = sub_26F49D878();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(&v1[v11], 1, 1, v12);
  *&v1[OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations] = MEMORY[0x277D84F90];
  v15 = &v1[OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue;
  v17 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v17 setQualityOfService_];
  *&v1[v16] = v17;
  v18 = type metadata accessor for SharedTranslations(0);
  v36.receiver = v1;
  v36.super_class = v18;
  v19 = objc_msgSendSuper2(&v36, sel_init);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 defaultManager];
  sub_26F49D858();
  v23 = sub_26F49F898();

  LOBYTE(v19) = [v22 fileExistsAtPath_];

  if ((v19 & 1) == 0)
  {
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v24 = sub_26F49DCA8();
    __swift_project_value_buffer(v24, qword_280F67DE0);
    v25 = sub_26F49DC88();
    v26 = sub_26F49FDB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26F39E000, v25, v26, "Shared translations file doesn't exist, creating empty file", v27, 2u);
      MEMORY[0x274391F70](v27, -1, -1);
    }

    sub_26F43316C();
  }

  v28 = objc_opt_self();
  v29 = v21;
  [v28 addFilePresenter_];
  (*(v13 + 16))(v9, a1, v12);
  v14(v9, 0, 1, v12);
  v30 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42EEF8(v9, v29 + v30);
  swift_endAccess();
  v31 = sub_26F49FC08();
  v32 = v35;
  (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v29;
  sub_26F40570C(0, 0, v32, &unk_26F4A7E68, v33);

  (*(v13 + 8))(a1, v12);
  return v29;
}

uint64_t sub_26F42FD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = sub_26F49D878();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F42FE08, 0, 0);
}

uint64_t sub_26F42FE08()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26F3B6B4C(v0[14], &qword_2806DF2A0, &qword_26F4A7190);
    v6 = v0[17];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);

    return MEMORY[0x2822009F8](sub_26F42FF48, 0, 0);
  }
}

uint64_t sub_26F42FF48()
{
  v1 = v0[17];
  v2 = v0[13];
  v0[2] = v0;
  v0[3] = sub_26F42FFF0;
  v3 = swift_continuation_init();
  sub_26F4308F0(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F42FFF0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F436088, 0, 0);
}

id SharedTranslations.__deallocating_deinit()
{
  sub_26F4301E8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTranslations(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F4301E8()
{
  v1 = sub_26F49F698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49F6C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v11 = sub_26F49FE58();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_26F43508C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3308;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_26F49F6B8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F435E54(&qword_280F65710, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0720, &unk_26F4A7E70);
  sub_26F4350EC();
  sub_26F4A0058();
  MEMORY[0x274390C60](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26F4304AC()
{
  v1[13] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = sub_26F49D878();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4305A4, 0, 0);
}

uint64_t sub_26F4305A4()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26F3B6B4C(v0[14], &qword_2806DF2A0, &qword_26F4A7190);
    v6 = v0[17];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);

    return MEMORY[0x2822009F8](sub_26F4306E4, 0, 0);
  }
}

uint64_t sub_26F4306E4()
{
  v1 = v0[17];
  v2 = v0[13];
  v0[2] = v0;
  v0[3] = sub_26F43078C;
  v3 = swift_continuation_init();
  sub_26F4308F0(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F43078C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F43086C, 0, 0);
}

uint64_t sub_26F43086C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

void sub_26F4308F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_26F49D828();
  v7 = [v5 readingIntentWithURL:v6 options:1];

  v8 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26F4A7E40;
  *(v9 + 32) = v7;
  sub_26F3B0C24(0, &qword_280F65668, 0x277CCA9E0);
  v10 = v7;
  v11 = sub_26F49FAD8();

  v12 = *(a3 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v10;
  v17[4] = sub_26F435F88;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26F3B3644;
  v17[3] = &block_descriptor_61_0;
  v15 = _Block_copy(v17);
  v16 = v10;

  [v8 coordinateAccessWithIntents:v11 queue:v12 byAccessor:v15];
  _Block_release(v15);
}

void sub_26F430AFC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_continuation_throwingResume();
    return;
  }

  v12 = Strong;
  if (a1)
  {
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v13 = sub_26F49DCA8();
    __swift_project_value_buffer(v13, qword_280F67DE0);
    v14 = a1;
    v15 = sub_26F49DC88();
    v16 = sub_26F49FDD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = sub_26F49D7E8();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_26F39E000, v15, v16, "Failed to load shared translations from disk: %@", v17, 0xCu);
      sub_26F3B6B4C(v18, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v18, -1, -1);
      MEMORY[0x274391F70](v17, -1, -1);
    }

    goto LABEL_21;
  }

  v20 = [a4 URL];
  sub_26F49D848();

  v21 = sub_26F49D888();
  v23 = v22;
  (*(v7 + 8))(v10, v6);
  v24 = sub_26F49D6B8();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_26F49D6A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
  sub_26F435EA4(&qword_280F656E0, &qword_280F65AB8);
  sub_26F49D698();
  v27 = v41[1];
  v28 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v29 = *&v12[v28];

  v31 = sub_26F42E0B4(v30, v27);

  if (v31)
  {

    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v32 = sub_26F49DCA8();
    __swift_project_value_buffer(v32, qword_280F67DE0);
    v15 = sub_26F49DC88();
    v33 = sub_26F49FDB8();
    if (!os_log_type_enabled(v15, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_26F39E000, v15, v33, "Did not load translations from disk because no changes", v34, 2u);
    v35 = v34;
  }

  else
  {
    v36 = *&v12[v28];
    *&v12[v28] = v27;

    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v37 = sub_26F49DCA8();
    __swift_project_value_buffer(v37, qword_280F67DE0);
    v38 = v12;
    v15 = sub_26F49DC88();
    v39 = sub_26F49FDB8();
    if (!os_log_type_enabled(v15, v39))
    {

      goto LABEL_20;
    }

    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = *(*&v12[v28] + 16);

    _os_log_impl(&dword_26F39E000, v15, v39, "Loaded %ld translations from disk", v40, 0xCu);
    v35 = v40;
  }

  MEMORY[0x274391F70](v35, -1, -1);
LABEL_18:

LABEL_20:
  sub_26F3C8F70(v21, v23);
LABEL_21:

  swift_continuation_throwingResume();
}

uint64_t sub_26F431164(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_26F49D878();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_26F3B6B4C(v10, &qword_2806DF2A0, &qword_26F4A7190);
  }

  (*(v12 + 32))(v15, v10, v11);
  v39 = a1;
  v18 = objc_opt_self();
  v19 = sub_26F49D828();
  v40 = v11;
  v20 = v19;
  v21 = [v18 readingIntentWithURL:v19 options:0];

  v22 = sub_26F49D828();
  v23 = [v18 writingIntentWithURL:v22 options:4];

  v38 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26F4A7E50;
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;
  sub_26F3B0C24(0, &qword_280F65668, 0x277CCA9E0);
  v25 = v21;
  v37 = v12;
  v26 = v25;
  v27 = v23;
  v28 = sub_26F49FAD8();

  v36 = *(v2 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26F435F94(v39, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedTranslations.Translation);
  v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v26;
  sub_26F435170(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  *(v31 + ((v6 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_26F4351D4;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3644;
  aBlock[3] = &block_descriptor_13;
  v32 = _Block_copy(aBlock);
  v33 = v26;
  v34 = v27;

  v35 = v38;
  [v38 coordinateAccessWithIntents:v28 queue:v36 byAccessor:v32];
  _Block_release(v32);

  return (*(v37 + 8))(v15, v40);
}

void sub_26F4315F0(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v82 = a5;
  v84 = a4;
  v7 = sub_26F49F698();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v80 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_26F49F6C8();
  v79 = *(v81 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharedTranslations.Translation(0);
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26F49D878();
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v70 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (a1)
    {
      if (qword_280F657B8 != -1)
      {
        swift_once();
      }

      v26 = sub_26F49DCA8();
      __swift_project_value_buffer(v26, qword_280F67DE0);
      v27 = a1;
      v28 = sub_26F49DC88();
      v29 = sub_26F49FDD8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = sub_26F49D7E8();
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_26F39E000, v28, v29, "Failed to write translations to disk: %@", v30, 0xCu);
        sub_26F3B6B4C(v31, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v31, -1, -1);
        MEMORY[0x274391F70](v30, -1, -1);
      }
    }

    else
    {
      v75 = v8;
      v76 = v7;
      v33 = [a3 URL];
      sub_26F49D848();

      v34 = sub_26F49D888();
      v36 = v35;
      v77 = *(v85 + 8);
      v77(v23, v17);
      v37 = sub_26F49D6B8();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      v40 = sub_26F49D6A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
      sub_26F435EA4(&qword_280F656E0, &qword_280F65AB8);
      sub_26F49D698();
      v74 = v40;
      v69 = aBlock[0];
      if (qword_280F657B8 != -1)
      {
        swift_once();
      }

      v50 = sub_26F49DCA8();
      __swift_project_value_buffer(v50, qword_280F67DE0);
      v51 = v25;
      v52 = sub_26F49DC88();
      v73 = sub_26F49FDB8();
      if (os_log_type_enabled(v52, v73))
      {
        v53 = swift_slowAlloc();
        v71 = v52;
        v54 = v53;
        *v53 = 134217984;
        v72 = v34;
        v55 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
        swift_beginAccess();
        *(v54 + 1) = *(*&v51[v55] + 16);

        v56 = v71;
        _os_log_impl(&dword_26F39E000, v71, v73, "Read %ld translations from disk", v54, 0xCu);
        MEMORY[0x274391F70](v54, -1, -1);

        sub_26F3C8F70(v72, v36);
      }

      else
      {

        sub_26F3C8F70(v34, v36);
      }

      sub_26F435F94(v84, v16, type metadata accessor for SharedTranslations.Translation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_26F4463B0(0, v69[2] + 1, 1, v69);
      }

      v42 = v69[2];
      v41 = v69[3];
      if (v42 >= v41 >> 1)
      {
        v69 = sub_26F4463B0(v41 > 1, v42 + 1, 1, v69);
      }

      v69[2] = v42 + 1;
      sub_26F435170(v16, v69 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v42);
      v43 = sub_26F49D728();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_26F49D718();
      aBlock[0] = v69;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
      sub_26F435EA4(&qword_280F656E8, &qword_280F65AC0);
      v46 = sub_26F49D708();
      v48 = v47;

      v49 = [v82 URL];
      sub_26F49D848();

      sub_26F49D8A8();
      v77(v20, v17);
      if (qword_280F657B8 != -1)
      {
        swift_once();
      }

      v57 = sub_26F49DCA8();
      __swift_project_value_buffer(v57, qword_280F67DE0);

      v58 = sub_26F49DC88();
      v59 = sub_26F49FDF8();
      v60 = os_log_type_enabled(v58, v59);
      v84 = v48;
      if (v60)
      {
        v61 = swift_slowAlloc();
        *v61 = 134217984;
        *(v61 + 4) = v69[2];

        _os_log_impl(&dword_26F39E000, v58, v59, "Wrote total of %ld (already on disk + 1) shared translations to disk", v61, 0xCu);
        MEMORY[0x274391F70](v61, -1, -1);
      }

      else
      {
      }

      sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
      v62 = sub_26F49FE58();
      v63 = swift_allocObject();
      *(v63 + 16) = v69;
      *(v63 + 24) = v25;
      aBlock[4] = sub_26F435E9C;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26F3B3308;
      aBlock[3] = &block_descriptor_54;
      v64 = _Block_copy(aBlock);
      v65 = v25;

      v66 = v78;
      sub_26F49F6B8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26F435E54(&qword_280F65710, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0720, &unk_26F4A7E70);
      sub_26F4350EC();
      v67 = v80;
      v68 = v76;
      sub_26F4A0058();
      MEMORY[0x274390C60](0, v66, v67, v64);
      _Block_release(v64);

      sub_26F3C8F70(v46, v84);

      (*(v75 + 8))(v67, v68);
      (*(v79 + 8))(v66, v81);
    }
  }
}

uint64_t sub_26F43232C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v5 = *(a2 + v4);

  v6 = sub_26F42E0B4(a1, v5);

  if ((v6 & 1) == 0)
  {
    v8 = *(a2 + v4);
    *(a2 + v4) = a1;
  }

  return result;
}

uint64_t sub_26F4323C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v4 = *(v1 + v3);

  LOBYTE(a1) = sub_26F42E750(a1, v4);

  return a1 & 1;
}

uint64_t sub_26F432438()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = sub_26F49D878();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F432530, 0, 0);
}

uint64_t sub_26F432530()
{
  if (qword_280F657B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67DE0);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Clearing loaded translations then disk", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = MEMORY[0x277D84F90];

  v11 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v8 + v11, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_26F3B6B4C(v0[9], &qword_2806DF2A0, &qword_26F4A7190);
    v12 = v0[12];
    v13 = v0[9];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[12];
    v17 = v0[8];
    (*(v0[11] + 32))(v16, v0[9], v0[10]);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = *(MEMORY[0x277D859E0] + 4);
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_26F4327E8;
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v20, 0, 0, 0x7369447261656C63, 0xEB0000000029286BLL, sub_26F435274, v18, v21);
  }
}

uint64_t sub_26F4327E8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26F432900, 0, 0);
}

uint64_t sub_26F432900()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

void sub_26F432984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = objc_opt_self();
  v11 = sub_26F49D828();
  v12 = [v10 writingIntentWithURL:v11 options:4];

  v13 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26F4A7E40;
  *(v14 + 32) = v12;
  sub_26F3B0C24(0, &qword_280F65668, 0x277CCA9E0);
  v15 = v12;
  v16 = sub_26F49FAD8();

  v17 = *(a3 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue);
  (*(v6 + 16))(v9, a1, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, v9, v5);
  *(v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_26F435DAC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3644;
  aBlock[3] = &block_descriptor_48;
  v20 = _Block_copy(aBlock);
  v21 = v15;

  [v13 coordinateAccessWithIntents:v16 queue:v17 byAccessor:v20];
  _Block_release(v20);
}

uint64_t sub_26F432C4C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_26F49D878();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v11 = sub_26F49DCA8();
    __swift_project_value_buffer(v11, qword_280F67DE0);
    v12 = a1;
    v13 = sub_26F49DC88();
    v14 = sub_26F49FDD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = sub_26F49D7E8();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_26F39E000, v13, v14, "Failed to remove translations from disk: %@", v15, 0xCu);
      sub_26F3B6B4C(v16, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v16, -1, -1);
      MEMORY[0x274391F70](v15, -1, -1);
    }
  }

  else
  {
    v18 = v8;
    v19 = sub_26F49D728();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_26F49D718();
    v31[1] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
    sub_26F435EA4(&qword_280F656E8, &qword_280F65AC0);
    v22 = sub_26F49D708();
    v24 = v23;
    v25 = [a3 URL];
    sub_26F49D848();

    sub_26F49D8A8();
    (*(v6 + 8))(v10, v18);
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v26 = sub_26F49DCA8();
    __swift_project_value_buffer(v26, qword_280F67DE0);
    v27 = sub_26F49DC88();
    v28 = sub_26F49FDF8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26F39E000, v27, v28, "Cleared shared translations from disk", v29, 2u);
      MEMORY[0x274391F70](v29, -1, -1);
    }

    sub_26F3C8F70(v22, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8);
  return sub_26F49FB88();
}

void sub_26F43316C()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v2 = sub_26F49D828();
  aBlock[4] = sub_26F433708;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F43370C;
  aBlock[3] = &block_descriptor_64;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v1 coordinateWritingItemAtURL:v2 options:0 error:aBlock byAccessor:v3];
  _Block_release(v3);

  v4 = aBlock[0];
  v5 = aBlock[0];
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  if (qword_280F657B8 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_280F67DE0);
  v7 = v5;
  v8 = sub_26F49DC88();
  v9 = sub_26F49FDD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v4;
    v12 = v7;
    _os_log_impl(&dword_26F39E000, v8, v9, "Failed to create empty SharedFavorites.json file: %@", v10, 0xCu);
    sub_26F3B6B4C(v11, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v11, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
    v7 = v8;
    v13 = v1;
    v8 = v12;
    v1 = v12;
  }

  else
  {
    v13 = v7;
  }

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26F433414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F42FD10(a1, v4, v5, v6);
}

uint64_t sub_26F4334C8()
{
  v0 = sub_26F49D728();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26F49D718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
  sub_26F435EA4(&qword_280F656E8, &qword_280F65AC0);
  v3 = sub_26F49D708();
  v5 = v4;
  sub_26F49D8A8();
  sub_26F3C8F70(v3, v5);
}

uint64_t sub_26F43370C(uint64_t a1)
{
  v2 = sub_26F49D878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_26F49D848();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26F4337F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (qword_280F657B8 != -1)
  {
    swift_once();
  }

  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_280F67DE0);
  v7 = sub_26F49DC88();
  v8 = sub_26F49FDB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26F39E000, v7, v8, "File update detected", v9, 2u);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  v10 = sub_26F49FC08();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v12 = v1;
  sub_26F40570C(0, 0, v5, &unk_26F4A7E98, v11);
}

uint64_t sub_26F4339B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = sub_26F49D878();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F433AAC, 0, 0);
}

uint64_t sub_26F433AAC()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26F3B6B4C(v0[17], &qword_2806DF2A0, &qword_26F4A7190);
    v6 = v0[16] + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);

      v7(v9);
      sub_26F3ACE98(v7);
    }

    v10 = v0[20];
    v11 = v0[17];

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);

    return MEMORY[0x2822009F8](sub_26F433C38, 0, 0);
  }
}

uint64_t sub_26F433C38()
{
  v1 = v0[20];
  v2 = v0[16];
  v0[2] = v0;
  v0[3] = sub_26F433CE0;
  v3 = swift_continuation_init();
  sub_26F4308F0(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F433CE0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F433DC0, 0, 0);
}

uint64_t sub_26F433DC0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[16] + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_26F3ACE98(v2);
  }

  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

id SharedTranslations.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SharedTranslations.Translation.sourceLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SharedTranslations.Translation.sourceLocale.setter(uint64_t a1)
{
  v3 = sub_26F49DAB8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SharedTranslations.Translation.targetLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedTranslations.Translation(0) + 20);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharedTranslations.Translation.targetLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedTranslations.Translation(0) + 20);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SharedTranslations.Translation.sourceText.getter()
{
  v1 = (v0 + *(type metadata accessor for SharedTranslations.Translation(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SharedTranslations.Translation.sourceText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharedTranslations.Translation(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharedTranslations.Translation.targetText.getter()
{
  v1 = (v0 + *(type metadata accessor for SharedTranslations.Translation(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SharedTranslations.Translation.targetText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharedTranslations.Translation(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharedTranslations.Translation.init(sourceLocale:targetLocale:sourceText:targetText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_26F49DAB8();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v16 = type metadata accessor for SharedTranslations.Translation(0);
  result = (v15)(a7 + v16[5], a2, v14);
  v18 = (a7 + v16[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a7 + v16[7]);
  *v19 = a5;
  v19[1] = a6;
  return result;
}

uint64_t SharedTranslations.Translation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_26F49DAB8();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0740, &qword_26F4A7EA0);
  v40 = *(v44 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = v37 - v11;
  v13 = type metadata accessor for SharedTranslations.Translation(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F435330();
  v43 = v12;
  v18 = v45;
  sub_26F4A0588();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v9;
  v38 = v6;
  v21 = v40;
  v20 = v41;
  v45 = v13;
  v22 = v42;
  v49 = 2;
  v23 = sub_26F4A02F8();
  v24 = v45;
  v25 = &v16[*(v45 + 24)];
  *v25 = v23;
  v25[1] = v26;
  v37[1] = v26;
  v48 = 3;
  v27 = sub_26F4A02F8();
  v28 = &v16[*(v24 + 28)];
  *v28 = v27;
  v28[1] = v29;
  v47 = 0;
  v37[0] = 0;
  sub_26F4A02F8();
  v30 = v19;
  sub_26F49D978();
  v31 = v16;
  v32 = v16;
  v33 = v22;
  v34 = *(v20 + 32);
  v34(v32, v30, v33);
  v46 = 1;
  sub_26F4A02F8();
  v35 = v38;
  sub_26F49D978();
  (*(v21 + 8))(v43, v44);
  v34((v31 + *(v45 + 20)), v35, v33);
  sub_26F435F94(v31, v39, type metadata accessor for SharedTranslations.Translation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26F435FFC(v31, type metadata accessor for SharedTranslations.Translation);
}

uint64_t SharedTranslations.Translation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0750, &qword_26F4A7EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F435330();
  sub_26F4A0598();
  sub_26F49D988();
  v20[15] = 0;
  sub_26F4A0398();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v12 = type metadata accessor for SharedTranslations.Translation(0);
    v13 = v3 + v12[5];
    sub_26F49D988();
    v20[14] = 1;
    sub_26F4A0398();

    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    v20[13] = 2;
    sub_26F4A0398();
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    v20[12] = 3;
    sub_26F4A0398();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_26F434A88()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F434B58()
{
  *v0;
  *v0;
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F434C14()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F434CE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F435D50();
  *a2 = result;
  return result;
}

void sub_26F434D10(uint64_t *a1@<X8>)
{
  v2 = 0x6F4C656372756F73;
  v3 = 0x6554656372756F73;
  if (*v1 != 2)
  {
    v3 = 0x6554746567726174;
  }

  if (*v1)
  {
    v2 = 0x6F4C746567726174;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xEC000000656C6163;
  }

  else
  {
    v5 = 0xEA00000000007478;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_26F434D9C()
{
  v1 = 0x6F4C656372756F73;
  v2 = 0x6554656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6554746567726174;
  }

  if (*v0)
  {
    v1 = 0x6F4C746567726174;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F434E24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F435D50();
  *a1 = result;
  return result;
}

uint64_t sub_26F434E4C(uint64_t a1)
{
  v2 = sub_26F435330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F434E88(uint64_t a1)
{
  v2 = sub_26F435330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SharedTranslations.Translation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x27438E800]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SharedTranslations.Translation(0);
  if ((MEMORY[0x27438E800](a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_26F4A0458() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 == *v13 && v12 == v13[1])
  {
    return 1;
  }

  return sub_26F4A0458();
}

uint64_t sub_26F434FC4(uint64_t a1, uint64_t a2, int *a3)
{
  if ((MEMORY[0x27438E800]() & 1) == 0 || (MEMORY[0x27438E800](a1 + a3[5], a2 + a3[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a3[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_26F4A0458() & 1) == 0)
  {
    return 0;
  }

  v11 = a3[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_26F4A0458();
}

id sub_26F43508C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 removeFilePresenter_];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F4350EC()
{
  result = qword_280F656C8;
  if (!qword_280F656C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2806E0720, &unk_26F4A7E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F656C8);
  }

  return result;
}

uint64_t sub_26F435170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26F4351D4(void *a1)
{
  v3 = *(type metadata accessor for SharedTranslations.Translation(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_26F4315F0(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_26F43527C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F4339B4(a1, v4, v5, v6);
}

unint64_t sub_26F435330()
{
  result = qword_2806E0748;
  if (!qword_2806E0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0748);
  }

  return result;
}

void sub_26F43538C()
{
  sub_26F435A00();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SharedTranslations.loadTranslations()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F3CEEAC;

  return v6();
}

uint64_t dispatch thunk of SharedTranslations.clear()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F3CF3AC;

  return v6();
}

void sub_26F435A00()
{
  if (!qword_280F663B0)
  {
    sub_26F49D878();
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F663B0);
    }
  }
}

uint64_t sub_26F435A80()
{
  result = sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedTranslations.Translation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedTranslations.Translation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F435C4C()
{
  result = qword_2806E07C0;
  if (!qword_2806E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E07C0);
  }

  return result;
}

unint64_t sub_26F435CA4()
{
  result = qword_2806E07C8;
  if (!qword_2806E07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E07C8);
  }

  return result;
}

unint64_t sub_26F435CFC()
{
  result = qword_2806E07D0;
  if (!qword_2806E07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E07D0);
  }

  return result;
}

uint64_t sub_26F435D50()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F435DAC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F432C4C(a1, v1 + v4, v5);
}

uint64_t sub_26F435E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F435EA4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2806E07E0, &unk_26F4A8100);
    sub_26F435E54(a2, type metadata accessor for SharedTranslations.Translation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_26F435F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F435FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SheetPanel.init(content:button:)@<X0>(void (*a1)(void)@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  a1();
  v5 = type metadata accessor for SheetPanel();
  v6 = a3 + *(v5 + 52);
  a2(v5, v7, v8, v9);
}

uint64_t SheetPanel.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = *(a1 - 1);
  v52 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  *&v51 = *(v10 + 16);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  sub_26F49E308();
  *&v50 = a1[4];
  v65 = v50;
  v66 = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_26F436628();
  v63 = WitnessTable;
  v64 = v12;
  swift_getWitnessTable();
  sub_26F49F428();
  v13 = sub_26F49E308();
  v48 = v13;
  v43 = a1[3];
  v14 = sub_26F49E308();
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x277CDF918];
  v61 = v15;
  v62 = MEMORY[0x277CDF918];
  v17 = swift_getWitnessTable();
  v46 = v17;
  v41 = a1[5];
  v59 = v41;
  v60 = v16;
  v47 = v14;
  v45 = swift_getWitnessTable();
  v55 = v13;
  v56 = v14;
  v57 = v17;
  v58 = v45;
  v44 = type metadata accessor for BottomPanelContainer();
  v49 = *(v44 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v42 = v39 - v22;
  v23 = v5;
  v24 = *(v5 + 16);
  v24(v9, v3, a1, v21);
  v25 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *&v27 = v51;
  *(&v27 + 1) = v43;
  v51 = v27;
  *&v28 = v50;
  *(&v28 + 1) = v41;
  v50 = v28;
  *(v26 + 16) = v27;
  *(v26 + 32) = v28;
  v29 = *(v23 + 32);
  v29(v26 + v25, v9, a1);
  v30 = v53;
  (v24)(v53, v39[1], a1);
  v31 = swift_allocObject();
  v32 = v50;
  *(v31 + 16) = v51;
  *(v31 + 32) = v32;
  v29(v31 + v25, v30, a1);
  v33 = v40;
  BottomPanelContainer.init(content:panel:)(sub_26F43688C, sub_26F436CC0, v48, v47, v40);
  v34 = v44;
  v35 = swift_getWitnessTable();
  v36 = v42;
  sub_26F3B6C60(v33, v34, v35);
  v37 = *(v49 + 8);
  v37(v33, v34);
  sub_26F3B6C60(v36, v34, v35);
  return (v37)(v36, v34);
}

unint64_t sub_26F436628()
{
  result = qword_2806DF9E8;
  if (!qword_2806DF9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9E8);
  }

  return result;
}

uint64_t sub_26F43668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[1] = a6;
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  sub_26F49E308();
  v17[12] = a4;
  v17[13] = MEMORY[0x277CDFC48];
  v17[10] = swift_getWitnessTable();
  v17[11] = sub_26F436628();
  swift_getWitnessTable();
  v11 = sub_26F49F428();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v17 - v14;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a1;
  sub_26F49E7F8();
  sub_26F49F418();
  sub_26F49EC48();
  swift_getWitnessTable();
  sub_26F49F138();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_26F4368A4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_26F49E308();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  v8 = sub_26F49E308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  sub_26F49F188();
  v21[4] = a1;
  v21[5] = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  sub_26F49F0B8();
  (*(v4 + 8))(v7, v3);
  v17 = sub_26F436628();
  v21[2] = WitnessTable;
  v21[3] = v17;
  v18 = swift_getWitnessTable();
  sub_26F3B6C60(v12, v8, v18);
  v19 = *(v9 + 8);
  v19(v12, v8);
  sub_26F3B6C60(v15, v8, v18);
  return (v19)(v15, v8);
}

uint64_t sub_26F436B14()
{
  v0 = *(type metadata accessor for SheetPanel() + 52);
  sub_26F49EC48();
  return sub_26F49F138();
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v2 = (type metadata accessor for SheetPanel() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v6 - 8) + 8))(v0 + v3 + v2[15]);
  return swift_deallocObject();
}

uint64_t sub_26F436CD8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for SheetPanel() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_26F436D90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F436DE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26F436E6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_26F437048(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}