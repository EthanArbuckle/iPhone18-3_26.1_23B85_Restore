uint64_t sub_20BCDA4C0()
{
  sub_20B583E6C(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_filterRoot;
  v2 = sub_20C134EC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_mediaTagStringBuilder);

  return v0;
}

uint64_t sub_20BCDA580()
{
  sub_20BCDA4C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogTipGalleryPageDataProvider()
{
  result = qword_27C76D638;
  if (!qword_27C76D638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCDA62C()
{
  result = sub_20C134EC4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20BCDA714()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = *MEMORY[0x277D51838];
  v13 = sub_20C1352F4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = sub_20C132C14();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_20C135ED4();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_20C136914();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);

  return sub_20C133384();
}

uint64_t sub_20BCDAA6C()
{
  v0 = sub_20C13B604();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C1380C4();
  (*(v1 + 104))(v3, *MEMORY[0x277D4F8B8], v0);
  v5 = sub_20B8D7248(v3, v4);

  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BCDAB90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v8;
  v9[7] = v7;

  return sub_20C137C94();
}

void sub_20BCDAC4C(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v7 = *(a5 + 3);
  v9 = *a5;
  v10 = v6;
  v11 = v7;
  a3(&v12, &v9);
  v8 = v12;
  *&v9 = v12;
  BYTE8(v9) = 0;
  a1(&v9);

  sub_20B583FB8(v8, 0);
}

uint64_t sub_20BCDACF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D280);

  return sub_20C137C94();
}

void sub_20BCDADA0(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  a3(v11, &v10);
  v7 = v11[0];
  v6 = v11[1];
  v8 = v11[2];
  v9 = v11[3];
  v12 = 0;
  a1(v11);

  sub_20BCDB820(v7, v6, v8, v9, 0);
}

uint64_t sub_20BCDAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 0;
  v16 = sub_20C135C84();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_20C13CA04();
  sub_20C134E94();
  v17 = (v6 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_galleryName);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v6 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_galleryDescription);
  *v17 = a1;
  v17[1] = a2;
  *v18 = a3;
  v18[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v72, v6 + 64);
  *(v6 + 104) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + 32) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(&v72, v6 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_mediaTagStringBuilder);
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_platform) = v72;
  v61 = sub_20C1380F4();
  v19 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v60 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v19 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v20 = sub_20C13C724();
  v21 = type metadata accessor for CatalogPageImpressionTracker();
  v22 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v23 = MEMORY[0x277D221C0];
  v22[2] = sub_20C13C6D4();
  v22[3] = v20;
  v22[4] = v23;
  v73 = v21;
  v24 = sub_20BCDB870(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v74 = v24;
  *&v72 = v22;
  v25 = type metadata accessor for MetricLocationStore();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F98];
  *(v26 + 16) = MEMORY[0x277D84F90];
  *(v26 + 24) = v28;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v72, v21);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  v71[3] = v21;
  v71[4] = v24;
  v71[0] = v34;
  v70[3] = v25;
  v70[4] = &off_2822B6968;
  v70[0] = v26;
  sub_20B51CC64(v71, v69);
  sub_20B51CC64(v70, v68);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v69, v69[3]);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = (&v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = *v38;
  v46 = *v43;
  v66 = v21;
  v67 = v24;
  v64 = &off_2822B6968;
  v65[0] = v45;
  v63 = v25;
  v62[0] = v46;
  v47 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = (&v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51, v49);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (&v60 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = sub_20BE3AA74(0x5472656E69617254, 0xEB00000000737069, v27, v61, v60, *v51, *v56, 2, v47);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  *(v6 + 56) = v58;
  return v6;
}

uint64_t sub_20BCDB5D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BCDB63C(uint64_t a1)
{
  result = sub_20BCD91B0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_20BCDB668@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_20BCDB740(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20BCDB820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_20BCDB870(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20BCDB8B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView];
  v12 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setClipsToBounds_];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 &selRef:1 setBackgroundColor:v14 + 6];

  *v11 = v12;
  *(v11 + 1) = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 &selRef_count + 2];
  [v16 setAdjustsFontForContentSizeCategory_];
  v17 = *MEMORY[0x277D76838];
  [v16 setMaximumContentSizeCategory_];

  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  *&v4[v15] = v16;
  v18 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  [v19 setMaximumContentSizeCategory_];

  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  *&v4[v18] = v19;
  v20 = &v4[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layout];
  sub_20BCDE968(v41);
  v21 = v41[1];
  *v20 = v41[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v41[2];
  v22 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layoutGuide;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v40.receiver = v4;
  v40.super_class = type metadata accessor for DynamicBrickItemCell();
  v23 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView;
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView];
  v26 = v23;
  v27 = [v25 layer];
  v28 = &v26[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layout];
  [v27 setCornerRadius_];

  v29 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel;
  [*&v26[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel] setFont_];
  v30 = *&v26[v29];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  v31 = v30;
  sub_20C13BBA4();
  LODWORD(v32) = v39;
  [v31 setContentCompressionResistancePriority:1 forAxis:v32];

  v33 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel;
  [*&v26[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel] setFont_];
  v34 = [v26 contentView];
  [v34 addSubview_];

  v35 = [v26 contentView];
  [v35 addSubview_];

  v36 = [v26 contentView];
  [v36 addSubview_];

  v37 = [v26 contentView];
  [v37 addLayoutGuide_];

  sub_20BCDC010();
  return v26;
}

void sub_20BCDC010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView];
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
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
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
  v29 = &v1[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layout];
  v30 = [v27 constraintEqualToAnchor:v28 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layout]];

  sub_20C13BBA4();
  LODWORD(v31) = v79;
  [v30 setPriority_];
  v26[9] = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151490;
  v33 = *&v1[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layoutGuide];
  v34 = [v33 centerXAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerXAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v32 + 32) = v37;
  v76 = v32;
  v38 = [v33 &selRef_traitCollection + 6];
  v39 = [v1 contentView];
  v40 = [v39 &selRef_traitCollection + 6];

  v41 = [v38 constraintEqualToAnchor:v40 multiplier:v29[5]];
  *(v32 + 40) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150050;
  v43 = *&v1[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel];
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

  v57 = v29[3];
  v58 = [v54 constraintGreaterThanOrEqualToAnchor:v56 constant:v57];

  *(v42 + 56) = v58;
  v59 = [v43 bottomAnchor];
  v60 = *&v1[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel];
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

id sub_20BCDC9C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DynamicBrickItemCell()
{
  result = qword_27C76D678;
  if (!qword_27C76D678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCDCB04()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BCDCBD4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BCDCC20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BCDCC78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BCDCD00(uint64_t a1, void *a2)
{
  sub_20B51C88C(0, &qword_27C762070);
  sub_20C1341D4();
  v3 = sub_20C13D5A4();
  [a2 setTextColor_];

  v4 = sub_20C1341C4();
  if (v6)
  {
    v7 = qword_20C1780F8[v4];
  }

  else
  {
    sub_20B583F4C(v4, v5, 0);
    v7 = 4;
  }

  return [a2 setTextAlignment_];
}

uint64_t sub_20BCDCDBC(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v235 = *(v2 - 1);
  v236 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v219 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v220 = &v199 - v9;
  v218 = v10;
  MEMORY[0x28223BE20](v11);
  v221 = &v199 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v199 - v14;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v217 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v16;
  MEMORY[0x28223BE20](v17);
  v224 = &v199 - v18;
  v19 = sub_20C1391C4();
  v226 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_20C138A64();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v228 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v23 - 8);
  v225 = &v199 - v24;
  v25 = sub_20C13C554();
  v238 = *(v25 - 8);
  v239 = v25;
  MEMORY[0x28223BE20](v25);
  v237 = (&v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_20C137C24();
  v246 = *(v27 - 8);
  v247 = v27;
  MEMORY[0x28223BE20](v27);
  v232 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v28;
  MEMORY[0x28223BE20](v29);
  v245 = &v199 - v30;
  v31 = sub_20C136CD4();
  v233 = *(v31 - 8);
  v234 = v31;
  MEMORY[0x28223BE20](v31);
  v242 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134E44();
  MEMORY[0x28223BE20](v33 - 8);
  v243 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7678C0);
  MEMORY[0x28223BE20](v35 - 8);
  v240 = &v199 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v199 - v38;
  v241 = sub_20C1341E4();
  v244 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v230 = &v199 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v199 - v42;
  v44 = sub_20C134014();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v249 = &v199 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v48 == 33)
  {
    v66 = v248;
    v67 = *&v248[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel];
    v68 = sub_20C13C914();
    [v67 setText_];

    v69 = *&v66[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel];
    v70 = sub_20C13C914();
    [v69 setText_];

    return sub_20BA1D9D4();
  }

  else if (v48 == 32)
  {
    v207 = v19;
    v208 = v21;
    v209 = v15;
    v205 = v6;
    v206 = v5;
    v49 = v46;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v51 = swift_projectBox();
    v52 = v51 + *(v50 + 64);
    v53 = *v52;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    v56 = *(v52 + 24);
    v57 = *(v52 + 32);
    v58 = *(v52 + 40);
    v214 = v45;
    v59 = *(v45 + 16);
    v215 = v49;
    v59(v249, v51, v49);
    v60 = v53;
    v236 = v54;
    v61 = v55;
    v213 = v56;

    v212 = v57;

    v211 = v58;

    sub_20C133F44();
    v62 = v244;
    v63 = *(v244 + 48);
    v64 = v241;
    v65 = v63(v39, 1, v241);
    v235 = v60;
    v210 = v61;
    if (v65 == 1)
    {
      sub_20B520158(v39, &qword_27C7678C0);
    }

    else
    {
      (*(v62 + 32))(v43, v39, v64);
      v83 = *&v248[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel];
      v84 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v85 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v85 setLineBreakMode_];
      v86 = v84;
      v87 = [v86 length];
      [v86 addAttribute:*MEMORY[0x277D74118] value:v85 range:{0, v87}];

      [v83 setAttributedText_];
      sub_20BCDCD00(v43, v83);
      (*(v62 + 8))(v43, v64);
    }

    v89 = v238;
    v88 = v239;
    v90 = v237;
    v91 = v240;
    sub_20C133F64();
    if (v63(v91, 1, v64) == 1)
    {
      sub_20B520158(v91, &qword_27C7678C0);
      v92 = v248;
    }

    else
    {
      v93 = v244;
      v94 = v230;
      (*(v244 + 32))(v230, v91, v64);
      v92 = v248;
      v95 = *&v248[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel];
      v96 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v97 = [v96 initWithAttributedString_];
      v98 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v98 setLineBreakMode_];
      v99 = v97;
      v100 = [v99 length];
      [v99 addAttribute:*MEMORY[0x277D74118] value:v98 range:{0, v100}];

      [v95 setAttributedText_];
      sub_20BCDCD00(v94, v95);
      (*(v93 + 8))(v94, v64);
    }

    v102 = v242;
    v101 = v243;
    sub_20C133F04();
    v241 = sub_20C138054();
    v104 = v103;
    sub_20C134E34();
    v105 = v245;
    sub_20C136CB4();
    v240 = sub_20C136CC4();
    v244 = v106;
    sub_20B51C88C(0, &qword_281100530);
    *v90 = sub_20C13D374();
    (*(v89 + 104))(v90, *MEMORY[0x277D85200], v88);
    v107 = sub_20C13C584();
    result = (*(v89 + 8))(v90, v88);
    if (v107)
    {
      v108 = *&v92[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView];
      v109 = *&v92[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v108 setContentMode_];
      if (sub_20BA66C54(v105, v108, v109, 0))
      {
        v111 = swift_allocObject();
        v239 = v108;
        v112 = v111;
        swift_unknownObjectWeakInit();
        v113 = v246;
        v114 = *(v246 + 16);
        v230 = ObjectType;
        v115 = v232;
        v116 = v247;
        v203 = v246 + 16;
        v201 = v114;
        v114(v232, v105, v247);
        v117 = *(v113 + 80);
        v238 = v104;
        v118 = (v117 + 24) & ~v117;
        v199 = v231 + 7;
        v119 = (v231 + 7 + v118) & 0xFFFFFFFFFFFFFFF8;
        v237 = v109;
        v120 = (v119 + 23) & 0xFFFFFFFFFFFFFFF8;
        v121 = (v120 + 23) & 0xFFFFFFFFFFFFFFF8;
        v204 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
        v202 = v117;
        v122 = swift_allocObject();
        *(v122 + 16) = v112;
        v123 = v113;
        v124 = v115;
        v125 = (v123 + 32);
        v126 = v122 + v118;
        v127 = v238;
        v200 = *(v123 + 32);
        v200(v126, v124, v116);
        v128 = (v122 + v119);
        v129 = v241;
        v130 = v244;
        *v128 = v240;
        v128[1] = v130;
        v131 = (v122 + v120);
        v132 = v237;
        *v131 = v129;
        v131[1] = v127;
        *(v122 + v121) = 2;
        v133 = v122 + v204;
        *v133 = MEMORY[0x277D84F90];
        *(v133 + 8) = 0;
        v134 = (v122 + ((v121 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v134 = 0;
        v134[1] = 0;
        v135 = *(v132 + 19);

        v136 = v230;
        v135(sub_20BCDE634, v122);
        v137 = v239;

        [v137 bounds];
        if (v138 <= 0.0 || (v140 = v139, v139 <= 0.0))
        {

          v161 = v247;
          v162 = v234;
          v105 = v245;
        }

        else
        {
          v141 = v138;
          v204 = ~v202;
          v142 = v136;
          (*(v132 + 15))(0, v136, v132);
          v143 = v225;
          v105 = v245;
          v144 = v247;
          v201(v225, v245, v247);
          (*(v246 + 56))(v143, 0, 1, v144);
          (*(v132 + 2))(v143, v142, v132);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v145 = sub_20C13D5A4();
          [v137 setBackgroundColor_];

          v146 = *(v132 + 22);
          v239 = v125;
          v147 = v144;
          v146(*&v141, *&v140, 0, v142, v132);
          v237 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v148 = v201;
          v201(v124, v105, v144);
          v149 = (v202 + 16) & v204;
          v150 = (v199 + v149) & 0xFFFFFFFFFFFFFFF8;
          v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
          v152 = (v151 + 23) & 0xFFFFFFFFFFFFFFF8;
          v153 = swift_allocObject();
          v200(v153 + v149, v124, v147);
          *(v153 + v150) = v237;
          v154 = (v153 + v151);
          v155 = v148;
          *v154 = v141;
          v154[1] = v140;
          v237 = v153;
          v156 = (v153 + v152);
          *v156 = 0;
          v156[1] = 0;
          v148(v124, v105, v147);
          (*(v226 + 104))(v208, *MEMORY[0x277D542A8], v207);

          v157 = v228;
          sub_20C138A54();
          v158 = v209;
          sub_20B5F1960(v157, v209);
          v159 = v227;
          v160 = v229;
          if ((*(v227 + 48))(v158, 1, v229) == 1)
          {
            sub_20B520158(v158, &unk_27C766670);
            sub_20BA1D9D4();

            (*(v222 + 8))(v157, v223);
            v161 = v247;
          }

          else
          {
            v244 = *(v159 + 32);
            v164 = v224;
            (v244)(v224, v158, v160);
            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v166 = v232;
            v155(v232, v105, v247);
            v167 = (v202 + 40) & v204;
            v168 = v167 + v231;
            v169 = (v167 + v231) & 0xFFFFFFFFFFFFFFF8;
            v170 = swift_allocObject();
            *(v170 + 2) = v165;
            v170[3] = v141;
            v170[4] = v140;
            v200(v170 + v167, v166, v247);
            *(v170 + v168) = 0;
            v171 = v170 + v169;
            *(v171 + 1) = 0;
            *(v171 + 2) = 0;
            v172 = swift_allocObject();
            *(v172 + 16) = sub_20BCDE7C8;
            *(v172 + 24) = v170;
            v173 = v217;
            v174 = v164;
            v175 = v229;
            (*(v159 + 16))(v217, v174, v229);
            v176 = (*(v159 + 80) + 16) & ~*(v159 + 80);
            v177 = (v216 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
            v178 = swift_allocObject();
            (v244)(v178 + v176, v173, v175);
            v179 = (v178 + v177);
            *v179 = sub_20B5F67A4;
            v179[1] = v172;
            v180 = v220;
            sub_20C137C94();
            v181 = swift_allocObject();
            v182 = v159;
            v183 = v237;
            *(v181 + 16) = sub_20BCDE70C;
            *(v181 + 24) = v183;
            v184 = swift_allocObject();
            *(v184 + 16) = sub_20B5F67D4;
            *(v184 + 24) = v181;
            v185 = v205;
            v186 = v219;
            v187 = v206;
            (*(v205 + 16))(v219, v180, v206);
            v188 = (*(v185 + 80) + 16) & ~*(v185 + 80);
            v189 = (v218 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
            v190 = swift_allocObject();
            v191 = v186;
            v105 = v245;
            (*(v185 + 32))(v190 + v188, v191, v187);
            v192 = (v190 + v189);
            *v192 = sub_20B5DF204;
            v192[1] = v184;

            v193 = v221;
            sub_20C137C94();
            v194 = *(v185 + 8);
            v194(v180, v187);
            v195 = sub_20C137CB4();
            v196 = swift_allocObject();
            *(v196 + 16) = 0;
            *(v196 + 24) = 0;
            v195(sub_20B52347C, v196);

            v197 = v247;
            v194(v193, v187);
            (*(v182 + 8))(v224, v229);
            (*(v222 + 8))(v228, v223);
            v161 = v197;
          }

          v162 = v234;
        }

        v102 = v242;
        v101 = v243;
        v163 = v233;
      }

      else
      {

        v161 = v247;
        v163 = v233;
        v162 = v234;
      }

      v198 = v235;
      (*(v246 + 8))(v105, v161);
      (*(v163 + 8))(v102, v162);

      sub_20B62A2AC(v101);
      return (*(v214 + 8))(v249, v215);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v72 = v248;
    v73 = sub_20C13BB74();
    v74 = sub_20C13D1D4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v250 = a1;
      v251 = v77;
      *v75 = 138543618;
      *(v75 + 4) = v72;
      *v76 = v72;
      *(v75 + 12) = 2082;
      v78 = sub_20B5F66D0();
      v79 = v72;
      v80 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v78);
      v82 = sub_20B51E694(v80, v81, &v251);

      *(v75 + 14) = v82;
      _os_log_impl(&dword_20B517000, v73, v74, "Attempted to configure %{public}@ with item: %{public}s", v75, 0x16u);
      sub_20B520158(v76, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v76, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x20F2F6A40](v77, -1, -1);
      MEMORY[0x20F2F6A40](v75, -1, -1);
    }

    return v235[1](v4, v236);
  }

  return result;
}

void sub_20BCDE634()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3BA6C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BCDE70C(void *a1)
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

  sub_20BA63020(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BCDE7C8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2728(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

unint64_t sub_20BCDE87C(void *a1)
{
  v2 = sub_20C1380F4();
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2)
    {
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v3 = 5;
  }

  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();

  return sub_20B72097C(v3, 1.0, v5);
}

void sub_20BCDE968(uint64_t a1@<X8>)
{
  v56 = _UISolariumEnabled();
  v55 = _UISolariumEnabled();
  sub_20C1380F4();
  v54 = sub_20C138104();
  v53 = sub_20C138104();
  v1 = *MEMORY[0x277D76938];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:v1 compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v58 = objc_opt_self();
  v6 = [v58 fontWithDescriptor:v3 size:0.0];

  v7 = [v2 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = [v58 fontWithDescriptor:v7 size:0.0];

  sub_20C1380F4();
  v11 = sub_20C138104();
  if (v11 == sub_20C138104())
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v52 = v12;

  sub_20C1380F4();
  v50 = sub_20C138104();
  v49 = sub_20C138104();
  v13 = *MEMORY[0x277D743F8];
  v14 = [v2 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  v51 = v2;
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x277D74430];
  *(v19 + 16) = xmmword_20C14F980;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v13;
  v22 = v18;
  v23 = v21;
  v47 = v22;
  v48 = v23;
  v24 = sub_20B6B134C(v19);
  swift_setDeallocating();
  sub_20B520158(v19 + 32, &unk_27C773200);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 64) = v25;
  *(inited + 40) = v24;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v26 = sub_20C13C744();

  v27 = [v14 fontDescriptorByAddingAttributes_];

  v28 = [v58 fontWithDescriptor:v27 size:0.0];
  v29 = *MEMORY[0x277D74400];
  v30 = [v51 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v31 = [v30 fontDescriptorWithSymbolicTraits_];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  if (v50 == v49)
  {
    v33 = 20.0;
  }

  else
  {
    v33 = 10.0;
  }

  v34 = 4.0;
  if (v55)
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 4.0;
  }

  if (v56)
  {
    v34 = 16.0;
  }

  if (v54 == v53)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_20C14F980;
  *(v37 + 32) = v47;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20C14F980;
  *(v38 + 32) = v48;
  v39 = v38 + 32;
  *(v38 + 40) = v29;
  v40 = sub_20B6B134C(v38);
  swift_setDeallocating();
  sub_20B520158(v39, &unk_27C773200);
  *(v37 + 64) = v25;
  *(v37 + 40) = v40;
  sub_20B6B143C(v37);
  swift_setDeallocating();
  sub_20B520158(v37 + 32, &qword_27C773210);
  v41 = sub_20C13C744();

  v42 = [v30 fontDescriptorByAddingAttributes_];

  v43 = [v58 fontWithDescriptor:v42 size:0.0];
  sub_20C1380F4();
  v44 = sub_20C138104();
  if (v44 == sub_20C138104())
  {
    v45 = v43;
  }

  else
  {
    v45 = v28;
  }

  v46 = v45;

  *a1 = 0x3FE2000000000000;
  *(a1 + 8) = v36;
  *(a1 + 16) = v52;
  *(a1 + 24) = v33;
  *(a1 + 32) = v46;
  *(a1 + 40) = 0x3FEB800000000000;
}

void sub_20BCDEF84()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setClipsToBounds_];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];

  *v3 = v4;
  v3[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v8 &selRef_count + 2];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = *MEMORY[0x277D76838];
  [v8 setMaximumContentSizeCategory_];

  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  *(v0 + v7) = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  [v11 setMaximumContentSizeCategory_];

  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  *(v0 + v10) = v11;
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layout);
  sub_20BCDE968(v15);
  v13 = v15[1];
  *v12 = v15[0];
  v12[1] = v13;
  v12[2] = v15[2];
  v14 = OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_layoutGuide;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BCDF2AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack;
  v10 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v43.receiver = v4;
  v43.super_class = type metadata accessor for SummaryMetricView();
  v11 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack;
  v13 = *&v11[OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack];
  v14 = v11;
  [v14 addSubview_];
  v16 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v18 = *(MEMORY[0x277D768C8] + 24);
  v19 = *&v11[v12];
  v20 = [v19 leadingAnchor];
  v21 = [v14 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v15];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  v24 = v22;
  v25 = [v19 trailingAnchor];
  v26 = [v14 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-v18];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  v29 = v27;
  v30 = [v19 topAnchor];
  v31 = [v14 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v16];

  LODWORD(v33) = 1148846080;
  [v32 setPriority_];
  v34 = [v19 bottomAnchor];
  v35 = [v14 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-v17];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14FE90;
  *(v38 + 32) = v24;
  *(v38 + 40) = v29;
  *(v38 + 48) = v32;
  *(v38 + 56) = v36;
  v39 = v32;

  v40 = objc_opt_self();
  sub_20B5E29D0();
  v41 = sub_20C13CC54();

  [v40 activateConstraints_];

  return v14;
}

id sub_20BCDF720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryMetricView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BCDF78C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000016, 0x800000020C1AFD40);
  sub_20C13DFC4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0x6E6F697461727564, 0xEA0000000000203ALL);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](32, 0xE100000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_20BCDF8B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20BCDF92C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_20BCDFA30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t type metadata accessor for ShelfIndexedLazyLockup()
{
  result = qword_27C76D710;
  if (!qword_27C76D710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCDFC40()
{
  result = sub_20C134A74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20BCDFCBC()
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](*v0);
  sub_20C134A64();
  return sub_20C13E1B4();
}

uint64_t sub_20BCDFD6C()
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](*v0);
  sub_20C134A64();
  return sub_20C13E1B4();
}

uint64_t sub_20BCDFDCC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x20F2EC1C0);
  }

  return 0;
}

unint64_t sub_20BCDFDF8()
{
  result = qword_27C76D720;
  if (!qword_27C76D720)
  {
    type metadata accessor for ShelfIndexedLazyLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D720);
  }

  return result;
}

double sub_20BCDFE50()
{
  v0 = *MEMORY[0x277D76940];
  v1 = *MEMORY[0x277D74368];
  v2 = *MEMORY[0x277D76838];
  v3 = MEMORY[0x277D84FA0];
  v154 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v139 = v1;
  v4 = v0;
  v5 = v2;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v3 + 48) + v8);
      if (v10 <= 2 && v10 != 1 && v10 != 2)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_10;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v3;
    sub_20B706478(0, v8, isUniquelyReferenced_nonNull_native);
    v154 = v3;
  }

LABEL_10:
  v13 = v5;
  sub_20B6FF83C(v153, 1);
  v156 = 0;
  v14 = v154;
  sub_20C13E164();
  v138 = v4;
  sub_20C13CA64();
  v15 = sub_20C13E1B4();
  v16 = v14 + 56;
  v17 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v15 & ~v18;
  if ((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v17 + 48) + v19);
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v22 = sub_20C13DFF4();

      if (v22)
      {
        goto LABEL_18;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v17;
    sub_20B706478(2, v19, v23);
    v17 = v153[0];
    v154 = v153[0];
  }

LABEL_18:
  v155 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v24 = sub_20C13E1B4();
  v25 = -1 << *(v17 + 32);
  v26 = v24 & ~v25;
  if ((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = *(*(v17 + 48) + v26);
      if (v28 >= 4)
      {
        break;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_26;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    v133 = v17;
    v31 = v139;
  }

  else
  {
LABEL_23:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v17;
    sub_20B706478(4, v26, v30);
    v31 = v139;

    v133 = v153[0];
  }

  v131 = v156;
  v132 = v155;
  v32 = *MEMORY[0x277D76968];
  v150 = v3;
  sub_20C13E164();
  v134 = v31;
  v33 = v32;
  v34 = v13;
  sub_20C13CA64();
  v35 = sub_20C13E1B4();
  v36 = -1 << *(v3 + 32);
  v37 = v35 & ~v36;
  if ((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (1)
    {
      v39 = *(*(v3 + 48) + v37);
      if (v39 <= 2 && v39 != 1 && v39 != 2)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_36;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v3;
    sub_20B706478(0, v37, v41);
    v150 = v153[0];
  }

LABEL_36:
  v42 = v34;
  sub_20B6FF83C(v153, 1);
  v152 = 0;
  sub_20C13E164();
  v43 = v33;
  v44 = v150;
  v137 = v43;
  sub_20C13CA64();
  v45 = sub_20C13E1B4();
  v46 = -1 << *(v150 + 32);
  v47 = v45 & ~v46;
  if ((*(v150 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
  {
    v48 = ~v46;
    while (1)
    {
      v49 = *(*(v44 + 48) + v47);
      if (v49 > 1 && v49 != 3 && v49 != 4)
      {
        break;
      }

      v50 = sub_20C13DFF4();

      if (v50)
      {
        v44 = v150;
        goto LABEL_46;
      }

      v47 = (v47 + 1) & v48;
      v44 = v150;
      if (((*(v150 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v44;
    sub_20B706478(2, v47, v51);
    v44 = v153[0];
    v150 = v153[0];
  }

LABEL_46:
  v151 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v52 = sub_20C13E1B4();
  v53 = v44 + 56;
  v54 = -1 << *(v44 + 32);
  v55 = v52 & ~v54;
  if ((*(v44 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
  {
    v56 = ~v54;
    v140 = v44;
    while (1)
    {
      v57 = *(*(v44 + 48) + v55);
      if (v57 >= 4)
      {
        break;
      }

      v58 = sub_20C13DFF4();

      if (v58)
      {
        goto LABEL_53;
      }

      v55 = (v55 + 1) & v56;
      v44 = v140;
      if (((*(v53 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:
    v60 = v134;
  }

  else
  {
LABEL_51:
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v44;
    sub_20B706478(4, v55, v59);
    v60 = v134;

    v140 = v153[0];
  }

  v129 = v152;
  v130 = v151;
  v61 = *MEMORY[0x277D769D0];
  v147 = v3;
  sub_20C13E164();
  v127 = v60;
  v62 = v61;
  v63 = v42;
  sub_20C13CA64();
  v64 = sub_20C13E1B4();
  v65 = -1 << *(v3 + 32);
  v66 = v64 & ~v65;
  if ((*(v3 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66))
  {
    v67 = ~v65;
    while (1)
    {
      v68 = *(*(v3 + 48) + v66);
      if (v68 <= 2 && v68 != 1 && v68 != 2)
      {
        break;
      }

      v69 = sub_20C13DFF4();

      if (v69)
      {
        goto LABEL_63;
      }

      v66 = (v66 + 1) & v67;
      if (((*(v3 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
LABEL_62:
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v3;
    sub_20B706478(0, v66, v70);
    v147 = v153[0];
  }

LABEL_63:
  v71 = v63;
  sub_20B6FF83C(v153, 1);
  v149 = 0;
  v72 = v147;
  sub_20C13E164();
  v135 = v62;
  sub_20C13CA64();
  v73 = sub_20C13E1B4();
  v74 = -1 << *(v147 + 32);
  v75 = v73 & ~v74;
  if ((*(v147 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
  {
    v76 = ~v74;
    while (1)
    {
      v77 = *(*(v147 + 48) + v75);
      if (v77 > 1 && v77 != 3 && v77 != 4)
      {
        break;
      }

      v78 = sub_20C13DFF4();

      if (v78)
      {
        goto LABEL_71;
      }

      v75 = (v75 + 1) & v76;
      if (((*(v147 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v147;
    sub_20B706478(2, v75, v79);
    v72 = v153[0];
    v147 = v153[0];
  }

LABEL_71:
  v148 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v80 = sub_20C13E1B4();
  v81 = -1 << *(v72 + 32);
  v82 = v80 & ~v81;
  if ((*(v72 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
  {
    v83 = ~v81;
    while (1)
    {
      v84 = *(*(v72 + 48) + v82);
      if (v84 >= 4)
      {
        break;
      }

      v85 = sub_20C13DFF4();

      if (v85)
      {
        goto LABEL_79;
      }

      v82 = (v82 + 1) & v83;
      if (((*(v72 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_79:
    v87 = v127;
  }

  else
  {
LABEL_76:
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v72;
    sub_20B706478(4, v82, v86);
    v87 = v127;

    v72 = v153[0];
  }

  v88 = MEMORY[0x277D74410];

  v125 = v149;
  v126 = v148;
  v89 = *MEMORY[0x277D76918];
  v144 = v3;
  sub_20C13E164();
  v128 = v87;
  v121 = v89;
  v90 = v71;
  sub_20C13CA64();
  v91 = sub_20C13E1B4();
  v92 = -1 << *(v3 + 32);
  v93 = v91 & ~v92;
  if ((*(v3 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v93))
  {
    v94 = ~v92;
    while (1)
    {
      v95 = *(*(v3 + 48) + v93);
      if (v95 <= 2 && v95 != 1 && v95 != 2)
      {
        break;
      }

      v96 = sub_20C13DFF4();

      if (v96)
      {
        goto LABEL_89;
      }

      v93 = (v93 + 1) & v94;
      if (((*(v3 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v93) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v3;
    sub_20B706478(0, v93, v97);
    v144 = v153[0];
  }

LABEL_89:
  v124 = *v88;
  v123 = v90;
  sub_20B6FF83C(v153, 1);
  v146 = 0;
  sub_20C13E164();
  v122 = v121;
  sub_20C13CA64();
  v98 = sub_20C13E1B4();
  v99 = -1 << *(v144 + 32);
  v100 = v98 & ~v99;
  if ((*(v144 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100))
  {
    v101 = ~v99;
    while (1)
    {
      v102 = *(*(v144 + 48) + v100);
      if (v102 > 1 && v102 != 3 && v102 != 4)
      {
        break;
      }

      v103 = sub_20C13DFF4();

      if (v103)
      {
        goto LABEL_97;
      }

      v100 = (v100 + 1) & v101;
      if (((*(v144 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
LABEL_96:
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v153[0] = v144;
    sub_20B706478(2, v100, v104);
    v144 = v153[0];
  }

LABEL_97:
  v145 = 0;
  sub_20B6FF83C(v153, 4);

  v120 = v144;
  v119 = v146;
  v153[0] = v3;
  v105 = v128;
  v106 = v135;
  v107 = v123;
  sub_20B6FF83C(v143, 0);
  v108 = v107;
  sub_20B6FF83C(v143, 1);
  v143[0] = 0;
  v109 = v106;
  sub_20B6FF83C(v142, 2);
  v142[0] = 0;
  sub_20B6FF83C(&v141, 4);

  v136 = v153[0];
  v118 = v142[0];
  v110 = (v143[0] << 32) | 0x90000008000;
  v111 = *MEMORY[0x277D76988];
  v153[0] = v3;
  v112 = v105;
  v113 = v111;
  v114 = v108;
  sub_20B6FF83C(v143, 0);
  v115 = v114;
  sub_20B6FF83C(v143, 1);
  v143[0] = 0;
  v116 = v113;
  sub_20B6FF83C(v142, 2);
  v142[0] = 0;
  sub_20B6FF83C(&v141, 4);

  *&xmmword_27C76D728 = v128;
  *(&xmmword_27C76D728 + 1) = v123;
  qword_27C76D738 = v138;
  dword_27C76D740 = 0x8000;
  byte_27C76D744 = v131;
  byte_27C76D745 = 9;
  *&xmmword_27C76D748 = v124;
  BYTE8(xmmword_27C76D748) = v132;
  qword_27C76D758 = v133;
  result = 0.0;
  unk_27C76D760 = 0u;
  *(&xmmword_27C76D768 + 8) = 0u;
  unk_27C76D780 = 0u;
  *(&xmmword_27C76D788 + 1) = 0;
  unk_27C76D798 = v128;
  qword_27C76D7A0 = v123;
  *&xmmword_27C76D7A8 = v137;
  DWORD2(xmmword_27C76D7A8) = 0x8000;
  BYTE12(xmmword_27C76D7A8) = v129;
  BYTE13(xmmword_27C76D7A8) = 9;
  qword_27C76D7B8 = v124;
  byte_27C76D7C0 = v130;
  *&xmmword_27C76D7C8 = v140;
  *(&xmmword_27C76D7E8 + 8) = 0u;
  unk_27C76D7E0 = 0u;
  *(&xmmword_27C76D7C8 + 8) = 0u;
  qword_27C76D800 = 0;
  *&xmmword_27C76D808 = v128;
  *(&xmmword_27C76D808 + 1) = v123;
  unk_27C76D818 = v109;
  dword_27C76D820 = 0x8000;
  byte_27C76D824 = v125;
  byte_27C76D825 = 9;
  *&xmmword_27C76D828 = v124;
  BYTE8(xmmword_27C76D828) = v126;
  qword_27C76D838 = v72;
  unk_27C76D850 = 0u;
  unk_27C76D860 = 0u;
  xmmword_27C76D840 = 0u;
  *(&xmmword_27C76D868 + 1) = 0;
  unk_27C76D878 = v128;
  qword_27C76D880 = v123;
  *&xmmword_27C76D888 = v122;
  DWORD2(xmmword_27C76D888) = 0x8000;
  BYTE12(xmmword_27C76D888) = v119;
  BYTE13(xmmword_27C76D888) = 9;
  qword_27C76D898 = v124;
  byte_27C76D8A0 = 0;
  *(&dword_27C76D8A1 + 3) = *(v153 + 3);
  dword_27C76D8A1 = v153[0];
  *&xmmword_27C76D8A8 = v120;
  *(&xmmword_27C76D8A8 + 1) = v128;
  qword_27C76D8B8 = v123;
  unk_27C76D8C0 = v109;
  *&xmmword_27C76D8C8 = v110;
  *(&xmmword_27C76D8C8 + 1) = v124;
  qword_27C76D8D8 = v118;
  unk_27C76D8E0 = v136;
  *&xmmword_27C76D8E8 = v128;
  *(&xmmword_27C76D8E8 + 1) = v123;
  qword_27C76D8F8 = v116;
  dword_27C76D900 = 0x8000;
  byte_27C76D904 = v143[0];
  byte_27C76D905 = 9;
  *&xmmword_27C76D908 = v124;
  BYTE8(xmmword_27C76D908) = v142[0];
  HIDWORD(xmmword_27C76D908) = *&v143[3];
  *(&xmmword_27C76D908 + 9) = *v143;
  qword_27C76D918 = v153[0];
  *(&xmmword_27C76D948 + 1) = 0;
  unk_27C76D930 = 0u;
  *(&xmmword_27C76D938 + 8) = 0u;
  xmmword_27C76D920 = 0u;
  return result;
}

double sub_20BCE1354()
{
  v0 = *MEMORY[0x277D769D0];
  v1 = *MEMORY[0x277D74368];
  v2 = *MEMORY[0x277D76838];
  v3 = MEMORY[0x277D84FA0];
  v152 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v137 = v1;
  v4 = v0;
  v5 = v2;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v3 + 48) + v8);
      if (v10 <= 2 && v10 != 1 && v10 != 2)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_10;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v3;
    sub_20B706478(0, v8, isUniquelyReferenced_nonNull_native);
    v152 = v3;
  }

LABEL_10:
  v13 = v5;
  sub_20B6FF83C(v151, 1);
  v154 = 0;
  v14 = v152;
  sub_20C13E164();
  v136 = v4;
  sub_20C13CA64();
  v15 = sub_20C13E1B4();
  v16 = v14 + 56;
  v17 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v15 & ~v18;
  if ((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v17 + 48) + v19);
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v22 = sub_20C13DFF4();

      if (v22)
      {
        goto LABEL_18;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v17;
    sub_20B706478(2, v19, v23);
    v17 = v151[0];
    v152 = v151[0];
  }

LABEL_18:
  v153 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v24 = sub_20C13E1B4();
  v25 = -1 << *(v17 + 32);
  v26 = v24 & ~v25;
  if ((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = *(*(v17 + 48) + v26);
      if (v28 >= 4)
      {
        break;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_26;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    v132 = v17;
    v31 = v137;
  }

  else
  {
LABEL_23:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v17;
    sub_20B706478(4, v26, v30);
    v31 = v137;

    v132 = v151[0];
  }

  v130 = v154;
  v131 = v153;
  v32 = *MEMORY[0x277D76A28];
  v148 = v3;
  sub_20C13E164();
  v133 = v31;
  v33 = v32;
  v34 = v13;
  sub_20C13CA64();
  v35 = sub_20C13E1B4();
  v36 = -1 << *(v3 + 32);
  v37 = v35 & ~v36;
  if ((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (1)
    {
      v39 = *(*(v3 + 48) + v37);
      if (v39 <= 2 && v39 != 1 && v39 != 2)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_36;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v3;
    sub_20B706478(0, v37, v41);
    v148 = v151[0];
  }

LABEL_36:
  v128 = v34;
  sub_20B6FF83C(v151, 1);
  v150 = 0;
  v42 = v148;
  sub_20C13E164();
  v43 = v33;
  sub_20C13CA64();
  v44 = sub_20C13E1B4();
  v45 = -1 << *(v148 + 32);
  v46 = v44 & ~v45;
  if ((*(v148 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (1)
    {
      v48 = *(*(v42 + 48) + v46);
      if (v48 > 1 && v48 != 3 && v48 != 4)
      {
        break;
      }

      v49 = sub_20C13DFF4();

      if (v49)
      {
        v42 = v148;
        goto LABEL_46;
      }

      v46 = (v46 + 1) & v47;
      v42 = v148;
      if (((*(v148 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v42;
    sub_20B706478(2, v46, v50);
    v42 = v151[0];
    v148 = v151[0];
  }

LABEL_46:
  v149 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v51 = sub_20C13E1B4();
  v52 = v42 + 56;
  v53 = -1 << *(v42 + 32);
  v54 = v51 & ~v53;
  if ((*(v42 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
  {
    v55 = ~v53;
    v138 = v42;
    while (1)
    {
      v56 = *(*(v42 + 48) + v54);
      if (v56 >= 4)
      {
        break;
      }

      v57 = sub_20C13DFF4();

      if (v57)
      {
        goto LABEL_53;
      }

      v54 = (v54 + 1) & v55;
      v42 = v138;
      if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:

    v59 = v133;
    v60 = v128;
  }

  else
  {
LABEL_51:
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v42;
    sub_20B706478(4, v54, v58);

    v59 = v133;
    v60 = v128;

    v138 = v151[0];
  }

  v127 = v150;
  v129 = v149;
  v145 = v3;
  sub_20C13E164();
  v125 = v59;
  v61 = v43;
  v62 = v60;
  sub_20C13CA64();
  v63 = sub_20C13E1B4();
  v64 = -1 << *(v3 + 32);
  v65 = v63 & ~v64;
  if ((*(v3 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65))
  {
    v66 = ~v64;
    while (1)
    {
      v67 = *(*(v3 + 48) + v65);
      if (v67 <= 2 && v67 != 1 && v67 != 2)
      {
        break;
      }

      v68 = sub_20C13DFF4();

      if (v68)
      {
        goto LABEL_63;
      }

      v65 = (v65 + 1) & v66;
      if (((*(v3 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65) & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
LABEL_62:
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v3;
    sub_20B706478(0, v65, v69);
    v145 = v151[0];
  }

LABEL_63:
  v70 = v62;
  sub_20B6FF83C(v151, 1);
  v147 = 0;
  v71 = v145;
  sub_20C13E164();
  v134 = v61;
  sub_20C13CA64();
  v72 = sub_20C13E1B4();
  v73 = -1 << *(v145 + 32);
  v74 = v72 & ~v73;
  if ((*(v145 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
  {
    v75 = ~v73;
    while (1)
    {
      v76 = *(*(v145 + 48) + v74);
      if (v76 > 1 && v76 != 3 && v76 != 4)
      {
        break;
      }

      v77 = sub_20C13DFF4();

      if (v77)
      {
        goto LABEL_71;
      }

      v74 = (v74 + 1) & v75;
      if (((*(v145 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v145;
    sub_20B706478(2, v74, v78);
    v71 = v151[0];
    v145 = v151[0];
  }

LABEL_71:
  v146 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v79 = sub_20C13E1B4();
  v80 = -1 << *(v71 + 32);
  v81 = v79 & ~v80;
  if ((*(v71 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
  {
    v82 = ~v80;
    while (1)
    {
      v83 = *(*(v71 + 48) + v81);
      if (v83 >= 4)
      {
        break;
      }

      v84 = sub_20C13DFF4();

      if (v84)
      {
        goto LABEL_79;
      }

      v81 = (v81 + 1) & v82;
      if (((*(v71 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_79:
    v86 = v125;
  }

  else
  {
LABEL_76:
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v71;
    sub_20B706478(4, v81, v85);
    v86 = v125;

    v71 = v151[0];
  }

  v87 = MEMORY[0x277D74410];

  v123 = v147;
  v124 = v146;
  v88 = *MEMORY[0x277D76A08];
  v142 = v3;
  sub_20C13E164();
  v126 = v86;
  v119 = v88;
  v89 = v70;
  sub_20C13CA64();
  v90 = sub_20C13E1B4();
  v91 = -1 << *(v3 + 32);
  v92 = v90 & ~v91;
  if ((*(v3 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v92))
  {
    v93 = ~v91;
    while (1)
    {
      v94 = *(*(v3 + 48) + v92);
      if (v94 <= 2 && v94 != 1 && v94 != 2)
      {
        break;
      }

      v95 = sub_20C13DFF4();

      if (v95)
      {
        goto LABEL_89;
      }

      v92 = (v92 + 1) & v93;
      if (((*(v3 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v92) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v3;
    sub_20B706478(0, v92, v96);
    v142 = v151[0];
  }

LABEL_89:
  v122 = *v87;
  v121 = v89;
  sub_20B6FF83C(v151, 1);
  v144 = 0;
  sub_20C13E164();
  v120 = v119;
  sub_20C13CA64();
  v97 = sub_20C13E1B4();
  v98 = -1 << *(v142 + 32);
  v99 = v97 & ~v98;
  if ((*(v142 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
  {
    v100 = ~v98;
    while (1)
    {
      v101 = *(*(v142 + 48) + v99);
      if (v101 > 1 && v101 != 3 && v101 != 4)
      {
        break;
      }

      v102 = sub_20C13DFF4();

      if (v102)
      {
        goto LABEL_97;
      }

      v99 = (v99 + 1) & v100;
      if (((*(v142 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
LABEL_96:
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v142;
    sub_20B706478(2, v99, v103);
    v142 = v151[0];
  }

LABEL_97:
  v143 = 0;
  sub_20B6FF83C(v151, 4);

  v118 = v142;
  v117 = v144;
  v151[0] = v3;
  v104 = v126;
  v105 = v134;
  v106 = v121;
  sub_20B6FF83C(v141, 0);
  v107 = v106;
  sub_20B6FF83C(v141, 1);
  v141[0] = 0;
  v108 = v105;
  sub_20B6FF83C(v140, 2);
  v140[0] = 0;
  sub_20B6FF83C(&v139, 4);

  v135 = v151[0];
  v116 = v140[0];
  v109 = (v141[0] << 32) | 0x90000008000;
  v151[0] = v3;
  v110 = v104;
  v111 = v120;
  v112 = v107;
  sub_20B6FF83C(v141, 0);
  v113 = v112;
  sub_20B6FF83C(v141, 1);
  v141[0] = 0;
  v114 = v111;
  sub_20B6FF83C(v140, 2);
  v140[0] = 0;
  sub_20B6FF83C(&v139, 4);

  *&xmmword_27C76D958 = v126;
  *(&xmmword_27C76D958 + 1) = v121;
  qword_27C76D968 = v136;
  dword_27C76D970 = 0x8000;
  byte_27C76D974 = v130;
  byte_27C76D975 = 9;
  *&xmmword_27C76D978 = v122;
  BYTE8(xmmword_27C76D978) = v131;
  qword_27C76D988 = v132;
  result = 0.0;
  unk_27C76D990 = 0u;
  *(&xmmword_27C76D998 + 8) = 0u;
  unk_27C76D9B0 = 0u;
  *(&xmmword_27C76D9B8 + 1) = 0;
  unk_27C76D9C8 = v126;
  qword_27C76D9D0 = v121;
  *&xmmword_27C76D9D8 = v108;
  DWORD2(xmmword_27C76D9D8) = 0x8000;
  BYTE12(xmmword_27C76D9D8) = v127;
  BYTE13(xmmword_27C76D9D8) = 9;
  qword_27C76D9E8 = v122;
  byte_27C76D9F0 = v129;
  *&xmmword_27C76D9F8 = v138;
  *(&xmmword_27C76DA18 + 8) = 0u;
  unk_27C76DA10 = 0u;
  *(&xmmword_27C76D9F8 + 8) = 0u;
  qword_27C76DA30 = 0;
  *&xmmword_27C76DA38 = v126;
  *(&xmmword_27C76DA38 + 1) = v121;
  unk_27C76DA48 = v108;
  dword_27C76DA50 = 0x8000;
  byte_27C76DA54 = v123;
  byte_27C76DA55 = 9;
  *&xmmword_27C76DA58 = v122;
  BYTE8(xmmword_27C76DA58) = v124;
  qword_27C76DA68 = v71;
  unk_27C76DA80 = 0u;
  unk_27C76DA90 = 0u;
  xmmword_27C76DA70 = 0u;
  *(&xmmword_27C76DA98 + 1) = 0;
  unk_27C76DAA8 = v126;
  qword_27C76DAB0 = v121;
  *&xmmword_27C76DAB8 = v114;
  DWORD2(xmmword_27C76DAB8) = 0x8000;
  BYTE12(xmmword_27C76DAB8) = v117;
  BYTE13(xmmword_27C76DAB8) = 9;
  qword_27C76DAC8 = v122;
  byte_27C76DAD0 = 0;
  *(&dword_27C76DAD1 + 3) = *(v151 + 3);
  dword_27C76DAD1 = v151[0];
  *&xmmword_27C76DAD8 = v118;
  *(&xmmword_27C76DAD8 + 1) = v126;
  qword_27C76DAE8 = v121;
  unk_27C76DAF0 = v108;
  *&xmmword_27C76DAF8 = v109;
  *(&xmmword_27C76DAF8 + 1) = v122;
  qword_27C76DB08 = v116;
  unk_27C76DB10 = v135;
  *&xmmword_27C76DB18 = v126;
  *(&xmmword_27C76DB18 + 1) = v121;
  qword_27C76DB28 = v114;
  dword_27C76DB30 = 0x8000;
  byte_27C76DB34 = v141[0];
  byte_27C76DB35 = 9;
  *&xmmword_27C76DB38 = v122;
  BYTE8(xmmword_27C76DB38) = v140[0];
  HIDWORD(xmmword_27C76DB38) = *&v141[3];
  *(&xmmword_27C76DB38 + 9) = *v141;
  qword_27C76DB48 = v151[0];
  *(&xmmword_27C76DB78 + 1) = 0;
  unk_27C76DB60 = 0u;
  *(&xmmword_27C76DB68 + 8) = 0u;
  xmmword_27C76DB50 = 0u;
  return result;
}

id sub_20BCE2834(unsigned __int8 a1, void *a2, char a3)
{
  if (qword_27C760B20 != -1)
  {
    v16 = a2;
    v17 = a1;
    v18 = a3;
    swift_once();
    a2 = v16;
    a1 = v17;
    a3 = v18;
  }

  *&v48[16] = xmmword_27C76D768;
  *&v48[32] = unk_27C76D778;
  v49 = xmmword_27C76D788;
  v50 = unk_27C76D798;
  v45 = xmmword_27C76D728;
  v46 = *&qword_27C76D738;
  v47 = xmmword_27C76D748;
  *v48 = *&qword_27C76D758;
  v51 = xmmword_27C76D7A8;
  v52 = *&qword_27C76D7B8;
  *&v53[32] = xmmword_27C76D7E8;
  v54 = unk_27C76D7F8;
  *v53 = xmmword_27C76D7C8;
  *&v53[16] = unk_27C76D7D8;
  v55 = xmmword_27C76D808;
  v56 = unk_27C76D818;
  *&v58[32] = unk_27C76D858;
  v59 = xmmword_27C76D868;
  *v58 = *&qword_27C76D838;
  *&v58[16] = *(&xmmword_27C76D840 + 8);
  v57 = xmmword_27C76D828;
  v60 = unk_27C76D878;
  v61 = xmmword_27C76D888;
  *&v63[32] = xmmword_27C76D8C8;
  v64 = *&qword_27C76D8D8;
  *v63 = xmmword_27C76D8A8;
  *&v63[16] = *&qword_27C76D8B8;
  v62 = *&qword_27C76D898;
  v65 = xmmword_27C76D8E8;
  v66 = *&qword_27C76D8F8;
  *&v68[32] = xmmword_27C76D938;
  v69 = xmmword_27C76D948;
  *v68 = *&qword_27C76D918;
  *&v68[16] = *(&xmmword_27C76D920 + 8);
  v67 = xmmword_27C76D908;
  v23 = a2;
  if (a1 <= 2u)
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      v21 = *&v63[8];
      v22 = *&v63[24];
      v19 = *(&v64 + 1);
      v20 = v64;
      v3 = *&v63[40];
      v4 = *v63;
      v5 = v62;
      v6 = BYTE8(v62);
      v7 = BYTE13(v61);
      v8 = DWORD2(v61);
      v9 = BYTE12(v61);
      v10 = v61;
      v11 = *(&v60 + 1);
      v12 = v60;
      v13 = &v60;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (a3)
      {
        goto LABEL_12;
      }

LABEL_14:
      v21 = *&v58[8];
      v22 = *&v58[24];
      v19 = *(&v59 + 1);
      v20 = v59;
      v3 = *&v58[40];
      v4 = *v58;
      v5 = v57;
      v6 = BYTE8(v57);
      v7 = BYTE13(v56);
      v8 = DWORD2(v56);
      v9 = BYTE12(v56);
      v11 = *(&v55 + 1);
      v10 = v56;
      v12 = v55;
      v13 = &v55;
      goto LABEL_15;
    }

LABEL_13:
    v21 = *&v53[8];
    v22 = *&v53[24];
    v19 = *(&v54 + 1);
    v20 = v54;
    v3 = *&v53[40];
    v4 = *v53;
    v5 = v52;
    v6 = BYTE8(v52);
    v7 = BYTE13(v51);
    v8 = DWORD2(v51);
    v9 = BYTE12(v51);
    v11 = *(&v50 + 1);
    v10 = v51;
    v12 = v50;
    v13 = &v50;
    goto LABEL_15;
  }

  if (a1 == 3)
  {
LABEL_12:
    v21 = *&v68[8];
    v22 = *&v68[24];
    v19 = *(&v69 + 1);
    v20 = v69;
    v3 = *&v68[40];
    v4 = *v68;
    v5 = v67;
    v6 = BYTE8(v67);
    v7 = BYTE13(v66);
    v8 = DWORD2(v66);
    v9 = BYTE12(v66);
    v11 = *(&v65 + 1);
    v10 = v66;
    v12 = v65;
    v13 = &v65;
    goto LABEL_15;
  }

  v21 = *&v48[8];
  v22 = *&v48[24];
  v19 = *(&v49 + 1);
  v20 = v49;
  v3 = *&v48[40];
  v4 = *v48;
  v5 = v47;
  v6 = BYTE8(v47);
  v7 = BYTE13(v46);
  v8 = DWORD2(v46);
  v9 = BYTE12(v46);
  v11 = *(&v45 + 1);
  v10 = v46;
  v12 = v45;
  v13 = &v45;
LABEL_15:
  sub_20B7B07E8(v13, v24);
  v36 = v12;
  v37 = v11;
  v38 = v10;
  v39 = v8;
  v40 = v9;
  v41 = v7;
  v42 = v5;
  v43 = v6;
  v44 = v4;
  v24[0] = v12;
  v24[1] = v11;
  v24[2] = v10;
  v25 = v8;
  v26 = v9;
  v27 = v7;
  v28 = v5;
  v29 = v6;
  v30 = v4;
  v31 = v21;
  v32 = v22;
  v33 = v3;
  v34 = v20;
  v35 = v19;
  v14 = sub_20B7C6A74(v23);
  sub_20B7B0844(v24);
  return v14;
}

id sub_20BCE2B6C(unsigned __int8 a1, void *a2, char a3)
{
  if (qword_27C760B28 != -1)
  {
    v16 = a2;
    v17 = a1;
    v18 = a3;
    swift_once();
    a2 = v16;
    a1 = v17;
    a3 = v18;
  }

  *&v48[16] = xmmword_27C76D998;
  *&v48[32] = unk_27C76D9A8;
  v49 = xmmword_27C76D9B8;
  v50 = unk_27C76D9C8;
  v45 = xmmword_27C76D958;
  v46 = *&qword_27C76D968;
  v47 = xmmword_27C76D978;
  *v48 = *&qword_27C76D988;
  v51 = xmmword_27C76D9D8;
  v52 = *&qword_27C76D9E8;
  *&v53[32] = xmmword_27C76DA18;
  v54 = unk_27C76DA28;
  *v53 = xmmword_27C76D9F8;
  *&v53[16] = unk_27C76DA08;
  v55 = xmmword_27C76DA38;
  v56 = unk_27C76DA48;
  *&v58[32] = unk_27C76DA88;
  v59 = xmmword_27C76DA98;
  *v58 = *&qword_27C76DA68;
  *&v58[16] = *(&xmmword_27C76DA70 + 8);
  v57 = xmmword_27C76DA58;
  v60 = unk_27C76DAA8;
  v61 = xmmword_27C76DAB8;
  *&v63[32] = xmmword_27C76DAF8;
  v64 = *&qword_27C76DB08;
  *v63 = xmmword_27C76DAD8;
  *&v63[16] = *&qword_27C76DAE8;
  v62 = *&qword_27C76DAC8;
  v65 = xmmword_27C76DB18;
  v66 = *&qword_27C76DB28;
  *&v68[32] = xmmword_27C76DB68;
  v69 = xmmword_27C76DB78;
  *v68 = *&qword_27C76DB48;
  *&v68[16] = *(&xmmword_27C76DB50 + 8);
  v67 = xmmword_27C76DB38;
  v23 = a2;
  if (a1 <= 2u)
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      v21 = *&v63[8];
      v22 = *&v63[24];
      v19 = *(&v64 + 1);
      v20 = v64;
      v3 = *&v63[40];
      v4 = *v63;
      v5 = v62;
      v6 = BYTE8(v62);
      v7 = BYTE13(v61);
      v8 = DWORD2(v61);
      v9 = BYTE12(v61);
      v10 = v61;
      v11 = *(&v60 + 1);
      v12 = v60;
      v13 = &v60;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (a3)
      {
        goto LABEL_12;
      }

LABEL_14:
      v21 = *&v58[8];
      v22 = *&v58[24];
      v19 = *(&v59 + 1);
      v20 = v59;
      v3 = *&v58[40];
      v4 = *v58;
      v5 = v57;
      v6 = BYTE8(v57);
      v7 = BYTE13(v56);
      v8 = DWORD2(v56);
      v9 = BYTE12(v56);
      v11 = *(&v55 + 1);
      v10 = v56;
      v12 = v55;
      v13 = &v55;
      goto LABEL_15;
    }

LABEL_13:
    v21 = *&v53[8];
    v22 = *&v53[24];
    v19 = *(&v54 + 1);
    v20 = v54;
    v3 = *&v53[40];
    v4 = *v53;
    v5 = v52;
    v6 = BYTE8(v52);
    v7 = BYTE13(v51);
    v8 = DWORD2(v51);
    v9 = BYTE12(v51);
    v11 = *(&v50 + 1);
    v10 = v51;
    v12 = v50;
    v13 = &v50;
    goto LABEL_15;
  }

  if (a1 == 3)
  {
LABEL_12:
    v21 = *&v68[8];
    v22 = *&v68[24];
    v19 = *(&v69 + 1);
    v20 = v69;
    v3 = *&v68[40];
    v4 = *v68;
    v5 = v67;
    v6 = BYTE8(v67);
    v7 = BYTE13(v66);
    v8 = DWORD2(v66);
    v9 = BYTE12(v66);
    v11 = *(&v65 + 1);
    v10 = v66;
    v12 = v65;
    v13 = &v65;
    goto LABEL_15;
  }

  v21 = *&v48[8];
  v22 = *&v48[24];
  v19 = *(&v49 + 1);
  v20 = v49;
  v3 = *&v48[40];
  v4 = *v48;
  v5 = v47;
  v6 = BYTE8(v47);
  v7 = BYTE13(v46);
  v8 = DWORD2(v46);
  v9 = BYTE12(v46);
  v11 = *(&v45 + 1);
  v10 = v46;
  v12 = v45;
  v13 = &v45;
LABEL_15:
  sub_20B7B07E8(v13, v24);
  v36 = v12;
  v37 = v11;
  v38 = v10;
  v39 = v8;
  v40 = v9;
  v41 = v7;
  v42 = v5;
  v43 = v6;
  v44 = v4;
  v24[0] = v12;
  v24[1] = v11;
  v24[2] = v10;
  v25 = v8;
  v26 = v9;
  v27 = v7;
  v28 = v5;
  v29 = v6;
  v30 = v4;
  v31 = v21;
  v32 = v22;
  v33 = v3;
  v34 = v20;
  v35 = v19;
  v14 = sub_20B7C6A74(v23);
  sub_20B7B0844(v24);
  return v14;
}

double sub_20BCE2EB4(void *a1, char a2)
{
  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = [a1 traitCollection];
  v7 = v6;
  if (v5 >= 350.0)
  {
    [v6 horizontalSizeClass];
    sub_20C1380F4();
    v9 = sub_20C138104();
    v8 = 1;
    if (v9 == sub_20C138104())
    {
      if (a2)
      {
        v10 = sub_20BDF9A7C(v5);
      }

      else
      {
        v10 = sub_20BDF9B24(v5);
      }

      v8 = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_20C1380F4();
  v11 = sub_20C138104();
  if (v11 == sub_20C138104() && v8 >= 2u)
  {
    [objc_msgSend(a1 container)];
    v13 = v12;
    swift_unknownObjectRelease();
    sub_20B755B8C(v15, v13);
    sub_20B5F320C(v15);
  }

  else
  {
    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }
  }

  return 0.0;
}

uint64_t sub_20BCE30A8(void *a1, char a2)
{
  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = [a1 traitCollection];
  v7 = v6;
  if (v5 >= 350.0)
  {
    [v6 horizontalSizeClass];
    sub_20C1380F4();
    v9 = sub_20C138104();
    v8 = 1;
    if (v9 == sub_20C138104())
    {
      if (a2)
      {
        v10 = sub_20BDF9A7C(v5);
      }

      else
      {
        v10 = sub_20BDF9B24(v5);
      }

      v8 = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_20C1380F4();
  v11 = sub_20C138104();
  result = sub_20C138104();
  if (v11 == result && v8 >= 2u)
  {
    [objc_msgSend(a1 container];
    v14 = v13;
    swift_unknownObjectRelease();
    sub_20B755B8C(v15, v14);
    return sub_20B5F320C(v15);
  }

  return result;
}

char *sub_20BCE3218(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_blurView;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_imageView;
  if (qword_27C760C78 != -1)
  {
    swift_once();
  }

  v13 = qword_27C770A80;
  v14 = sub_20C13C914();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[v12] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_titleLabel;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_separatorView;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v98.receiver = v4;
  v98.super_class = type metadata accessor for SessionRoutePickerHeaderView();
  v19 = objc_msgSendSuper2(&v98, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_blurView];
  v21 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_blurView;
  v95 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_blurView;
  v22 = v19;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = v22;
  v24 = *&v19[v21];
  v25 = v23;
  [v25 addSubview_];
  v26 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_imageView;
  [*&v25[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_imageView] &selRef_count + 2];
  v27 = *&v25[v26];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 configurationWithPointSize:4 weight:24.0];
  [v29 setPreferredSymbolConfiguration_];

  v31 = *&v25[v26];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 whiteColor];
  [v33 setTintColor_];

  [v25 &selRef_onDisplayDisconnected];
  v35 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_titleLabel;
  [*&v25[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_titleLabel] &selRef_count + 2];
  v36 = *&v25[v35];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v39 = v36;
  v40 = [v38 bundleForClass_];
  sub_20C132964();

  v41 = sub_20C13C914();

  [v39 setText_];

  v42 = *&v25[v35];
  v43 = [v32 whiteColor];
  [v42 setTextColor_];

  [*&v25[v35] setTextAlignment_];
  v44 = *&v25[v35];
  v45 = objc_opt_self();
  v46 = *MEMORY[0x277D76988];
  v47 = v44;
  v48 = [v45 preferredFontForTextStyle_];
  [v47 setFont_];

  [v25 addSubview_];
  v49 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_separatorView;
  [*&v25[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_separatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = v49;
  v96 = v49;
  v51 = *&v25[v49];
  v52 = [v32 whiteColor];
  [v51 setBackgroundColor_];

  [v25 addSubview_];
  v97 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_20C165CF0;
  v54 = [*&v19[v95] widthAnchor];
  v55 = [v25 widthAnchor];

  v56 = [v54 constraintEqualToAnchor_];
  *(v53 + 32) = v56;
  v57 = [*&v19[v95] heightAnchor];
  v58 = [v25 heightAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v53 + 40) = v59;
  v60 = [*&v25[v26] centerXAnchor];
  v61 = [v25 centerXAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v53 + 48) = v62;
  v63 = [*&v25[v26] topAnchor];
  v64 = [v25 &selRef_setLineBreakMode_];

  v65 = [v63 constraintEqualToAnchor:v64 constant:18.0];
  *(v53 + 56) = v65;
  v66 = [*&v25[v35] centerXAnchor];
  v67 = [v25 centerXAnchor];

  v68 = [v66 constraintEqualToAnchor_];
  *(v53 + 64) = v68;
  v69 = [*&v25[v35] leadingAnchor];
  v70 = [v25 leadingAnchor];

  v71 = [v69 constraintEqualToAnchor_];
  *(v53 + 72) = v71;
  v72 = [*&v25[v35] trailingAnchor];
  v73 = [v25 trailingAnchor];

  v74 = [v72 constraintEqualToAnchor_];
  *(v53 + 80) = v74;
  v75 = [*&v25[v35] bottomAnchor];
  v76 = [v25 bottomAnchor];

  v77 = [v75 constraintEqualToAnchor_];
  *(v53 + 88) = v77;
  v78 = [*&v25[v35] firstBaselineAnchor];
  v79 = [v25 bottomAnchor];

  v80 = [v78 &selRef_passwordEntryCancelledHandler + 6];
  *(v53 + 96) = v80;
  v81 = [*&v25[v96] topAnchor];
  v82 = [v25 bottomAnchor];

  v83 = [v81 &selRef_passwordEntryCancelledHandler + 6];
  *(v53 + 104) = v83;
  v84 = [*&v25[v96] bottomAnchor];
  v85 = [v25 bottomAnchor];

  v86 = [v84 constraintEqualToAnchor_];
  *(v53 + 112) = v86;
  v87 = [*&v25[v96] leadingAnchor];
  v88 = [v25 leadingAnchor];

  v89 = [v87 constraintEqualToAnchor_];
  *(v53 + 120) = v89;
  v90 = [*&v25[v96] trailingAnchor];
  v91 = [v25 trailingAnchor];

  v92 = [v90 constraintEqualToAnchor_];
  *(v53 + 128) = v92;
  sub_20B5E29D0();
  v93 = sub_20C13CC54();

  [v97 activateConstraints_];

  return v25;
}

id sub_20BCE3D80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRoutePickerHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCE3E44()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_imageView;
  if (qword_27C760C78 != -1)
  {
    swift_once();
  }

  v5 = qword_27C770A80;
  v6 = sub_20C13C914();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + v4) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_titleLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerHeaderView_separatorView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_20C13DE24();
  __break(1u);
}

id sub_20BCE402C(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v31 = sub_20C13BC44();
  v15 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13BBC4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_itemInfo;
  v23 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = type metadata accessor for MyLibraryEntryCell();
  v32.receiver = v4;
  v32.super_class = v24;
  v25 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  (*(v19 + 104))(v21, *MEMORY[0x277D74A98], v18);
  v26 = sub_20C13BBF4();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = v25;
  sub_20C13BC34();
  sub_20C13BC04();
  (*(v15 + 8))(v17, v31);
  (*(v19 + 8))(v21, v18);
  sub_20C13D464();
  sub_20C13BCC4();
  v28 = sub_20C13BD14();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  MEMORY[0x20F2F4B70](v11);

  return v27;
}

id sub_20BCE4658()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MyLibraryEntryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MyLibraryEntryCell()
{
  result = qword_281103058;
  if (!qword_281103058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCE4734()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BCE47D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BCE481C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BCE4874(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BCE48D8(unint64_t a1)
{
  v2 = v1;
  v46 = sub_20C13BB84();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v43 - v8;
  v10 = type metadata accessor for ShelfCellItemInfo();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BDF4();
  MEMORY[0x28223BE20](v14);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2A)
  {
    v45 = v15;
    v46 = v2;
    v43[1] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43[2] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v18 = sub_20C13C914();

    v19 = [objc_opt_self() smm:v18 systemImageNamed:?];

    v48[3] = v14;
    v48[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    sub_20C13BDE4();

    sub_20C13BDB4();

    sub_20C13BD24();
    v20 = v19;
    sub_20C13BDC4();
    v21 = OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_itemInfo;
    v22 = v46;
    swift_beginAccess();
    sub_20B5E26EC(v22 + v21, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_20B520158(v9, &qword_27C762550);
    }

    else
    {
      sub_20B8B469C(v9, v13);
      v35 = sub_20C138104();
      if (v35 == sub_20C138104())
      {
        [v22 bounds];
        Width = CGRectGetWidth(v51);
        v37 = v49;
        sub_20B755B8C(v49, Width);
        sub_20B86C070(v13);
        sub_20B5F320C(v49);
LABEL_13:
        v38 = *v37;
        sub_20C13BD94();
        v39 = sub_20C13BD64();
        *(v40 + 8) = 0;
        v39(v47, 0);
        v41 = sub_20C13BD64();
        *(v42 + 24) = v38;
        v41(v47, 0);
        (*(v45 + 32))(boxed_opaque_existential_1, v17, v14);

        return MEMORY[0x20F2F4B60](v48);
      }

      sub_20B86C070(v13);
    }

    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    v37 = &qword_27C799F50;
    goto LABEL_13;
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  MEMORY[0x20F2F4B60](v49);
  sub_20C13B534();

  v23 = v2;
  v24 = sub_20C13BB74();
  v25 = sub_20C13D1D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v49[0] = v28;
    *v26 = 138543618;
    *(v26 + 4) = v23;
    *v27 = v23;
    *(v26 + 12) = 2082;
    v48[0] = a1;
    v29 = sub_20B5F66D0();
    v30 = v23;
    v31 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v29);
    v33 = sub_20B51E694(v31, v32, v49);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{public}s", v26, 0x16u);
    sub_20B520158(v27, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x20F2F6A40](v28, -1, -1);
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  return (*(v4 + 8))(v6, v46);
}

char *sub_20BCE4F88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_styleProvider];
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v13 = [v11 labelColor];
  *v10 = v12;
  *(v10 + 1) = v13;
  *(v10 + 2) = 0;
  v14 = OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setNumberOfLines_];
  [v15 setTextAlignment_];
  v16 = *MEMORY[0x277D76838];
  [v15 setMaximumContentSizeCategory_];

  *&v5[v14] = v15;
  v17 = OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setNumberOfLines_];
  [v18 setTextAlignment_];
  type metadata accessor for UILayoutPriority(0);
  v73 = 1144750080;
  v72 = 1065353216;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v19) = v74;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];
  [v18 setMaximumContentSizeCategory_];

  *&v5[v17] = v18;
  v71.receiver = v5;
  v71.super_class = type metadata accessor for CalendarTitleView();
  v20 = objc_msgSendSuper2(&v71, sel_initWithFrame_, a1, a2, a3, a4);
  [v20 setMaximumContentSizeCategory_];
  v21 = OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_titleLabel;
  v22 = &v20[OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_styleProvider];
  [*&v20[OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_titleLabel] setTextColor_];
  [v20 addSubview_];
  v23 = OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_subtitleLabel;
  v70 = v22;
  [*&v20[OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_subtitleLabel] setTextColor_];
  [v20 addSubview_];
  v24 = *&v20[v21];
  v25 = [v20 traitCollection];
  v26 = *MEMORY[0x277D769D0];
  v27 = objc_opt_self();
  v28 = [v27 preferredFontDescriptorWithTextStyle:v26 compatibleWithTraitCollection:v25];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = objc_opt_self();
  v32 = [v31 fontWithDescriptor:v28 size:0.0];

  [v24 setFont_];
  v33 = *&v20[v23];
  v34 = [v20 traitCollection];
  v35 = [v27 preferredFontDescriptorWithTextStyle:v26 compatibleWithTraitCollection:v34];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = [v31 fontWithDescriptor:v35 size:0.0];

  [v33 setFont_];
  v69 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C150060;
  v40 = [*&v20[v21] leadingAnchor];
  v41 = [v20 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v39 + 32) = v42;
  v43 = [*&v20[v21] trailingAnchor];
  v44 = [v20 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v39 + 40) = v45;
  v46 = [*&v20[v21] centerXAnchor];
  v47 = [v20 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v39 + 48) = v48;
  v49 = [*&v20[v21] topAnchor];
  v50 = [v20 &selRef_setLineBreakMode_];
  v51 = [v49 constraintEqualToAnchor_];

  *(v39 + 56) = v51;
  v52 = [*&v20[v23] leadingAnchor];
  v53 = [v20 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v39 + 64) = v54;
  v55 = [*&v20[v23] trailingAnchor];
  v56 = [v20 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v39 + 72) = v57;
  v58 = [*&v20[v23] centerXAnchor];
  v59 = [v20 centerXAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v39 + 80) = v60;
  v61 = [*&v20[v23] topAnchor];
  v62 = [*&v20[v21] bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v70[2]];

  *(v39 + 88) = v63;
  v64 = [*&v20[v23] bottomAnchor];
  v65 = [v20 bottomAnchor];

  v66 = [v64 constraintEqualToAnchor_];
  *(v39 + 96) = v66;
  sub_20B5E29D0();
  v67 = sub_20C13CC54();

  [v69 activateConstraints_];

  return v20;
}

void sub_20BCE57D4(void *a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for CalendarTitleView();
  objc_msgSendSuper2(&v27, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    v12 = *&v1[OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_titleLabel];
    v13 = [v1 traitCollection];
    v14 = *MEMORY[0x277D769D0];
    v15 = objc_opt_self();
    v16 = [v15 preferredFontDescriptorWithTextStyle:v14 compatibleWithTraitCollection:v13];
    v17 = [v16 fontDescriptorWithSymbolicTraits_];
    if (v17)
    {
      v18 = v17;

      v16 = v18;
    }

    v19 = objc_opt_self();
    v20 = [v19 fontWithDescriptor:v16 size:0.0];

    [v12 setFont_];
    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_subtitleLabel];
    v22 = [v1 traitCollection];
    v23 = [v15 preferredFontDescriptorWithTextStyle:v14 compatibleWithTraitCollection:v22];
    v24 = [v23 fontDescriptorWithSymbolicTraits_];
    if (v24)
    {
      v25 = v24;

      v23 = v25;
    }

    v26 = [v19 fontWithDescriptor:v23 size:0.0];

    [v21 setFont_];
    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_20C13C954();
  v8 = v7;
  if (v6 == sub_20C13C954() && v8 == v9)
  {

    return;
  }

  v11 = sub_20C13DFF4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

id sub_20BCE5B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCE5BCC()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_styleProvider);
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = [v3 labelColor];
  *v2 = v4;
  v2[1] = v5;
  v2[2] = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_subtitleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setNumberOfLines_];
  [v7 setTextAlignment_];
  v8 = *MEMORY[0x277D76838];
  [v7 setMaximumContentSizeCategory_];

  *(v1 + v6) = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI17CalendarTitleView_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  [v10 setTextAlignment_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v11) = v12;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  [v10 setMaximumContentSizeCategory_];

  *(v1 + v9) = v10;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BCE5DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C133244();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_20BCE5E74()
{
  result = qword_27C76DBD0;
  if (!qword_27C76DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DBD0);
  }

  return result;
}

uint64_t sub_20BCE5EC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_20BCE6070(v7, v9) & 1;
}

uint64_t sub_20BCE5F34(uint64_t a1)
{
  v2 = v1;
  sub_20BDAAF38(a1, *v2);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F2F5910](*&v4);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x20F2F5910](*&v8);
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x20F2F5910](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x20F2F5910](*&v10);
  sub_20BDAAF38(a1, *(v2 + 40));
  v11 = *(v2 + 48);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x20F2F5910](*&v11);
  MEMORY[0x20F2F58E0](*(v2 + 56));
  return sub_20C13E184();
}

uint64_t sub_20BCE5FF0()
{
  sub_20C13E164();
  sub_20BCE5F34(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BCE6034()
{
  sub_20C13E164();
  sub_20BCE5F34(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BCE6070(uint64_t a1, uint64_t a2)
{
  if ((sub_20BB81C50(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v4 = *(a1 + 24) == *(a2 + 24)) : (v4 = 0), v4 ? (v5 = *(a1 + 32) == *(a2 + 32)) : (v5 = 0), v5 && (sub_20BB81C64(*(a1 + 40), *(a2 + 40)) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56)))
  {
    v6 = *(a1 + 64) ^ *(a2 + 64) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_20BCE6120(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20BCE6168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20BCE61CC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon))
  {
    [*(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView) intrinsicContentSize];
  }

  v2 = v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_title;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_title + 8))
  {
    [*(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel) intrinsicContentSize];
  }

  v3 = *(v2 + 8);
  if (*(v0 + v1))
  {
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if (!v3)
  {
LABEL_10:
    sub_20BCE6558();
  }
}

__n128 sub_20BCE62D4()
{
  result = *MEMORY[0x277D75060];
  v1 = *(MEMORY[0x277D75060] + 16);
  xmmword_27C76DBD8 = *MEMORY[0x277D75060];
  unk_27C76DBE8 = v1;
  return result;
}

void sub_20BCE62F0()
{
  v0 = *MEMORY[0x277D769D0];
  v15 = *MEMORY[0x277D743F8];
  v1 = *MEMORY[0x277D76818];
  v17 = MEMORY[0x277D84FA0];
  v14 = v1;
  v2 = v0;
  sub_20B6FF83C(v16, 1);
  v19 = 1;
  v18 = 0;
  v3 = v17;
  sub_20C13E164();
  v13 = v2;
  sub_20C13CA64();
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        goto LABEL_8;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v11 = v13;

    v12 = v14;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = v3;
    sub_20B706478(4, v6, isUniquelyReferenced_nonNull_native);
    v11 = v13;

    v12 = v14;
    v3 = v16[0];
  }

  *&xmmword_27C76DBF8 = 0;
  *(&xmmword_27C76DBF8 + 1) = v12;
  *&xmmword_27C76DC08 = v11;
  DWORD2(xmmword_27C76DC08) = 0;
  BYTE12(xmmword_27C76DC08) = v19;
  BYTE13(xmmword_27C76DC08) = 9;
  *&xmmword_27C76DC18 = v15;
  BYTE8(xmmword_27C76DC18) = v18;
  qword_27C76DC28 = v3;
}

void sub_20BCE6558()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_20C13D424();
  if ((v2 & 1) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 16];
    v14[0] = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor];
    v14[1] = v4;
    v14[2] = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 32];
    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 48];
    sub_20B7B2490(v14, v13);
    v5 = [v1 traitCollection];
    v6 = sub_20B7C6A74(v5);

    sub_20B7B24EC(v14);
    v7 = sub_20C13C914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v9 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_20B51C88C(0, &qword_27C767A60);
    *(inited + 40) = v6;
    v10 = v9;
    v11 = v6;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    sub_20BCE84BC(inited + 32);
    type metadata accessor for Key(0);
    sub_20BCE8524(&qword_27C761D80, type metadata accessor for Key);
    v12 = sub_20C13C744();

    [v7 sizeWithAttributes_];
  }
}

id sub_20BCE67BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_title);
  *v6 = a1;
  v6[1] = a2;

  v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon);
  *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon) = a3;
  v8 = a3;

  LOBYTE(a3) = a3 != 0;
  sub_20BCE6EB8(a2 != 0, a3);
  sub_20BCE71E4(a2 != 0, a3, *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets), *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets + 8), *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets + 16), *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets + 24));
  v9 = *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel);
  if (a2)
  {
    v10 = sub_20C13C914();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  v11 = *(v3 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView);

  return [v11 setImage_];
}

char *sub_20BCE68D8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon] = 0;
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets];
  v10 = *(MEMORY[0x277D75060] + 16);
  *v9 = *MEMORY[0x277D75060];
  *(v9 + 1) = v10;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor];
  if (qword_27C760B38 != -1)
  {
    swift_once();
  }

  v13 = xmmword_27C76DBF8;
  v14 = xmmword_27C76DC08;
  v54[0] = xmmword_27C76DBF8;
  v54[1] = xmmword_27C76DC08;
  v15 = xmmword_27C76DC18;
  v54[2] = xmmword_27C76DC18;
  v55 = qword_27C76DC28;
  *(v12 + 6) = qword_27C76DC28;
  *(v12 + 1) = v14;
  *(v12 + 2) = v15;
  *v12 = v13;
  v16 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView;
  v17 = objc_allocWithZone(MEMORY[0x277D755E8]);
  sub_20B7B2490(v54, v52);
  v18 = [v17 init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v16] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel;
  type metadata accessor for TintableLabel();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];

  *&v4[v19] = v20;
  v51.receiver = v4;
  v51.super_class = type metadata accessor for DownloadButtonContentView();
  v21 = objc_msgSendSuper2(&v51, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = qword_27C760B30;
  v23 = v21;
  if (v22 != -1)
  {
    v48 = v23;
    swift_once();
    v23 = v48;
  }

  v24 = &v23[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets];
  v25 = unk_27C76DBE8;
  *v24 = xmmword_27C76DBD8;
  *(v24 + 1) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView;
  v27 = v23;
  [*&v23[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [*&v27[v26] setContentMode_];
  v28 = *&v27[v26];
  type metadata accessor for UILayoutPriority(0);
  v49[0] = 1144750080;
  v50 = 1065353216;
  sub_20BCE8524(&qword_27C768270, type metadata accessor for UILayoutPriority);
  v29 = v28;
  sub_20C13BB94();
  LODWORD(v30) = v52[0];
  [v29 setContentCompressionResistancePriority:0 forAxis:v30];

  v31 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel;
  v32 = *&v27[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel];
  v34 = *&v27[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 16];
  v33 = *&v27[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 32];
  v35 = *&v27[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor];
  v53 = *&v27[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 48];
  v52[1] = v34;
  v52[2] = v33;
  v52[0] = v35;
  sub_20B7B2490(v52, v49);
  v36 = [v27 traitCollection];
  v37 = sub_20B7C6A74(v36);

  sub_20B7B24EC(v52);
  [v32 setFont_];

  v38 = *&v27[v31];
  v50 = 1144750080;
  v39 = v38;
  sub_20C13BB94();
  LODWORD(v40) = v49[0];
  [v39 setContentCompressionResistancePriority:1 forAxis:v40];

  v41 = *&v27[v31];
  v50 = 1144750080;
  v42 = v41;
  sub_20C13BB94();
  LODWORD(v43) = v49[0];
  [v42 setContentCompressionResistancePriority:0 forAxis:v43];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C14F980;
  v45 = sub_20C13C054();
  v46 = MEMORY[0x277D74DB8];
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  sub_20C13D584();

  swift_unknownObjectRelease();

  return v27;
}

void sub_20BCE6DB4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel];
  v3 = *&a1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 16];
  v7[0] = *&a1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor];
  v7[1] = v3;
  v7[2] = *&a1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 32];
  v8 = *&a1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 48];
  sub_20B7B2490(v7, v6);
  v4 = [a1 traitCollection];
  v5 = sub_20B7C6A74(v4);

  sub_20B7B24EC(v7);
  [v2 setFont_];
}

id sub_20BCE6EB8(char a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      v5 = swift_allocObject();
      v24 = xmmword_20C14F580;
      *(v5 + 16) = xmmword_20C14F580;
      v6 = *&v2[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel];
      *(v5 + 32) = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_20C14F580;
      v7 = (v8 + 32);
      v9 = &OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView;
      goto LABEL_9;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20C151490;
    v6 = *&v2[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView];
    *(v5 + 32) = v6;
    v7 = (v5 + 40);
    v8 = MEMORY[0x277D84F90];
  }

  else if (a2)
  {
    v5 = swift_allocObject();
    v24 = xmmword_20C14F580;
    *(v5 + 16) = xmmword_20C14F580;
    v6 = *&v2[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView];
    *(v5 + 32) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F580;
    v7 = (v8 + 32);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C151490;
    v6 = *&v2[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView];
    *(v8 + 32) = v6;
    v7 = (v8 + 40);
    v5 = MEMORY[0x277D84F90];
  }

  v9 = &OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel;
LABEL_9:
  v10 = *&v2[*v9];
  *v7 = v10;
  v11 = v6;
  result = v10;
  if (v5 >> 62)
  {
    result = sub_20C13DB34();
    v13 = result;
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x20F2F5430](i, v5);
    }

    else
    {
      v15 = *(v5 + 8 * i + 32);
    }

    v16 = v15;
    v17 = [v15 superview];
    if (v17)
    {
      v18 = v17;

      v16 = v18;
    }

    else
    {
      [v2 addSubview_];
    }
  }

LABEL_21:

  if (v8 >> 62)
  {
    result = sub_20C13DB34();
    v19 = result;
    if (result)
    {
LABEL_23:
      if (v19 >= 1)
      {
        for (j = 0; j != v19; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x20F2F5430](j, v8);
          }

          else
          {
            v21 = *(v8 + 8 * j + 32);
          }

          v22 = v21;
          v23 = [v21 superview];
          if (v23)
          {

            [v22 removeFromSuperview];
          }
        }

        goto LABEL_32;
      }

LABEL_36:
      __break(1u);
      return result;
    }
  }

  else
  {
    v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_23;
    }
  }

LABEL_32:
}

void sub_20BCE71E4(char a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = &off_277D9A000;
  v13 = &off_277D9A000;
  v14 = &off_277D9A000;
  if (a1)
  {
    if (a2)
    {
      v15 = *&v6[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView];
      v16 = [v15 leadingAnchor];
      v17 = [v7 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor_];

      v19 = *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel];
      v20 = [v19 trailingAnchor];
      v21 = [v7 trailingAnchor];
      v114 = [v20 constraintEqualToAnchor_];

      v22 = [v19 topAnchor];
      v23 = [v7 topAnchor];
      v113 = [v22 constraintGreaterThanOrEqualToAnchor_];

      v24 = [v19 bottomAnchor];
      v25 = [v7 bottomAnchor];
      v111 = [v24 constraintLessThanOrEqualToAnchor_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_20C151850;
      v27 = [v7 heightAnchor];
      sub_20BCE6558();
      v28 = [v27 constraintEqualToConstant_];

      *(v26 + 32) = v28;
      v29 = [v15 topAnchor];
      v30 = [v19 topAnchor];
      v31 = [v29 constraintEqualToAnchor_];

      *(v26 + 40) = v31;
      v32 = [v15 bottomAnchor];
      v33 = [v19 bottomAnchor];
      v34 = [v32 constraintEqualToAnchor_];

      *(v26 + 48) = v34;
      v35 = [v15 centerYAnchor];
      v36 = [v19 centerYAnchor];
      v37 = [v35 constraintEqualToAnchor_];

      *(v26 + 56) = v37;
      v38 = [v19 leadingAnchor];
      v39 = [v15 trailingAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:4.0];

      type metadata accessor for UILayoutPriority(0);
      v115 = 1148846080;
      v119 = 1065353216;
      sub_20BCE8524(&qword_27C768270, type metadata accessor for UILayoutPriority);
      sub_20C13BBA4();
      LODWORD(v41) = v120;
      [v40 setPriority_];
      *(v26 + 64) = v40;
      v42 = [v19 centerYAnchor];
      v13 = &off_277D9A000;
      v43 = [v7 centerYAnchor];
      v44 = [v42 constraintEqualToAnchor_];

      *(v26 + 72) = v44;
      v120 = v26;
      v14 = &off_277D9A000;
      v45 = &off_277D9A000;
      if (!v18)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v61 = *&v6[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel];
    v62 = [v61 leadingAnchor];
    v63 = [v7 leadingAnchor];
    v18 = [v62 constraintEqualToAnchor_];

    v64 = [v61 trailingAnchor];
    v65 = [v7 trailingAnchor];
    v114 = [v64 constraintEqualToAnchor_];

    v66 = [v61 topAnchor];
    v67 = [v7 topAnchor];
    v113 = [v66 constraintGreaterThanOrEqualToAnchor_];

    v68 = [v61 bottomAnchor];
    v69 = [v7 bottomAnchor];
    v111 = [v68 constraintLessThanOrEqualToAnchor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_20C151490;
    v70 = [v7 heightAnchor];
    sub_20BCE6558();
    v71 = [v70 constraintEqualToConstant_];

    *(v55 + 32) = v71;
    v58 = [v61 centerYAnchor];
    v59 = [v7 centerYAnchor];
    v60 = [v58 constraintEqualToAnchor_];
LABEL_8:
    v72 = v60;

    *(v55 + 40) = v72;
    v120 = v55;
    v45 = &off_277D9A000;
    if (!v18)
    {
LABEL_10:
      v12 = &off_277D9A000;
      if (v114)
      {
        [v114 v45[114]];
      }

      if (v113)
      {
        [v113 v45[114]];
      }

      v73 = v111;
      if (v111)
      {
        [v111 v45[114]];
      }

      goto LABEL_17;
    }

LABEL_9:
    [v18 v45[114]];
    goto LABEL_10;
  }

  if (a2)
  {
    v46 = *&v6[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView];
    v47 = [v46 leadingAnchor];
    v48 = [v7 leadingAnchor];
    v18 = [v47 constraintEqualToAnchor_];

    v49 = [v46 trailingAnchor];
    v50 = [v7 trailingAnchor];
    v114 = [v49 constraintEqualToAnchor_];

    v51 = [v46 topAnchor];
    v52 = [v7 topAnchor];
    v113 = [v51 constraintGreaterThanOrEqualToAnchor_];

    v53 = [v46 bottomAnchor];
    v54 = [v7 bottomAnchor];
    v111 = [v53 constraintLessThanOrEqualToAnchor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_20C151490;
    v56 = [v7 heightAnchor];
    sub_20BCE6558();
    v57 = [v56 constraintEqualToConstant_];

    *(v55 + 32) = v57;
    v58 = [v46 centerYAnchor];
    v59 = [v7 centerYAnchor];
    v60 = [v58 constraintEqualToAnchor_];
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C151490;
  v75 = [v6 widthAnchor];
  v76 = [v7 heightAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  v115 = 1148846080;
  v119 = 1065353216;
  sub_20BCE8524(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v78) = v120;
  [v77 setPriority_];
  *(v74 + 32) = v77;
  v79 = [v7 heightAnchor];
  sub_20BCE6558();
  v80 = [v79 constraintEqualToConstant_];

  v73 = 0;
  v113 = 0;
  v114 = 0;
  v18 = 0;
  *(v74 + 40) = v80;
  v120 = v74;
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v82 = [v7 v12[167]];
  v83 = [v7 heightAnchor];
  v84 = [v82 v13[170]];

  type metadata accessor for UILayoutPriority(0);
  v119 = 1148846080;
  v118 = 1065353216;
  sub_20BCE8524(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v85) = v115;
  [v84 v14[213]];
  *(inited + 32) = v84;
  v86 = [v7 heightAnchor];
  v87 = [v86 constraintGreaterThanOrEqualToConstant_];

  *(inited + 40) = v87;
  v88 = [v7 heightAnchor];
  v89 = [v88 constraintLessThanOrEqualToConstant_];

  *(inited + 48) = v89;
  sub_20B8D9310(inited);
  v117[4] = v18;
  v117[5] = v114;
  v117[6] = v113;
  v117[7] = v73;
  v90 = MEMORY[0x277D84F90];
  v116 = MEMORY[0x277D84F90];
  v112 = v73;
  v109 = v73;
  v110 = v18;
  v91 = v18;
  v92 = v114;
  v93 = v113;
  v94 = 0;
LABEL_18:
  if (v94 <= 4)
  {
    v95 = 4;
  }

  else
  {
    v95 = v94;
  }

  while (v94 != 4)
  {
    if (v95 == v94)
    {
      __break(1u);
      return;
    }

    v96 = v117[v94++ + 4];
    if (v96)
    {
      v97 = v96;
      MEMORY[0x20F2F43B0]();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v90 = v116;
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390);
  swift_arrayDestroy();
  sub_20B8D9310(v90);
  v98 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentConstraints;
  v99 = v120;

  v101 = sub_20BB821E0(v100, v99);

  if (v101)
  {
  }

  else
  {
    v102 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);

    v103 = sub_20C13CC54();

    [v102 deactivateConstraints_];

    v104 = sub_20C13CC54();
    [v102 activateConstraints_];

    *&v7[v98] = v99;

    v105 = *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentLeadingConstraint];
    *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentLeadingConstraint] = v110;

    v106 = *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTrailingConstraint];
    *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTrailingConstraint] = v114;

    v107 = *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTopConstraint];
    *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTopConstraint] = v113;

    v108 = *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentBottomConstraint];
    *&v7[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentBottomConstraint] = v112;
  }
}

id sub_20BCE80C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadButtonContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BCE8210(double a1, double a2, double a3, double a4)
{
  v8 = (v4 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets);
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentLeadingConstraint);
  if (v9)
  {
    [v9 setConstant_];
  }

  v10 = *(v4 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTrailingConstraint);
  if (v10)
  {
    [v10 setConstant_];
  }

  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTopConstraint);
  if (v11)
  {
    [v11 setConstant_];
  }

  result = *(v4 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentBottomConstraint);
  if (result)
  {

    return [result setConstant_];
  }

  return result;
}

void sub_20BCE82F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 29);
    v6 = *(a1 + 24);
    v8 = *a1;
    v7 = *(a1 + 8);
    v9 = *(a1 + 40);
    v10 = *(a1 + 28);
  }

  else
  {
    v18 = a1;
    if (qword_27C760B38 != -1)
    {
      swift_once();
    }

    v23 = xmmword_27C76DC08;
    v24 = xmmword_27C76DC18;
    v22 = xmmword_27C76DBF8;
    v3 = qword_27C76DC28;
    v25 = qword_27C76DC28;
    v4 = xmmword_27C76DC18;
    v9 = BYTE8(xmmword_27C76DC18);
    v5 = BYTE13(xmmword_27C76DC08);
    v6 = DWORD2(xmmword_27C76DC08);
    v10 = BYTE12(xmmword_27C76DC08);
    v7 = *(&xmmword_27C76DBF8 + 1);
    v2 = xmmword_27C76DC08;
    v8 = xmmword_27C76DBF8;
    sub_20B7B2490(&v22, v20);
    a1 = v18;
  }

  v11 = v10 & 1;
  v19[60] = v10 & 1;
  v19[56] = v9 & 1;
  v12 = &v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor];
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 16];
  v20[0] = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor];
  v20[1] = v13;
  v20[2] = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 32];
  v21 = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor + 48];
  *v12 = v8;
  *(v12 + 1) = v7;
  *(v12 + 2) = v2;
  *(v12 + 6) = v6;
  v12[28] = v11;
  v12[29] = v5;
  *(v12 + 4) = v4;
  v12[40] = v9 & 1;
  *(v12 + 6) = v3;
  sub_20B98E598(a1, &v22);
  sub_20B7B24EC(v20);
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel];
  v15 = *(v12 + 1);
  v22 = *v12;
  v23 = v15;
  v24 = *(v12 + 2);
  v25 = *(v12 + 6);
  sub_20B7B2490(&v22, v19);
  v16 = [v1 traitCollection];
  v17 = sub_20B7C6A74(v16);

  sub_20B7B24EC(&v22);
  [v14 setFont_];
}

uint64_t sub_20BCE84BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BCE8524(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BCE856C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets);
  v2 = *(MEMORY[0x277D75060] + 16);
  *v1 = *MEMORY[0x277D75060];
  v1[1] = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleFontDescriptor;
  if (qword_27C760B38 != -1)
  {
    swift_once();
  }

  v5 = v0 + v4;
  v6 = xmmword_27C76DBF8;
  v7 = xmmword_27C76DC08;
  v15[0] = xmmword_27C76DBF8;
  v15[1] = xmmword_27C76DC08;
  v8 = xmmword_27C76DC18;
  v15[2] = xmmword_27C76DC18;
  v16 = qword_27C76DC28;
  *(v5 + 48) = qword_27C76DC28;
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *v5 = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView;
  v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
  sub_20B7B2490(v15, v14);
  v11 = [v10 init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel;
  type metadata accessor for TintableLabel();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];

  *(v0 + v12) = v13;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BCE8754()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C76DC88 = v2;
  unk_27C76DC90 = v4;
}

void sub_20BCE8828()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C76DC98 = v2;
  unk_27C76DCA0 = v4;
}

void sub_20BCE88F4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C76DCA8 = v2;
  unk_27C76DCB0 = v4;
}

uint64_t sub_20BCE89C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v53) = a5;
  v62 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v47 - v11;
  v52 = sub_20C134C04();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v47 - v14;
  v15 = sub_20C13A484();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C137EA4();
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_workoutDeviceConnection;
  v22 = sub_20C136484();
  (*(*(v22 - 8) + 56))(v6 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_heartRateDeviceConnection;
  v24 = sub_20C1368F4();
  (*(*(v24 - 8) + 56))(v6 + v23, 1, 1, v24);
  *(v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = (v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_onStartCountdown);
  *v25 = 0;
  v25[1] = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_activityMoveMode) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  sub_20B51C710(&v63, v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  v60 = a1;
  sub_20C133AA4();
  sub_20B51C710(&v63, v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_mediaTagStringBuilder);
  v26 = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_musicGenres) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_equipment) = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_catalogWorkout;
  v28 = sub_20C1344C4();
  v58 = *(v28 - 8);
  v59 = v28;
  v29 = *(v58 + 16);
  v61 = a2;
  v29(v6 + v27, a2);
  v30 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_activityTypeBehavior;
  v31 = sub_20C137254();
  v32 = *(v31 - 8);
  v55 = a3;
  v56 = v32;
  v33 = *(v32 + 16);
  v57 = v31;
  v33(v6 + v30, a3);
  *(v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_platform) = v53;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + 56) = sub_20C13A914();
  v34 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_gymKitConnectionState;
  *(v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_gymKitConnectionState) = 1;
  sub_20BCED0A4(v62, v17, MEMORY[0x277D4DFB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *(v54 + 32);
    v53 = v18;
    v35(v20, v17, v18);
    v36 = v49;
    sub_20C137E44();
    v37 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v36, v6 + v37, &unk_27C765CB0);
    swift_endAccess();
    v38 = v51;
    sub_20C137DE4();
    v39 = v50;
    v40 = v52;
    if ((*(v50 + 48))(v38, 1, v52) == 1)
    {
      sub_20B520158(v38, &unk_27C7650F0);
    }

    else
    {
      v41 = v48;
      (*(v39 + 32))(v48, v38, v40);
      v42 = sub_20C134BF4();
      (*(v39 + 8))(v41, v40);
      if ((v42 & 0x100000000) != 0)
      {
        *(v6 + v34) = v42;
      }
    }

    sub_20BCEAB8C();
    (*(v54 + 8))(v20, v53);
  }

  else
  {
    sub_20BCED10C(v17, MEMORY[0x277D4DFB8]);
  }

  v43 = v55;
  if (sub_20C1371E4())
  {
    swift_getObjectType();
    sub_20C13AEE4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B8E36A4();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v63);

  sub_20C13ABE4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v63);
  sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v63);
  v44 = sub_20C13AAC4();
  v64 = v44;
  v65 = sub_20BCED224(&qword_281103AF0, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
  (*(*(v44 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F0], v44);
  LOBYTE(v44) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if ((v44 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    sub_20C13B364();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A784();
    swift_unknownObjectRelease();

    sub_20BCED10C(v62, MEMORY[0x277D4DFB8]);
    (*(v56 + 8))(v43, v57);
    (*(v58 + 8))(v61, v59);
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    swift_unknownObjectRelease();

    sub_20BCED10C(v62, MEMORY[0x277D4DFB8]);
    (*(v56 + 8))(v43, v57);
    (*(v58 + 8))(v61, v59);
  }

  return v6;
}

uint64_t sub_20BCE9464()
{
  v0 = sub_20C134C04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AED4();
    v5 = sub_20C134BF4();
    (*(v1 + 8))(v3, v0);
    sub_20BCEA914(v5 | ((HIDWORD(v5) & 1) << 32));
  }

  return result;
}

void sub_20BCE9584()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 8);

    if (v2)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 48))(ObjectType, v3);
    }
  }
}

uint64_t sub_20BCE9624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
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

uint64_t sub_20BCE9748()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_20C137C24();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BCEAB8C();
  sub_20C1344C4();
  sub_20C138D44();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C766680);
    sub_20C13B4A4();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "[SessionInstructionsPresenter] failed to find artwork for workout", v20, 2u);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    return (*(v44 + 8))(v4, v45);
  }

  else
  {
    v22 = *(v15 + 32);
    v45 = v14;
    v22(v17, v13, v14);
    v23 = v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = v17;
      v27 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      (*(v27 + 32))(ObjectType, v27);
    }

    else
    {
      v26 = v17;
    }

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v29 = v8;
    v43 = v26;
    sub_20C138B14();
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BCED088;
    *(v31 + 24) = v30;
    v32 = v46;
    v33 = v47;
    v34 = v49;
    (*(v47 + 16))(v46, v29, v49);
    v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v36 = swift_allocObject();
    (*(v33 + 32))(v36 + v35, v32, v34);
    v37 = (v36 + ((v5 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_20BAC2FC0;
    v37[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    v38 = v48;
    sub_20C137C94();
    (*(v33 + 8))(v29, v34);
    v39 = v51;
    v40 = sub_20C137CB4();
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v40(sub_20B52347C, v41);

    (*(v50 + 8))(v38, v39);
    return (*(v15 + 8))(v43, v45);
  }
}

void sub_20BCE9D80(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = Strong + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display, v6 = swift_unknownObjectWeakLoadStrong(), v7 = *(v5 + 8), , v6))
  {
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, ObjectType, v7);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *a2 = v9;
}

void sub_20BCE9E54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 8);

    if (v2)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 72))(ObjectType, v3);
    }
  }
}

void sub_20BCE9EF4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134B64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133D34();
  v10 = sub_20C134B54();
  v12 = v11;
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  if (v14)
  {
    sub_20C13B534();
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v19 = v10 & 1;
      v20 = sub_20C134B34();
      v22 = sub_20B51E694(v20, v21, &v26);
      v25 = v2;
      v23 = v1;
      v24 = v22;

      *(v17 + 4) = v24;
      v1 = v23;
      _os_log_impl(&dword_20B517000, v15, v16, "[SessionInstructionsPresenter] Activity rings move mode updated: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      MEMORY[0x20F2F6A40](v17, -1, -1);

      (*(v3 + 8))(v5, v25);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      v19 = v10 & 1;
    }

    *(v1 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_activityMoveMode) = v19;
    sub_20BCEAB8C();
  }

  else
  {
    sub_20B583F4C(v10, v12, 0);
  }
}

void sub_20BCEA1AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_20C136484();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v14 = *(v8 + 16);
  v32 = a1;
  v29 = v14;
  v14(v10, a1, v7);
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v6;
    v18 = v17;
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v18 = 136446210;
    sub_20BCED224(&qword_27C76BC78, MEMORY[0x277D529D8]);
    v19 = sub_20C13DFA4();
    v28 = v2;
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    v22 = sub_20B51E694(v19, v21, v33);
    v2 = v28;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_20B517000, v15, v16, "[SessionInstructionsPresenter] Workout Device connection updated: %{public}s", v18, 0xCu);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    v24 = v18;
    v6 = v27;
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v30 + 8))(v13, v31);
  v29(v6, v32, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v25 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v25, &unk_27C765CB0);
  swift_endAccess();
  sub_20BCEAB8C();
}

void sub_20BCEA560(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_20C1368F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v14 = *(v8 + 16);
  v32 = a1;
  v29 = v14;
  v14(v10, a1, v7);
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v6;
    v18 = v17;
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v18 = 136446210;
    sub_20BCED224(&qword_27C76BC58, MEMORY[0x277D52DE8]);
    v19 = sub_20C13DFA4();
    v28 = v2;
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    v22 = sub_20B51E694(v19, v21, v33);
    v2 = v28;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_20B517000, v15, v16, "[SessionInstructionsPresenter] Heart Rate Device connection updated: %{public}s", v18, 0xCu);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    v24 = v18;
    v6 = v27;
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v30 + 8))(v13, v31);
  v29(v6, v32, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v25 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v25, &unk_27C767260);
  swift_endAccess();
  sub_20BCEAB8C();
}

void sub_20BCEA914(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  if ((a1 & 0x100000000) != 0)
  {
    v20 = v1;
    sub_20C13B534();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1F4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v17 = sub_20C134BD4();
      v19 = sub_20B51E694(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_20B517000, v13, v14, "[SessionInstructionsPresenter] GymKit connection state updated: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    *(v20 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_gymKitConnectionState) = a1;
    sub_20BCEAB8C();
  }

  else
  {
    sub_20C13B534();
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20B517000, v10, v11, "[SessionInstructionsPresenter] Unknown watch connection received.", v12, 2u);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BCEAB8C()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_gymKitConnectionState) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_gymKitConnectionState) - 2 < 3)
    {

      sub_20BCEC99C();
      return;
    }

    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_gymKitConnectionState))
  {
LABEL_12:

    sub_20BCEAE28();
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_platform);
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      return;
    }

    v12 = v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v14 = *(v12 + 8);
    v16 = Strong;
    ObjectType = swift_getObjectType();
    if (qword_27C760B48 != -1)
    {
      swift_once();
    }

    (*(v14 + 24))(qword_27C76DC98, unk_27C76DCA0, 0, 0, 0, 1, 0, ObjectType, v14);
  }

  else
  {
    v2 = v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v4 = *(v2 + 8);
    v16 = v3;
    v5 = swift_getObjectType();
    v6 = sub_20C134404();
    v8 = v7;
    if (qword_27C760B48 != -1)
    {
      swift_once();
    }

    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_20C13C914();
    v11 = [v9 initWithString_];

    (*(v4 + 24))(v6, v8, 0, v11, 0, 0, 0, v5, v4);
  }
}

void sub_20BCEAE28()
{
  v1 = v0;
  v2 = sub_20C1368F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v107 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v101 - v6;
  v8 = sub_20C136484();
  v111 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v110 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v101 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_activityMoveMode);
  v109 = v7;
  v108 = v21;
  if (v20 == 2)
  {
    goto LABEL_19;
  }

  v22 = sub_20C134B34();
  v24 = v23;
  if (v22 == sub_20C134B34() && v24 == v25)
  {
  }

  else
  {
    v27 = sub_20C13DFF4();

    if ((v27 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (sub_20C1371E4())
  {
    v105 = v3;
    v106 = v2;
    v28 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B52F9E8(v1 + v28, v19, &unk_27C765CB0);
    v29 = v111;
    v30 = *(v111 + 48);
    if (v30(v19, 1, v8))
    {
      v31 = v19;
LABEL_12:
      sub_20B520158(v31, &unk_27C765CB0);
LABEL_16:
      v112 = 0;
      v2 = v106;
      v3 = v105;
      goto LABEL_20;
    }

    v104 = v30;
    v32 = *(v29 + 16);
    v33 = v110;
    v103 = v29 + 16;
    v102 = v32;
    v32(v110, v19, v8);
    sub_20B520158(v19, &unk_27C765CB0);
    v112 = sub_20C136464();
    v35 = v34;
    v36 = v29;
    v38 = v37;
    v101 = *(v36 + 8);
    v101(v33, v8);
    v120 = v112;
    v121 = v35;
    v122 = v38 & 1;
    v118 = xmmword_20C1522F0;
    v119 = 1;
    sub_20B64BBC8();
    sub_20B64BC1C();
    LOBYTE(v33) = sub_20C133BF4();
    sub_20B583F4C(v120, v121, v122);
    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_20B52F9E8(v1 + v28, v16, &unk_27C765CB0);
    if (v104(v16, 1, v8))
    {
      v31 = v16;
      goto LABEL_12;
    }

    v39 = v110;
    v102(v110, v16, v8);
    sub_20B520158(v16, &unk_27C765CB0);
    v40 = sub_20C136474();
    v42 = v41;
    v101(v39, v8);
    v120 = v40;
    LOBYTE(v121) = v42 & 1;
    *&v118 = 1;
    BYTE8(v118) = 1;
    sub_20B64BC70();
    sub_20B64BCC4();
    v43 = sub_20C133BF4();
    v2 = v106;
    v3 = v105;
    if (v43)
    {
      v112 = sub_20BCEB9E0();
      goto LABEL_20;
    }
  }

LABEL_19:
  v112 = 0;
LABEL_20:
  v44 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_catalogWorkout;
  v45 = sub_20C1344B4();
  v47 = v46;
  v120 = v45;
  v121 = v46;
  v49 = v48 & 1;
  v122 = v48 & 1;
  v118 = xmmword_20C14F2B0;
  v119 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  v50 = sub_20C133BF4();
  sub_20B583F4C(v45, v47, v49);
  if (v50)
  {
    v51 = sub_20BCEBD98();
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_platform);
  if (v52 < 2)
  {
    v53 = v1 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v55 = *(v53 + 8);
      v56 = Strong;
      swift_getObjectType();
      v57 = sub_20C134404();
      v58 = v112;
      (*(v55 + 24))(v57);

LABEL_45:

      goto LABEL_46;
    }

    goto LABEL_42;
  }

  if (v52 == 2)
  {
    goto LABEL_42;
  }

  v104 = v44;
  v105 = v3;
  v106 = v2;
  v59 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v59, v13, &unk_27C765CB0);
  v60 = v111;
  v61 = *(v111 + 48);
  if (v61(v13, 1, v8))
  {
    sub_20B520158(v13, &unk_27C765CB0);
    LODWORD(v103) = 0;
  }

  else
  {
    v62 = v110;
    (*(v60 + 16))(v110, v13, v8);
    sub_20B520158(v13, &unk_27C765CB0);
    v63 = sub_20C136464();
    v102 = v51;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    (*(v60 + 8))(v62, v8);
    *&v118 = v64;
    *(&v118 + 1) = v66;
    v51 = v102;
    v119 = v68 & 1;
    v116 = xmmword_20C1759C0;
    v117 = 1;
    sub_20B64BBC8();
    sub_20B64BC1C();
    LODWORD(v103) = sub_20C133BF4();
    sub_20B583F4C(v118, *(&v118 + 1), v119);
  }

  v69 = v108;
  sub_20B52F9E8(v1 + v59, v108, &unk_27C765CB0);
  if (v61(v69, 1, v8))
  {
    sub_20B520158(v69, &unk_27C765CB0);
    v70 = 0;
  }

  else
  {
    v71 = v110;
    v72 = v111;
    (*(v111 + 16))(v110, v69, v8);
    sub_20B520158(v69, &unk_27C765CB0);
    v73 = sub_20C136464();
    v75 = v74;
    v77 = v76;
    (*(v72 + 8))(v71, v8);
    *&v118 = v73;
    *(&v118 + 1) = v75;
    v119 = v77 & 1;
    v116 = xmmword_20C1522F0;
    v117 = 1;
    sub_20B64BBC8();
    sub_20B64BC1C();
    v70 = sub_20C133BF4();
    sub_20B583F4C(v118, *(&v118 + 1), v119);
  }

  v78 = v106;
  v79 = v105;
  v80 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  v81 = v109;
  sub_20B52F9E8(v1 + v80, v109, &unk_27C767260);
  if (!(*(v79 + 48))(v81, 1, v78))
  {
    v84 = v107;
    (*(v79 + 16))(v107, v81, v78);
    sub_20B520158(v81, &unk_27C767260);
    v85 = sub_20C1368D4();
    v87 = v86;
    v89 = v88;
    (*(v79 + 8))(v84, v78);
    *&v116 = v85;
    *(&v116 + 1) = v87;
    v117 = v89 & 1;
    v113 = 0;
    v114 = 0;
    v115 = 1;
    sub_20B64BB20();
    sub_20B64BB74();
    v82 = sub_20C133BF4();
    sub_20B583F4C(v116, *(&v116 + 1), v117);
    if (((v103 | v70) & 1) == 0)
    {
      v83 = 0;
      goto LABEL_39;
    }

LABEL_37:
    v83 = v82 ^ 1;
    goto LABEL_39;
  }

  sub_20B520158(v81, &unk_27C767260);
  v82 = 0;
  v83 = 0;
  if ((v103 | v70))
  {
    goto LABEL_37;
  }

LABEL_39:
  v90 = v1 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
  v91 = swift_unknownObjectWeakLoadStrong();
  if (v91)
  {
    v92 = v91;
    v93 = *(v90 + 8);
    v111 = sub_20C134404();
    v95 = v94;
    if (v51)
    {
      v96 = v51;
    }

    else
    {
      v51 = sub_20BCEBF40();
      v96 = 0;
    }

    ObjectType = swift_getObjectType();
    v98 = *(v93 + 24);
    v99 = v96;
    v100 = v83 & 1;
    v58 = v112;
    v98(v111, v95, v51, v112, v100, 0, 0, ObjectType, v93);

    goto LABEL_45;
  }

LABEL_42:
  v58 = v112;
LABEL_46:
}

id sub_20BCEB9E0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v3 = sub_20C13C914();
  v4 = [objc_opt_self() smm:v3 systemImageNamed:?];

  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  [v2 setImage_];
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(ObjectType, v10);

    v12 = [v2 image];
    if (v12)
    {
      v13 = v12;
      [v12 size];
      [v13 size];
      [v2 bounds];
      v15 = v14;
      [v2 bounds];
      [v2 setBounds_];
    }
  }

  sub_20BCED03C();
  v16 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  [v1 appendAttributedString_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_20C13C914();

  v21 = [v19 initWithString_];

  [v1 appendAttributedString_];
  if (qword_27C760B40 != -1)
  {
    swift_once();
  }

  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_20C13C914();
  v24 = [v22 initWithString_];

  [v1 appendAttributedString_];
  return v1;
}

id sub_20BCEBD98()
{
  v0 = sub_20C133A74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134424();
  if (*(v4 + 16))
  {
    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    sub_20C133A54();
    (*(v1 + 8))(v3, v0);
    v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v6 = sub_20C13C914();

    v7 = [v5 initWithString_];

    return v7;
  }

  else
  {

    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);

    return [v9 init];
  }
}

size_t sub_20BCEBF40()
{
  v1 = v0;
  v2 = sub_20C1382B4();
  v93 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C138094();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v95 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = (&v78 - v8);
  MEMORY[0x28223BE20](v9);
  v98 = (&v78 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v78 - v12);
  v87 = sub_20C1333E4();
  v94 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v92 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v15 = *(v5 + 80);
  v16 = v4;
  v17 = *(v5 + 72);
  v18 = (v15 + 32) & ~v15;
  v19 = swift_allocObject();
  v88 = xmmword_20C14F980;
  *(v19 + 16) = xmmword_20C14F980;
  v20 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_catalogWorkout;
  sub_20C134464();
  *(v19 + v18) = v21;
  swift_storeEnumTagMultiPayload();
  v82 = v20;
  v22 = *(sub_20C134354() + 16);

  v80 = v19;
  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v88;
    *(v23 + v18) = 1;
    v79 = v23;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  v100 = v15;
  v81 = v1;
  v24 = sub_20C134354();
  v25 = *(v24 + 16);
  v101 = v17;
  v102 = (v15 + 32) & ~v15;
  v96 = v16;
  v97 = v18 + 2 * v17;
  v26 = v86;
  v27 = v87;
  v83 = v2;
  if (!v25)
  {

    v31 = MEMORY[0x277D84F90];
LABEL_27:
    v52 = *(sub_20C1344A4() + 16);

    v53 = v85;
    if (v52)
    {
      v54 = v102;
      v55 = swift_allocObject();
      *(v55 + 16) = v88;
      *(v55 + v54) = 1;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    v56 = sub_20C1344A4();
    v57 = *(v56 + 16);
    if (v57)
    {
      v89 = v55;
      v90 = v56;
      v98 = *(v93 + 16);
      v58 = v56 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v59 = *(v93 + 72);
      v93 += 16;
      v94 = v59;
      v92 = (v93 - 8);
      v60 = MEMORY[0x277D84F90];
      v91 = xmmword_20C14F320;
      v98(v53, v58, v2);
      while (1)
      {
        *v26 = sub_20C1382A4();
        v26[1] = v61;
        swift_storeEnumTagMultiPayload();
        v62 = v60[2];
        if (v62)
        {
          v63 = v2;
          v64 = v95;
          *v95 = 0;
          swift_storeEnumTagMultiPayload();
          v65 = swift_allocObject();
          *(v65 + 16) = v91;
          v66 = v65 + v102;
          v67 = MEMORY[0x277D53BC8];
          v68 = v64;
          v26 = v86;
          sub_20BCED0A4(v68, v66, MEMORY[0x277D53BC8]);
          result = sub_20BCED0A4(v26, v66 + v101, v67);
          v69 = v62 + 2;
          if (__OFADD__(v62, 2))
          {
            goto LABEL_57;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v70 = v60[3] >> 1, v70 < v69))
          {
            if (v62 <= v69)
            {
              v71 = v62 + 2;
            }

            else
            {
              v71 = v62;
            }

            result = sub_20BC060E4(result, v71, 1, v60);
            v60 = result;
            v70 = *(result + 24) >> 1;
          }

          v2 = v63;
          v53 = v85;
          if (v70 - v60[2] < 2)
          {
            goto LABEL_58;
          }

          swift_arrayInitWithCopy();

          v72 = v60[2];
          v45 = __OFADD__(v72, 2);
          v73 = v72 + 2;
          if (v45)
          {
            goto LABEL_59;
          }

          v60[2] = v73;
          sub_20BCED10C(v95, MEMORY[0x277D53BC8]);
        }

        else
        {
          v74 = v102;
          v75 = swift_allocObject();
          *(v75 + 16) = v88;
          sub_20BCED0A4(v26, v75 + v74, MEMORY[0x277D53BC8]);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v76 = v60[3], v76 <= 1))
          {
            result = sub_20BC060E4(result, 1, 1, v60);
            v60 = result;
            v76 = *(result + 24);
          }

          v2 = v83;
          if (v60[2] >= v76 >> 1)
          {
            goto LABEL_61;
          }

          swift_arrayInitWithCopy();

          ++v60[2];
        }

        sub_20BCED10C(v26, MEMORY[0x277D53BC8]);
        (*v92)(v53, v2);
        v58 += v94;
        if (!--v57)
        {
          break;
        }

        v98(v53, v58, v2);
      }

      v55 = v89;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    v103 = v80;
    sub_20B8D9328(v79);
    sub_20B8D9328(v31);
    sub_20B8D9328(v55);
    sub_20B8D9328(v60);
    __swift_project_boxed_opaque_existential_1((v81 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_mediaTagStringBuilder), *(v81 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_mediaTagStringBuilder + 24));
    v77 = sub_20C138544();

    return v77;
  }

  *&v91 = *(v94 + 16);
  v28 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v78 = v24;
  v29 = v24 + v28;
  v30 = *(v94 + 72);
  v94 += 16;
  v89 = (v94 - 8);
  v90 = v30;
  v31 = MEMORY[0x277D84F90];
  v84 = xmmword_20C14F320;
  v32 = v99;
  (v91)(v92, v24 + v28, v87);
  while (1)
  {
    *v13 = sub_20C1333D4();
    v13[1] = v34;
    swift_storeEnumTagMultiPayload();
    v35 = v31[2];
    if (!v35)
    {
      v47 = v32;
      v48 = v102;
      v49 = v47;
      v50 = swift_allocObject();
      *(v50 + 16) = v88;
      sub_20BCED0A4(v13, v50 + v48, MEMORY[0x277D53BC8]);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v51 = v31[3], v51 <= 1))
      {
        result = sub_20BC060E4(result, 1, 1, v31);
        v31 = result;
        v51 = *(result + 24);
      }

      if (v31[2] >= v51 >> 1)
      {
        goto LABEL_60;
      }

      v32 = v49;
      swift_arrayInitWithCopy();

      ++v31[2];
      goto LABEL_6;
    }

    v36 = v98;
    *v98 = 1;
    swift_storeEnumTagMultiPayload();
    v37 = swift_allocObject();
    *(v37 + 16) = v84;
    v38 = v37 + v102;
    v39 = MEMORY[0x277D53BC8];
    sub_20BCED0A4(v36, v37 + v102, MEMORY[0x277D53BC8]);
    result = sub_20BCED0A4(v13, v38 + v101, v39);
    v41 = v35 + 2;
    if (__OFADD__(v35, 2))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v42 = v31[3] >> 1, v42 < v41))
    {
      if (v35 <= v41)
      {
        v43 = v35 + 2;
      }

      else
      {
        v43 = v35;
      }

      result = sub_20BC060E4(result, v43, 1, v31);
      v31 = result;
      v42 = *(result + 24) >> 1;
    }

    v32 = v99;
    v27 = v87;
    if (v42 - v31[2] < 2)
    {
      goto LABEL_55;
    }

    swift_arrayInitWithCopy();

    v44 = v31[2];
    v45 = __OFADD__(v44, 2);
    v46 = v44 + 2;
    if (v45)
    {
      goto LABEL_56;
    }

    v31[2] = v46;
    sub_20BCED10C(v98, MEMORY[0x277D53BC8]);
LABEL_6:
    sub_20BCED10C(v13, MEMORY[0x277D53BC8]);
    v33 = v92;
    (*v89)(v92, v27);
    v29 += v90;
    if (!--v25)
    {

      v2 = v83;
      goto LABEL_27;
    }

    (v91)(v33, v29, v27);
  }

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
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void sub_20BCEC99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_platform);
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      return;
    }

    v19 = v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v21 = *(v19 + 8);
    v28 = Strong;
    ObjectType = swift_getObjectType();
    v22 = sub_20C134404();
    v24 = v23;
    v9 = sub_20BCEBF40();
    if (qword_27C760B50 != -1)
    {
      swift_once();
    }

    v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v26 = sub_20C13C914();
    v12 = [v25 initWithString_];

    v13 = *(v21 + 24);
    v27 = v21;
    v14 = v22;
    v15 = v24;
    v16 = v9;
    v17 = v12;
    v18 = 1;
  }

  else
  {
    v2 = v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v4 = *(v2 + 8);
    v28 = v3;
    ObjectType = swift_getObjectType();
    v6 = sub_20C134404();
    v8 = v7;
    v9 = sub_20BCEBF40();
    if (qword_27C760B50 != -1)
    {
      swift_once();
    }

    v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v11 = sub_20C13C914();
    v12 = [v10 initWithString_];

    v13 = *(v4 + 24);
    v27 = v4;
    v14 = v6;
    v15 = v8;
    v16 = v9;
    v17 = v12;
    v18 = 0;
  }

  v13(v14, v15, v16, v17, 0, 0, v18, ObjectType, v27);
}

uint64_t sub_20BCECC28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_activityTypeBehavior;
  v4 = sub_20C137254();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_mediaTagStringBuilder);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_workoutDeviceConnection, &unk_27C765CB0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_heartRateDeviceConnection, &unk_27C767260);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display);
  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_onStartCountdown));
  return v0;
}

uint64_t sub_20BCECD6C()
{
  sub_20BCECC28();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionInstructionsPresenter()
{
  result = qword_27C76DCC0;
  if (!qword_27C76DCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCECE18()
{
  sub_20C1344C4();
  if (v0 <= 0x3F)
  {
    sub_20C137254();
    if (v1 <= 0x3F)
    {
      sub_20BCECFE8(319, &qword_27C76B320, MEMORY[0x277D529D8]);
      if (v2 <= 0x3F)
      {
        sub_20BCECFE8(319, &unk_27C767250, MEMORY[0x277D52DE8]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20BCECFE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_20BCED03C()
{
  result = qword_27C766940;
  if (!qword_27C766940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C766940);
  }

  return result;
}

uint64_t sub_20BCED0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BCED10C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BCED224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BCED2CC(unint64_t a1)
{
  v2 = sub_20C136594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0x61426E6F69746361;
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 1uLL:
      return 0xD000000000000011;
    case 2uLL:
      return 0x75426E6F69746361;
    case 3uLL:
      return result;
    case 4uLL:
      return 0x7974697669746361;
    case 5uLL:
      return 0x486B726F77747261;
    case 6uLL:
    case 0x11uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x2CuLL:
    case 0x35uLL:
      return 0xD000000000000015;
    case 8uLL:
      return 0x65486C6961746564;
    case 9uLL:
      return 0x68536C6961746564;
    case 0xAuLL:
      return 0xD000000000000011;
    case 0xBuLL:
      return 0x64616F6C6E776F64;
    case 0xCuLL:
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      v19 = "downloadButtonHeader-";
      goto LABEL_37;
    case 0xDuLL:
    case 0x15uLL:
    case 0x26uLL:
    case 0x3FuLL:
    case 0x43uLL:
      return 0xD000000000000014;
    case 0xEuLL:
    case 0x27uLL:
    case 0x2BuLL:
    case 0x42uLL:
      return 0xD000000000000012;
    case 0xFuLL:
      return 0xD000000000000021;
    case 0x10uLL:
    case 0x31uLL:
    case 0x41uLL:
      return 0xD000000000000010;
    case 0x12uLL:
    case 0x28uLL:
      return 0xD00000000000001ALL;
    case 0x13uLL:
      return 0x6E69646E61707865;
    case 0x14uLL:
      v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      strcpy(v46, "filterHeader-");
      HIWORD(v46[1]) = -4864;
      goto LABEL_39;
    case 0x16uLL:
    case 0x47uLL:
    case 0x4BuLL:
      return 0xD000000000000018;
    case 0x17uLL:
    case 0x1BuLL:
    case 0x30uLL:
    case 0x3CuLL:
      return 0xD000000000000013;
    case 0x18uLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      v46[0] = 0xD000000000000012;
      v46[1] = 0x800000020C1B0480;
      if (v20)
      {
        v23 = String.camelCased()();
        countAndFlagsBits = v23._countAndFlagsBits;
        object = v23._object;
      }

      else
      {
        object = 0xE700000000000000;
        countAndFlagsBits = 0x656C7469546F6ELL;
      }

      MEMORY[0x20F2F4230](countAndFlagsBits, object);

      MEMORY[0x20F2F4230](45, 0xE100000000000000);
      if (v21)
      {
        v44 = String.camelCased()();
        v39 = v44._countAndFlagsBits;
        v37 = v44._object;
      }

      else
      {
        v39 = 0x7469746275536F6ELL;
        v37 = 0xEA0000000000656CLL;
      }

      goto LABEL_70;
    case 0x19uLL:
      return 0x487972656C6C6167;
    case 0x1AuLL:
      return 0xD000000000000011;
    case 0x1CuLL:
      return sub_20BCED2CC(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20), 0xEC00000072656E6ELL);
    case 0x1DuLL:
      v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;

      sub_20C13DC94();

      strcpy(v46, "hostedContent-");
      HIBYTE(v46[1]) = -18;
      MEMORY[0x20F2F4230](v40, v41);
      goto LABEL_71;
    case 0x1EuLL:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
      v32 = swift_projectBox();
      (*(v7 + 16))(v9, v32 + *(v31 + 48), v6);
      goto LABEL_35;
    case 0x1FuLL:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
      v26 = swift_projectBox();
      (*(v3 + 16))(v5, v26 + *(v25 + 48), v2);
      goto LABEL_23;
    case 0x20uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v33 = swift_projectBox();
      (*(v7 + 16))(v9, v33, v6);
LABEL_35:
      strcpy(v46, "lockup-");
      v46[1] = 0xE700000000000000;
      v34 = sub_20C135184();
      MEMORY[0x20F2F4230](v34);

      MEMORY[0x20F2F4230](45, 0xE100000000000000);
      v35 = sub_20C133E44();
      MEMORY[0x20F2F4230](v35);

      v36 = v46[0];
      (*(v7 + 8))(v9, v6);
      return v36;
    case 0x21uLL:
      v18 = swift_projectBox();
      (*(v3 + 16))(v5, v18, v2);
LABEL_23:
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      v46[0] = 0xD000000000000012;
      v46[1] = 0x800000020C1B0420;
      v27 = sub_20C136564();
      MEMORY[0x20F2F4230](v27);

      v28 = v46[0];
      (*(v3 + 8))(v5, v2);
      return v28;
    case 0x24uLL:
    case 0x25uLL:
      return 0x617461646174656DLL;
    case 0x29uLL:
      return 0x617254636973756DLL;
    case 0x2AuLL:
      return 0x72617262694C796DLL;
    case 0x2DuLL:
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      v19 = "playlistDetailHeader-";
LABEL_37:
      v46[0] = 0xD000000000000015;
      v46[1] = (v19 - 32) | 0x8000000000000000;
      goto LABEL_38;
    case 0x2EuLL:
      v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v46[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46[1] = v42;
      v45[2] = 32;
      v45[3] = 0xE100000000000000;
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      sub_20B5F6EB0();
      sub_20C13DA14();
      v13 = sub_20C13C9E4();
      v15 = v43;

      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      v46[0] = 0xD000000000000016;
      v46[1] = 0x800000020C1B0300;
      goto LABEL_60;
    case 0x2FuLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      v46[0] = 0xD000000000000011;
      v46[1] = 0x800000020C1B02E0;
      v12 = [v11 string];
      v13 = sub_20C13C954();
      v15 = v14;

LABEL_60:
      MEMORY[0x20F2F4230](v13, v15);
      goto LABEL_71;
    case 0x32uLL:
      return 0x776F6853746F6F72;
    case 0x33uLL:
      return 0x486E6F6974636573;
    case 0x34uLL:
      return 0x656C756465686373;
    case 0x36uLL:
      return 0x64657463656C6573;
    case 0x37uLL:
      return 0xD000000000000016;
    case 0x38uLL:
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_20C13DC94();

      strcpy(v46, "sortingHeader-");
      HIBYTE(v46[1]) = -18;
LABEL_38:
      v29 = v16;
      v30 = v17;
LABEL_39:
      MEMORY[0x20F2F4230](v29, v30);
      goto LABEL_72;
    case 0x39uLL:
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;

      sub_20C13DC94();

      v46[0] = 0xD00000000000001ALL;
      v46[1] = 0x800000020C1B0240;
      if (v37)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0x656D614E6F6ELL;
      }

      if (!v37)
      {
        v37 = 0xE600000000000000;
      }

LABEL_70:
      MEMORY[0x20F2F4230](v39, v37);
LABEL_71:

LABEL_72:
      result = v46[0];
      break;
    case 0x3AuLL:
      result = 0xD000000000000011;
      break;
    case 0x3EuLL:
      result = 0xD000000000000011;
      break;
    case 0x40uLL:
      result = 0x65744965756C6176;
      break;
    case 0x45uLL:
      result = 0xD000000000000011;
      break;
    case 0x46uLL:
      result = 0xD000000000000011;
      break;
    case 0x4AuLL:
      result = 0xD000000000000011;
      break;
    case 0x4DuLL:
      result = 0x676E6964616F6CLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_20BCEDF94()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_27C76DCD8 = *&v1;
  return result;
}

id sub_20BCEDFC4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_scrollView;
  v2 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = objc_opt_self();
  v3 = [v40 secondarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  if (qword_27C760B60 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27C76DCD8;
  v5 = [v2 layer];
  [v5 setCornerRadius_];

  [v2 setClipsToBounds_];
  if (qword_27C760B58 != -1)
  {
    swift_once();
  }

  v6 = qword_27C76DCD0;
  v7 = [v2 layer];
  [v7 setCornerCurve_];

  *&v0[v1] = v2;
  v8 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_contentStackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setDistribution_];
  [v9 setSpacing_];
  [v9 setAlignment_];
  [v9 setAxis_];
  v41 = v0;
  *&v0[v8] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v44 = 1144750080;
  v43 = 1065353216;
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v11) = v45;
  [v10 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v12];
  [v10 setAllowsDefaultTighteningForTruncation_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  v13 = *MEMORY[0x277D743F8];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_titleLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v20 = swift_initStackObject();
  v21 = MEMORY[0x277D74430];
  *(v20 + 16) = xmmword_20C14F980;
  v22 = *v21;
  *(v20 + 32) = *v21;
  *(v20 + 40) = v13;
  v23 = v19;
  v24 = v22;
  v25 = sub_20B6B134C(v20);
  swift_setDeallocating();
  sub_20B520158(v20 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v25;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v26 = sub_20C13C744();

  v27 = [v14 fontDescriptorByAddingAttributes_];

  v28 = objc_opt_self();
  v29 = [v28 fontWithDescriptor:v27 size:0.0];

  [v10 setFont_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v30 = sub_20C13C914();
  [v10 setAccessibilityIdentifier_];

  *&v0[v17] = v10;
  v31 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_descriptionLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = 1144750080;
  v43 = 1065353216;
  sub_20C13BB94();
  LODWORD(v33) = v45;
  [v32 setContentHuggingPriority:1 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v34];
  [v32 setAllowsDefaultTighteningForTruncation_];
  [v32 setLineBreakMode_];
  [v32 setNumberOfLines_];
  v35 = [v40 secondaryLabelColor];
  [v32 setTextColor_];

  v36 = [v28 preferredFontForTextStyle_];
  [v32 setFont_];

  [v32 setAdjustsFontForContentSizeCategory_];
  v37 = sub_20C13C914();
  [v32 setAccessibilityIdentifier_];

  *&v41[v31] = v32;
  v42.receiver = v41;
  v42.super_class = type metadata accessor for CatalogTipSummaryCardView();
  v38 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_20BCEE800();

  return v38;
}

void sub_20BCEE800()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_scrollView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_contentStackView];
  [v2 addSubview_];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_titleLabel];
  [v3 addArrangedSubview_];
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_descriptionLabel];
  [v3 addArrangedSubview_];
  [v3 setCustomSpacing:v4 afterView:10.0];
  [v3 setCustomSpacing:v5 afterView:20.0];
  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C1580B0;
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v2 bottomAnchor];
  v11 = [v1 &selRef_secondaryLabel + 5];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v1 &selRef_setLineBreakMode_];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v2 trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  v19 = [v3 leadingAnchor];
  v20 = [v2 contentLayoutGuide];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v6 + 64) = v22;
  v23 = [v3 trailingAnchor];
  v24 = [v2 contentLayoutGuide];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v6 + 72) = v26;
  v27 = [v3 topAnchor];
  v28 = [v2 contentLayoutGuide];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v6 + 80) = v30;
  v31 = [v3 bottomAnchor];
  v32 = [v2 contentLayoutGuide];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v6 + 88) = v34;
  v35 = [v3 heightAnchor];
  v36 = [v2 frameLayoutGuide];
  v37 = [v36 heightAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-24.0];
  LODWORD(v39) = 1132068864;
  [v38 setPriority_];
  *(v6 + 96) = v38;
  v40 = [v3 widthAnchor];
  v41 = [v2 frameLayoutGuide];
  v42 = [v41 widthAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:-30.0];
  *(v6 + 104) = v43;
  v44 = [v3 trailingAnchor];
  v45 = [v2 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-15.0];

  *(v6 + 112) = v46;
  v47 = [v3 leadingAnchor];
  v48 = [v2 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:15.0];

  *(v6 + 120) = v49;
  v50 = [v3 bottomAnchor];
  v51 = [v2 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-12.0];

  *(v6 + 128) = v52;
  v53 = [v3 topAnchor];
  v54 = [v2 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:12.0];

  *(v6 + 136) = v55;
  sub_20B5E29D0();
  v57 = sub_20C13CC54();

  [v56 activateConstraints_];
}

id sub_20BCEEF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogTipSummaryCardView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCEF034()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_scrollView;
  v2 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = objc_opt_self();
  v3 = [v37 secondarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  if (qword_27C760B60 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27C76DCD8;
  v5 = [v2 layer];
  [v5 setCornerRadius_];

  [v2 setClipsToBounds_];
  if (qword_27C760B58 != -1)
  {
    swift_once();
  }

  v6 = qword_27C76DCD0;
  v7 = [v2 layer];
  [v7 setCornerCurve_];

  *(v0 + v1) = v2;
  v8 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_contentStackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setDistribution_];
  [v9 setSpacing_];
  [v9 setAlignment_];
  [v9 setAxis_];
  v38 = v0;
  *(v0 + v8) = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v11) = v39;
  [v10 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v12];
  [v10 setAllowsDefaultTighteningForTruncation_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  v13 = *MEMORY[0x277D743F8];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_titleLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20C14F980;
  v21 = *MEMORY[0x277D74430];
  *(v20 + 32) = *MEMORY[0x277D74430];
  *(v20 + 40) = v13;
  v22 = v19;
  v23 = v21;
  v24 = sub_20B6B134C(v20);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v25 = sub_20C13C744();

  v26 = [v14 fontDescriptorByAddingAttributes_];

  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v26 size:0.0];

  [v10 setFont_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v29 = sub_20C13C914();
  [v10 setAccessibilityIdentifier_];

  *(v0 + v17) = v10;
  v30 = OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_descriptionLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_20C13BB94();
  LODWORD(v32) = v39;
  [v31 setContentHuggingPriority:1 forAxis:v32];
  LODWORD(v33) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v33];
  [v31 setAllowsDefaultTighteningForTruncation_];
  [v31 setLineBreakMode_];
  [v31 setNumberOfLines_];
  v34 = [v37 secondaryLabelColor];
  [v31 setTextColor_];

  v35 = [v27 preferredFontForTextStyle_];
  [v31 setFont_];

  [v31 setAdjustsFontForContentSizeCategory_];
  v36 = sub_20C13C914();
  [v31 setAccessibilityIdentifier_];

  *(v38 + v30) = v31;
  sub_20C13DE24();
  __break(1u);
}

uint64_t NavigationError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BCEF858()
{
  result = qword_27C76DD00;
  if (!qword_27C76DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DD00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_20BCEF9FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleLayer;
  *&v5[v10] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleGradientLayer;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12 = sub_20B9C7D00(37);
  v13 = [v12 imageWithRenderingMode_];

  v67 = type metadata accessor for SpriteSheetView();
  v14 = objc_allocWithZone(v67);
  v15 = &v14[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
  *v15 = 0xD00000000000001DLL;
  *(v15 + 1) = 0x800000020C1A0930;
  v16 = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_20BC062A0(0, *(v16 + 2) + 1, 1, v16);
  }

  v17 = 0;
  v18 = *(v16 + 2);
  v19 = 16 * v18;
  do
  {
    v20 = *(v16 + 3);
    if (v18 + v17 >= v20 >> 1)
    {
      v16 = sub_20BC062A0((v20 > 1), v18 + v17 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + v17 + 1;
    v21 = &v16[v19];
    *(v21 + 4) = v17 / 10.0;
    *(v21 + 5) = 0;
    if (v18 + v17 == 18)
    {
      v22 = v13;
      goto LABEL_10;
    }

    ++v17;
    v19 += 16;
  }

  while (v17 != 10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_20BC062A0(0, *(v16 + 2) + 1, 1, v16);
  }

  v61 = 0;
  v62 = *(v16 + 2);
  v63 = 16 * v62;
  do
  {
    v64 = *(v16 + 3);
    if (v62 + v61 >= v64 >> 1)
    {
      v16 = sub_20BC062A0((v64 > 1), v62 + v61 + 1, 1, v16);
    }

    *(v16 + 2) = v62 + v61 + 1;
    v65 = &v16[v63];
    *(v65 + 4) = v61 / 10.0;
    *(v65 + 5) = 0x3FE0000000000000;
    if (v62 + v61 == 18)
    {
      break;
    }

    v63 += 16;
  }

  while (v61++ != 9);
LABEL_10:
  v23 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  *&v14[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v16;
  v24 = &v14[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
  *v24 = v22;
  *(v24 + 8) = xmmword_20C162A50;
  *&v14[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
  v69.receiver = v14;
  v69.super_class = v67;
  v25 = v22;
  v26 = objc_msgSendSuper2(&v69, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 layer];
  [v27 setContentsGravity_];

  v28 = [v26 &selRef_setFragmentFunction_];
  [v28 setMasksToBounds_];

  sub_20B918360();
  *&v26[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x403E000000000000;
  v29 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
  [v26 setTintColor_];

  *&v5[v23] = v26;
  *&v5[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconToCircleDiameterRatio] = 0x3FE6666666666666;
  v68.receiver = v5;
  v68.super_class = type metadata accessor for BurnBarModalityIconPlatter();
  v30 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  v31 = [v30 &selRef_setFragmentFunction_];
  v32 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleLayer;
  [v31 addSublayer_];

  v33 = *&v30[v32];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 whiteColor];
  v37 = [v36 CGColor];

  [v35 setFillColor_];
  v38 = [v30 &selRef_setFragmentFunction_];

  v39 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleGradientLayer;
  [v38 addSublayer_];

  [*&v30[v39] setMask_];
  v40 = *&v30[v39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14F320;
  v42 = objc_allocWithZone(MEMORY[0x277D75348]);
  v43 = v40;
  v44 = [v42 initWithRed:0.831372549 green:0.278431373 blue:0.501960784 alpha:1.0];
  v45 = [v44 CGColor];

  type metadata accessor for CGColor(0);
  v47 = v46;
  *(v41 + 56) = v46;
  *(v41 + 32) = v45;
  v48 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.592156863 green:0.168627451 blue:0.223529412 alpha:1.0];
  v49 = [v48 CGColor];

  *(v41 + 88) = v47;
  *(v41 + 64) = v49;
  v50 = sub_20C13CC54();

  [v43 setColors_];

  [*&v30[v39] setStartPoint_];
  [*&v30[v39] setEndPoint_];
  v51 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  [v30 addSubview_];
  v52 = [*&v30[v51] layer];
  v53 = [v34 whiteColor];
  v54 = [v53 CGColor];

  [v52 setShadowColor_];
  v55 = [*&v30[v51] layer];
  v56 = [objc_opt_self() kCAFilterScreenBlendMode];
  if (!v56)
  {
    sub_20C13C954();
    v56 = sub_20C13C914();
  }

  [v55 setCompositingFilter_];

  v57 = [*&v30[v51] layer];
  [v57 setShadowRadius_];

  v58 = [*&v30[v51] layer];
  [v58 setShadowOffset_];

  return v30;
}

void sub_20BCF0230()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for BurnBarModalityIconPlatter();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v3 = v1 * 0.5;
  v4 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v0 bounds];
  [v4 moveToPoint_];
  [v4 addArcWithCenter:1 radius:v3 startAngle:v3 endAngle:v3 clockwise:{3.14159265, 9.42477796}];
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleLayer];
  v7 = [v4 CGPath];
  [v6 setPath_];

  v8 = objc_opt_self();
  [v8 begin];
  [v8 setDisableActions_];
  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleGradientLayer];
  [v0 bounds];
  [v9 setFrame_];
  [v8 commit];
  v10 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  [*&v0[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView] sizeToFit];
  v11 = *&v0[v10];
  [v0 bounds];
  sub_20C13D4E4();
  [v11 setCenter_];

  [v0 bounds];
  v18 = CGRectInset(v17, (v2 + v2 * -0.7) * 0.5, (v2 + v2 * -0.7) * 0.5);
  width = v18.size.width;
  [*&v0[v10] intrinsicContentSize];
  v13 = *&v0[v10];
  CGAffineTransformMakeScale(&v15, width / v14, width / v14);
  [v13 setTransform_];
}

void sub_20BCF04E8(uint64_t a1, float a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  v5 = [*(a1 + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView) layer];
  [v5 setShadowRadius_];

  v7 = [*(a1 + v4) layer];
  *&v6 = a2;
  [v7 setShadowOpacity_];
}

id sub_20BCF0598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BurnBarModalityIconPlatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCF064C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_circleGradientLayer;
  v24 = v0;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v3 = sub_20B9C7D00(37);
  v4 = [v3 imageWithRenderingMode_];

  v5 = type metadata accessor for SpriteSheetView();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
  *v7 = 0xD00000000000001DLL;
  *(v7 + 1) = 0x800000020C1A0930;
  v8 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_20BC062A0(0, *(v8 + 2) + 1, 1, v8);
  }

  v9 = 0;
  v10 = *(v8 + 2);
  v11 = 16 * v10;
  do
  {
    v12 = *(v8 + 3);
    if (v10 + v9 >= v12 >> 1)
    {
      v8 = sub_20BC062A0((v12 > 1), v10 + v9 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + v9 + 1;
    v13 = &v8[v11];
    *(v13 + 4) = v9 / 10.0;
    *(v13 + 5) = 0;
    if (v10 + v9 == 18)
    {
      goto LABEL_15;
    }

    ++v9;
    v11 += 16;
  }

  while (v9 != 10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = 0;
    v15 = *(v8 + 2);
    v16 = 16 * v15;
    do
    {
      v17 = *(v8 + 3);
      if (v15 + v14 >= v17 >> 1)
      {
        v8 = sub_20BC062A0((v17 > 1), v15 + v14 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + v14 + 1;
      v18 = &v8[v16];
      *(v18 + 4) = v14 / 10.0;
      *(v18 + 5) = 0x3FE0000000000000;
      if (v15 + v14 == 18)
      {
        break;
      }

      v16 += 16;
    }

    while (v14++ != 9);
LABEL_15:
    v20 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
    *&v6[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v8;
    v21 = &v6[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
    *v21 = v4;
    *(v21 + 8) = xmmword_20C162A50;
    v8 = &OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate;
    *&v6[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
    v25.receiver = v6;
    v25.super_class = v5;
    v22 = v4;
    v4 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v23 = [v4 layer];
    [v23 setContentsGravity_];

    v6 = [v4 layer];
    [v6 setMasksToBounds_];

    sub_20B918360();
    *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x403E000000000000;
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
    [v4 setTintColor_];

    *(v24 + v20) = v4;
    *(v24 + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconToCircleDiameterRatio) = 0x3FE6666666666666;
    sub_20C13DE24();
    __break(1u);
LABEL_16:
    v8 = sub_20BC062A0(0, *(v8 + 2) + 1, 1, v8);
  }
}

uint64_t getEnumTagSinglePayload for SessionBurnBarReadyEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionBurnBarReadyEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

id sub_20BCF0AE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v10 - 8);
  v188 = v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v192 = v185 - v13;
  MEMORY[0x28223BE20](v14);
  v189 = v185 - v15;
  *&v4[OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_itemInfo;
  v17 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  type metadata accessor for MenuPickerButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [ObjCClassFromMetadata buttonWithType_];
  type metadata accessor for UILayoutPriority(0);
  v21 = v20;
  v200 = 1065353216;
  v201 = 1148846080;
  v22 = sub_20B60B184();
  v23 = v19;
  v196 = v22;
  v197 = v21;
  sub_20C13BBA4();
  LODWORD(v24) = v202;
  [v23 setContentCompressionResistancePriority:0 forAxis:v24];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v23 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setAdjustsFontForContentSizeCategory_];
  }

  v27 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerButton;
  v28 = *MEMORY[0x277D76818];
  [v23 setMaximumContentSizeCategory_];

  *&v5[v27] = v23;
  v29 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerTitleLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setNumberOfLines_];
  [v30 setLineBreakMode_];
  v31 = v30;
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  [v31 setMaximumContentSizeCategory_];

  *&v5[v29] = v31;
  v32 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerButton;
  v33 = [ObjCClassFromMetadata buttonWithType_];
  v200 = 1065353216;
  v201 = 1148846080;
  v34 = v33;
  sub_20C13BBA4();
  LODWORD(v35) = v202;
  [v34 setContentCompressionResistancePriority:0 forAxis:v35];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v34 titleLabel];
  [v36 setAdjustsFontForContentSizeCategory_];

  [v34 setMaximumContentSizeCategory_];
  *&v5[v32] = v34;
  v37 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerTitleLabel;
  v38 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v38 setNumberOfLines_];
  [v38 setLineBreakMode_];
  v39 = v38;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 setAdjustsFontForContentSizeCategory_];
  [v39 setMaximumContentSizeCategory_];

  *&v5[v37] = v39;
  v40 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_weekdayPickerView;
  type metadata accessor for WeekdayPickerView();
  v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v40] = v41;
  v42 = type metadata accessor for SchedulePickerCell();
  v199.receiver = v5;
  v199.super_class = v42;
  v43 = objc_msgSendSuper2(&v199, sel_initWithFrame_, a1, a2, a3, a4);
  v44 = [v43 contentView];
  v45 = objc_opt_self();
  v46 = [v45 secondarySystemGroupedBackgroundColor];
  [v44 setBackgroundColor_];

  v47 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_weekdayPickerView;
  v48 = *&v43[OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_weekdayPickerView];
  v49 = objc_allocWithZone(MEMORY[0x277D75348]);
  v50 = v48;
  v51 = [v49 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v50 setTintColor_];

  v52 = *&v43[v47];
  v53 = swift_allocObject();
  *(v53 + 16) = v43;
  v54 = &v52[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_onItemTapped];
  v55 = *&v52[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_onItemTapped];
  *v54 = sub_20BCF38F0;
  v54[1] = v53;
  v56 = v43;
  v57 = v52;
  sub_20B583ECC(v55);

  v58 = [v56 &selRef_setMaximumFractionDigits_];
  v198 = v43;
  v195 = v47;
  [v58 addSubview_];

  v59 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  v60 = [v45 separatorColor];
  [v59 setBackgroundColor_];

  v61 = [v56 &selRef_setMaximumFractionDigits_];
  v194 = v59;
  [v61 addSubview_];

  v62 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];
  v63 = [v45 separatorColor];
  [v62 setBackgroundColor_];

  v64 = [v56 &selRef_setMaximumFractionDigits_];
  v190 = v62;
  [v64 &selRef_onDisplayDisconnected];

  v65 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerTitleLabel;
  v66 = *(v56 + OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerTitleLabel);
  v67 = objc_opt_self();
  v68 = *MEMORY[0x277D76918];
  v69 = v66;
  v187 = v67;
  v70 = [v67 preferredFontForTextStyle_];
  [v69 setFont_];

  v71 = *(v56 + v65);
  v72 = [v45 whiteColor];
  [v71 setTextColor_];

  v73 = [v56 &selRef_setMaximumFractionDigits_];
  v193 = v65;
  v74 = v45;
  [v73 &selRef_onDisplayDisconnected];

  v191 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerButton;
  v75 = *(v56 + OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerButton);
  v76 = [v45 systemGrayColor];
  v77 = v189;
  sub_20C13D884();
  v78 = sub_20C13D874();
  v79 = *(v78 - 8);
  v186 = *(v79 + 48);
  v185[1] = v79 + 48;
  if (!v186(v77, 1, v78))
  {
    v80 = v76;
    sub_20C13D774();
  }

  sub_20B52F9E8(v77, v192, &qword_27C764C60);
  sub_20C13D894();

  sub_20B520158(v77, &qword_27C764C60);
  v81 = [v56 contentView];
  [v81 addSubview_];

  v82 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerTitleLabel;
  v83 = *(v56 + OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerTitleLabel);
  v84 = [v187 preferredFontForTextStyle_];
  [v83 setFont_];

  v85 = *(v56 + v82);
  v86 = [v74 whiteColor];
  [v85 setTextColor_];

  v87 = [v56 contentView];
  v189 = v82;
  [v87 addSubview_];

  v88 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerButton;
  v89 = *(v56 + OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerButton);
  v90 = [v74 systemGrayColor];
  v91 = v188;
  sub_20C13D884();
  if (!v186(v91, 1, v78))
  {
    v92 = v90;
    sub_20C13D774();
  }

  sub_20B52F9E8(v91, v192, &qword_27C764C60);
  sub_20C13D894();

  sub_20B520158(v91, &qword_27C764C60);
  v93 = [v56 contentView];
  v187 = v88;
  [v93 addSubview_];

  v192 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_20C178830;
  v95 = v195;
  v96 = v198;
  v97 = [*&v198[v195] leadingAnchor];
  v98 = [v56 contentView];
  v99 = [v98 leadingAnchor];

  v100 = [v97 constraintEqualToAnchor:v99 constant:20.0];
  *(v94 + 32) = v100;
  v101 = [*&v96[v95] trailingAnchor];
  v102 = [v56 contentView];
  v103 = [v102 trailingAnchor];

  v104 = [v101 &selRef_passwordEntryCancelledHandler + 6];
  *(v94 + 40) = v104;
  v105 = [*&v96[v95] centerXAnchor];
  v106 = [v56 contentView];
  v107 = [v106 centerXAnchor];

  v108 = [v105 constraintEqualToAnchor_];
  *(v94 + 48) = v108;
  v109 = [*&v96[v95] topAnchor];
  v110 = [v56 contentView];
  v111 = [v110 &selRef_setLineBreakMode_];

  v112 = [v109 &selRef_passwordEntryCancelledHandler + 6];
  *(v94 + 56) = v112;
  v113 = v194;
  v114 = [v194 leadingAnchor];
  v115 = [v56 &selRef_setMaximumFractionDigits_];
  v116 = [v115 leadingAnchor];

  v117 = [v114 constraintEqualToAnchor_];
  *(v94 + 64) = v117;
  v118 = [v113 trailingAnchor];
  v119 = [v56 &selRef_setMaximumFractionDigits_];
  v120 = [v119 trailingAnchor];

  v121 = [v118 constraintEqualToAnchor_];
  *(v94 + 72) = v121;
  v122 = v113;
  v123 = [v113 topAnchor];
  v124 = [*&v96[v95] bottomAnchor];
  v125 = [v123 constraintEqualToAnchor:v124 constant:10.0];

  *(v94 + 80) = v125;
  v126 = [v113 heightAnchor];
  sub_20C1387F4();
  v127 = [v126 constraintEqualToConstant_];

  *(v94 + 88) = v127;
  v128 = v193;
  v129 = [*(v56 + v193) leadingAnchor];
  v130 = [*&v96[v95] leadingAnchor];
  v131 = [v129 constraintEqualToAnchor_];

  *(v94 + 96) = v131;
  v132 = v128;
  v133 = [*(v56 + v128) trailingAnchor];
  v134 = v191;
  v135 = [*(v56 + v191) leadingAnchor];
  v136 = [v133 constraintLessThanOrEqualToAnchor:v135 constant:-5.0];

  *(v94 + 104) = v136;
  v137 = [*(v56 + v132) topAnchor];
  v138 = [v122 bottomAnchor];
  v139 = [v137 constraintEqualToAnchor:v138 constant:16.0];

  *(v94 + 112) = v139;
  v140 = [*(v56 + v134) trailingAnchor];
  v141 = [*&v198[v95] trailingAnchor];
  v142 = [v140 constraintEqualToAnchor_];

  *(v94 + 120) = v142;
  v143 = [*(v56 + v134) centerYAnchor];
  v144 = [*(v56 + v132) &selRef_setNumberOfTapsRequired_];
  v145 = [v143 constraintEqualToAnchor_];

  *(v94 + 128) = v145;
  v146 = v190;
  v147 = [v190 leadingAnchor];
  v148 = [v56 contentView];
  v149 = [v148 leadingAnchor];

  v150 = [v147 constraintEqualToAnchor_];
  *(v94 + 136) = v150;
  v151 = [v146 trailingAnchor];
  v152 = [v56 contentView];
  v153 = [v152 trailingAnchor];

  v154 = [v151 constraintEqualToAnchor_];
  *(v94 + 144) = v154;
  v155 = [v146 topAnchor];
  v156 = v193;
  v157 = [*(v56 + v193) bottomAnchor];
  v158 = [v155 constraintEqualToAnchor:v157 constant:10.0];

  *(v94 + 152) = v158;
  v159 = [v146 heightAnchor];
  sub_20C1387F4();
  v160 = [v159 constraintEqualToConstant_];

  *(v94 + 160) = v160;
  v161 = v189;
  v162 = [*&v189[v56] leadingAnchor];
  v163 = [*(v56 + v156) leadingAnchor];
  v164 = [v162 &selRef:v163 alertControllerReleasedDictationButton:? + 5];

  *(v94 + 168) = v164;
  v165 = [*&v161[v56] trailingAnchor];
  v166 = v187;
  v167 = [*&v187[v56] leadingAnchor];
  v168 = [v165 constraintLessThanOrEqualToAnchor:v167 constant:-5.0];

  *(v94 + 176) = v168;
  v169 = [*&v161[v56] topAnchor];
  v170 = [v146 bottomAnchor];
  v171 = [v169 constraintEqualToAnchor:v170 constant:16.0];

  *(v94 + 184) = v171;
  v172 = [*&v161[v56] bottomAnchor];
  v173 = [v56 contentView];

  v174 = [v173 bottomAnchor];
  v175 = [v172 constraintEqualToAnchor:v174 constant:-16.0];

  v200 = 1065353216;
  v201 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v176) = v202;
  [v175 setPriority_];
  *(v94 + 192) = v175;
  v177 = [*&v166[v56] trailingAnchor];
  v178 = [*&v198[v195] trailingAnchor];
  v179 = [v177 constraintEqualToAnchor_];

  *(v94 + 200) = v179;
  v180 = [*&v166[v56] centerYAnchor];
  v181 = [*&v161[v56] centerYAnchor];
  v182 = [v180 constraintEqualToAnchor_];

  *(v94 + 208) = v182;
  sub_20B51C88C(0, &qword_281100500);
  v183 = sub_20C13CC54();

  [v192 activateConstraints_];

  return v56;
}

uint64_t sub_20BCF2044(void *a1, __int16 a2, uint64_t a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    *v12 = a1;
    *(v12 + 4) = a2;
    v15 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v15);
    *(&v20 - 4) = 0;
    *(&v20 - 24) = 1;
    *(&v20 - 2) = v12;
    *(&v20 - 1) = v14;
    v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v17 = a1;
    v18 = [v16 indexPathForCell_];
    if (v18)
    {
      v19 = v18;
      sub_20C1331E4();

      sub_20C0C1CDC(v9, sub_20B5E2A84);
      swift_unknownObjectRelease();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return sub_20B5E2760(v12);
  }

  return result;
}

id sub_20BCF2454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SchedulePickerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SchedulePickerCell()
{
  result = qword_27C76DD58;
  if (!qword_27C76DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCF258C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BCF263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, void (*a8)(void, void, void, void))
{
  v30 = a7;
  v13 = sub_20C133244();
  v29 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v28 = a8;
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      *v18 = a3;
      *(v18 + 1) = a4;
      *(v18 + 2) = a5;
      v18[24] = a6;
      v23 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v23);
      *(&v28 - 4) = 0;
      *(&v28 - 24) = 1;
      *(&v28 - 2) = v18;
      *(&v28 - 1) = v22;
      v24 = *&v22[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

      v25 = v20;
      v26 = [v24 indexPathForCell_];
      if (v26)
      {
        v27 = v26;
        sub_20C1331E4();

        sub_20C0C1CDC(v15, v28);
        (*(v29 + 8))(v15, v13);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_20BCF2894()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BCF2AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BCF2B0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BCF2B74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BCF2BD8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x34)
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v65 = v14;
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x38);
    v66 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerTitleLabel];
    v18 = sub_20C13C914();
    [v17 setText_];

    v19 = *&v2[OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerButton];
    v20 = *(v16 + 16) + 1;
    v21 = v16;
    while (--v20)
    {
      v22 = *(v21 + 56);
      v21 += 32;
      if (v22 == 2)
      {

        break;
      }
    }

    v63 = v15;
    sub_20C13D884();
    v34 = sub_20C13D874();
    if (!(*(*(v34 - 8) + 48))(v13, 1, v34))
    {

      sub_20C13D824();
    }

    sub_20B52F9E8(v13, v10, &qword_27C764C60);
    v62 = v19;
    sub_20C13D894();

    sub_20B520158(v13, &qword_27C764C60);
    v35 = *(v16 + 16);
    v36 = MEMORY[0x277D84F90];
    if (v35)
    {
      v69 = MEMORY[0x277D84F90];
      sub_20C13DD64();
      v67 = sub_20B51C88C(0, &qword_27C7713A0);
      v37 = (v16 + 56);
      v38 = v2;
      do
      {
        v39 = *(v37 - 3);
        v40 = *(v37 - 2);
        v41 = *(v37 - 1);
        v42 = *v37;
        v37 += 32;
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *(v44 + 24) = v39;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        *(v44 + 48) = v42;
        swift_bridgeObjectRetain_n();
        sub_20C13D624();
        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
        --v35;
      }

      while (v35);
      v36 = v69;
      v2 = v38;
    }

    if (v36 >> 62)
    {
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30);

        sub_20C13DE34();

        goto LABEL_18;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30);
LABEL_18:

      sub_20B51C88C(0, &unk_27C76FED0);
      v45 = sub_20C13D554();
      v46 = v62;
      [v62 setMenu_];

      [v46 addTarget:v2 action:sel_timePickerPressed forControlEvents:0x4000];
LABEL_22:
      v47 = v63;
      v48 = *(v63 + 16);
      v49 = MEMORY[0x277D84F90];
      if (v48)
      {
        v69 = MEMORY[0x277D84F90];
        sub_20C13DD64();
        v67 = sub_20B51C88C(0, &qword_27C7713A0);
        v50 = (v47 + 56);
        v51 = v2;
        do
        {
          v52 = *(v50 - 3);
          v53 = *(v50 - 2);
          v54 = *(v50 - 1);
          v55 = *v50;
          v50 += 32;
          v56 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v57 = swift_allocObject();
          *(v57 + 16) = v56;
          *(v57 + 24) = v52;
          *(v57 + 32) = v53;
          *(v57 + 40) = v54;
          *(v57 + 48) = v55;
          swift_bridgeObjectRetain_n();
          sub_20C13D624();
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          --v48;
        }

        while (v48);
        v49 = v69;
        v2 = v51;
      }

      v58 = *&v2[OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerButton];
      if (v49 >> 62)
      {
        sub_20B51C88C(0, &qword_27C764F30);

        sub_20C13DE34();
      }

      else
      {

        sub_20C13E004();
        sub_20B51C88C(0, &qword_27C764F30);
      }

      sub_20B51C88C(0, &unk_27C76FED0);
      v59 = sub_20C13D554();
      [v58 setMenu_];

      v60 = *&v2[OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerTitleLabel];
      v61 = sub_20C13C914();
      [v60 setText_];

      sub_20BDFFA64(v66);
      return;
    }

    goto LABEL_22;
  }

  sub_20C13B534();

  v23 = v1;
  v24 = sub_20C13BB74();
  v25 = sub_20C13D1D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = a1;
    v69 = v67;
    *v26 = 138543874;
    *(v26 + 4) = v23;
    *v27 = v23;
    *(v26 + 12) = 2160;
    *(v26 + 14) = 1752392040;
    *(v26 + 22) = 2080;
    v28 = sub_20B5F66D0();
    v29 = v23;
    v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
    v32 = sub_20B51E694(v30, v31, &v69);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{mask.hash}s", v26, 0x20u);
    sub_20B520158(v27, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    v33 = v67;
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x20F2F6A40](v33, -1, -1);
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

void sub_20BCF3528()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  type metadata accessor for MenuPickerButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata buttonWithType_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  v6 = v5;
  sub_20C13BBA4();
  LODWORD(v7) = v24;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v6 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontForContentSizeCategory_];
  }

  v10 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerButton;
  v11 = *MEMORY[0x277D76818];
  [v6 setMaximumContentSizeCategory_];

  *(v1 + v10) = v6;
  v12 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_lengthPickerTitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setMaximumContentSizeCategory_];

  *(v1 + v12) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerButton;
  v16 = [ObjCClassFromMetadata buttonWithType_];
  sub_20C13BBA4();
  LODWORD(v17) = v24;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v16 titleLabel];
  [v18 setAdjustsFontForContentSizeCategory_];

  [v16 setMaximumContentSizeCategory_];
  *(v1 + v15) = v16;
  v19 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_timePickerTitleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 setNumberOfLines_];
  [v20 setLineBreakMode_];
  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  [v21 setMaximumContentSizeCategory_];

  *(v1 + v19) = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI18SchedulePickerCell_weekdayPickerView;
  type metadata accessor for WeekdayPickerView();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v22) = v23;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BCF38F8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_20BCF39C0;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20BB87EE4;
  v4[3] = &block_descriptor_119;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_27C79C1F0 = v2;
  return result;
}

id sub_20BCF39C0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast] + 1;
  v4 = v2 != 2 || v3 > 1;
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v4)
  {
    v6 = 0.3;
    v7 = 0.0;
  }

  else
  {
    v6 = 0.15;
    v7 = 1.0;
  }

  return [v5 initWithWhite:v7 alpha:v6];
}

uint64_t sub_20BCF3AC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  v10 = sub_20C13D874();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for CapsuleButton();
  v23.receiver = v0;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_updateConfiguration);
  sub_20C13D884();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B7839B4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13C074();
  v16 = sub_20C13C064();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  sub_20C13D7B4();
  v17 = [v0 isHighlighted];
  v18 = *&v0[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalBackgroundColor];
  if (v17)
  {
    v19 = [v18 colorWithAlphaComponent_];
  }

  else
  {
    v20 = v18;
  }

  v21 = sub_20C13D634();
  sub_20C13BCD4();
  v21(v22, 0);
  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_20C13D894();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_20BCF3E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C1329B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 16);
  if (!Strong)
  {
    return v9(a2, a1, v4);
  }

  v10 = Strong;
  v29 = v5;
  v30 = v4;
  v31 = a2;
  v9(v7, a1, v4);
  v28[2] = swift_getKeyPath();
  v28[1] = swift_getKeyPath();
  v11 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor];
  v12 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor + 8];
  v14 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor + 16];
  v13 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor + 24];
  v15 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor + 32];
  v16 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor + 40];
  v17 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor + 48];
  v18 = [v10 traitCollection];
  v19 = v18;
  if (v16 < 0)
  {
    v34 = v11;
    v35 = v12;
    LOBYTE(v36) = v14 & 1;
    v37 = v13;
    LODWORD(v38) = v15;
    BYTE4(v38) = BYTE4(v15) & 1;
    v20 = sub_20B992B08();
  }

  else
  {
    v32[0] = BYTE4(v13) & 1;
    LOBYTE(v33) = v16 & 1;
    v34 = v11;
    v35 = v12;
    v36 = v14;
    LODWORD(v37) = v13;
    BYTE4(v37) = BYTE4(v13) & 1;
    BYTE5(v37) = BYTE5(v13);
    v38 = v15;
    v39 = v16 & 1;
    v40 = v17;
    v20 = sub_20B7C6A74(v18);
  }

  v22 = v20;

  v33 = v22;
  sub_20C132864();
  sub_20B81F814();
  v23 = sub_20C132974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
  sub_20B81F86C();
  sub_20C132A74();
  v23(v32, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = [v10 isHighlighted];
  v25 = *&v10[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalForegroundColor];
  if (v24)
  {
    v26 = [v25 colorWithAlphaComponent_];
  }

  else
  {
    v26 = v25;
  }

  v33 = v26;
  v27 = sub_20C132974();
  sub_20B81F8C0();
  sub_20C132A74();
  v27(v32, 0);

  return (*(v29 + 32))(v31, v7, v30);
}

id sub_20BCF4218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CapsuleButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BCF42F4(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1);
  v4 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v4);
  if (v4)
  {
    v5 = *(sub_20C132EE4() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_20BCF46A0();
    do
    {
      sub_20C13C7C4();
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BCF43F0()
{
  v1 = v0[1];
  MEMORY[0x20F2F58E0](*v0);
  v2 = *(v1 + 16);
  result = MEMORY[0x20F2F58E0](v2);
  if (v2)
  {
    v4 = *(sub_20C132EE4() - 8);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_20BCF46A0();
    do
    {
      result = sub_20C13C7C4();
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_20BCF44C0()
{
  v1 = sub_20C132EE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v5);
  MEMORY[0x20F2F58E0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v4, v11, v1);
      sub_20BCF46A0();
      sub_20C13C7C4();
      (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BCF4624(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_20BB803E0(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_20BCF464C()
{
  result = qword_27C76DD80;
  if (!qword_27C76DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DD80);
  }

  return result;
}

unint64_t sub_20BCF46A0()
{
  result = qword_27C7675A0;
  if (!qword_27C7675A0)
  {
    sub_20C132EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7675A0);
  }

  return result;
}

uint64_t sub_20BCF46F8(uint64_t a1, void *a2, uint64_t a3)
{
  v82 = a2;
  v81 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v81);
  v6 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E00);
  MEMORY[0x28223BE20](v84);
  v8 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v83 = &v68[-v10];
  v11 = type metadata accessor for MetricImpressionElement();
  v80 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v86 = MEMORY[0x277D84F90];
  sub_20BB5E0A4(0, v14, 0);
  v16 = 0;
  v75 = type metadata accessor for ButtonAction(0);
  v17 = *(v75 - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v78 = a1 & 0xC000000000000001;
  v70 = v6 + 8;
  v72 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = v86;
  v74 = *(v17 + 72);
  v69 = *MEMORY[0x277D51768];
  v71 = *MEMORY[0x277D51750];
  v73 = *MEMORY[0x277D51778];
  v79 = a1;
  v19 = v6;
  v85 = v6;
  v76 = v14;
  v77 = v8;
  while (2)
  {
    v20 = v11;
    v22 = v83;
    v21 = v84;
    v23 = *(v84 + 48);
    sub_20B7632E0(v18, &v83[v23], type metadata accessor for ButtonAction);
    *v8 = v16;
    v24 = v8 + *(v21 + 48);
    result = sub_20BCF4F88(&v22[v23], v24, type metadata accessor for ButtonAction);
    if (v78)
    {
      v26 = MEMORY[0x20F2F5430](v16, v79);
      v27 = v19;
LABEL_7:
      [v26 frame];
      [v82 convertRect:v26 fromCoordinateSpace:?];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      sub_20B7632E0(v24 + *(v75 + 28), v27, type metadata accessor for ButtonAction.ActionType);
      v11 = v20;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
          v55 = v27;
          v56 = *(v54 + 48);
          sub_20B520158(v55 + *(v54 + 64), &unk_27C768660);
          sub_20B520158(v55 + v56, &qword_27C7622F0);
          v57 = *(v24 + 40);
          if (v57)
          {
            goto LABEL_32;
          }

          goto LABEL_28;
        case 2u:
        case 6u:
        case 8u:
          sub_20B64EF74(v27, type metadata accessor for ButtonAction.ActionType);
          v36 = *(v24 + 40);
          if (!v36)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        case 3u:
          v48 = sub_20C134014();
          goto LABEL_35;
        case 4u:
          v48 = sub_20C133954();
          goto LABEL_35;
        case 5u:
          v52 = v20[7];
          v53 = sub_20C1352E4();
          (*(*(v53 - 8) + 104))(v13 + v52, v69, v53);

          v37 = 0x6C6F686563616C70;
          *v13 = 0x6C6F686563616C70;
          v38 = 0xEB00000000726564;
          goto LABEL_14;
        case 7u:
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
          v46 = *(v45 + 64);
          v47 = *(v45 + 80);
          goto LABEL_24;
        case 9u:
          v62 = v27;
          v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
          v64 = sub_20C138894();
          (*(*(v64 - 8) + 8))(v62 + v63, v64);
          v65 = sub_20C138B94();
          (*(*(v65 - 8) + 8))(v62, v65);
          goto LABEL_31;
        case 0xAu:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200);

          v48 = sub_20C134284();
LABEL_35:
          (*(*(v48 - 8) + 8))(v27, v48);
          v36 = *(v24 + 40);
          if (!v36)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        case 0xBu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
          v36 = *(v24 + 40);
          if (v36)
          {
            goto LABEL_9;
          }

          goto LABEL_11;
        case 0xCu:
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
          v46 = *(v49 + 48);
          v47 = *(v49 + 64);
LABEL_24:
          v50 = sub_20C137254();
          v51 = v85;
          (*(*(v50 - 8) + 8))(&v85[v47], v50);
          sub_20B520158(v51 + v46, &qword_27C76A410);
          sub_20B64EF74(v51, type metadata accessor for StartWorkoutSessionRequest);
          v36 = *(v24 + 40);
          if (!v36)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        case 0xDu:

          v59 = v27;
          v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
          v61 = sub_20C132C14();
          (*(*(v61 - 8) + 8))(v59 + v60, v61);
LABEL_31:
          v57 = *(v24 + 40);
          if (v57)
          {
LABEL_32:
            v37 = *(v24 + 32);
            v38 = v57;
          }

          else
          {
LABEL_28:
            v37 = sub_20C13CA04();
            v38 = v58;
          }

          v66 = v11[7];
          v67 = sub_20C1352E4();
          (*(*(v67 - 8) + 104))(v13 + v66, v71, v67);
          goto LABEL_13;
        default:
          sub_20B520158(v27, &unk_27C762300);
          v36 = *(v24 + 40);
          if (v36)
          {
LABEL_9:
            v37 = *(v24 + 32);
            v38 = v36;
          }

          else
          {
LABEL_11:
            v37 = sub_20C13CA04();
            v38 = v39;
          }

          v40 = v11[7];
          v41 = sub_20C1352E4();
          (*(*(v41 - 8) + 104))(v13 + v40, v73, v41);
LABEL_13:

          *v13 = v37;
          v19 = v85;
LABEL_14:
          v13[1] = v38;
          v13[2] = v16;
          v13[3] = v37;
          v13[4] = v38;
          v42 = (v13 + v11[8]);
          *v42 = v29;
          v42[1] = v31;
          v42[2] = v33;
          v42[3] = v35;
          *(v13 + v11[9]) = MEMORY[0x277D84F98];
          v8 = v77;
          sub_20B520158(v77, &qword_27C767E00);
          v86 = v15;
          v44 = *(v15 + 16);
          v43 = *(v15 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_20BB5E0A4(v43 > 1, v44 + 1, 1);
            v15 = v86;
          }

          ++v16;
          *(v15 + 16) = v44 + 1;
          sub_20BCF4F88(v13, v15 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v44, type metadata accessor for MetricImpressionElement);
          v18 += v74;
          if (v76 == v16)
          {
            return v15;
          }

          continue;
      }
    }

    break;
  }

  if (v16 < *(v72 + 16))
  {
    v27 = v19;
    v26 = *(v79 + 8 * v16 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BCF4F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI15PageActionStateO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_20BCF500C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BCF5054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_20BCF50A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_20BCF50E0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v4 <= 2)
  {
    if (!*(v0 + 48))
    {
      MEMORY[0x20F2F58E0](0);
LABEL_19:

      return sub_20C13CA64();
    }

    if (v4 == 1)
    {
      MEMORY[0x20F2F58E0](1);
      if (!v1)
      {
LABEL_9:
        sub_20C13E184();
        if (!v2)
        {
          return sub_20C13E184();
        }

        goto LABEL_18;
      }

LABEL_13:
      sub_20C13E184();
      sub_20C13CA64();
      if (v2)
      {
        goto LABEL_18;
      }

      return sub_20C13E184();
    }

    MEMORY[0x20F2F58E0](2);
    if (v1)
    {
      sub_20C13E184();
      sub_20C13CA64();
      if (v2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_20C13E184();
      if (v2)
      {
LABEL_17:
        sub_20C13E184();
        sub_20C13CA64();
        if (!v3)
        {
          return sub_20C13E184();
        }

LABEL_18:
        sub_20C13E184();
        goto LABEL_19;
      }
    }

    sub_20C13E184();
    if (!v3)
    {
      return sub_20C13E184();
    }

    goto LABEL_18;
  }

  if (v4 == 3)
  {
    MEMORY[0x20F2F58E0](5);
    if (!v1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v4 == 4)
  {
    MEMORY[0x20F2F58E0](6);
    if (!v1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (*(v0 + 16) | v1 | *v0 | v2 | *(v0 + 32) | v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  return MEMORY[0x20F2F58E0](v6);
}